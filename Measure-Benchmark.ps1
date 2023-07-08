function Measure-Benchmark
{
    <#
    .Synopsis
        Measures a performance benchmark
    .Description
        Measures the timing of a performance benchmark, or compares the timing of multiple techniques.
    .Example
        Measure-Benchmark -Command Get-Process -RepeatCount 10
    .Example
        Measure-Benchmark -ScriptBlock { Get-Process } -RepeatCount 10
    .Example
        Measure-Benchmark -Technique @{
            "Get-Process" = { Get-Process }
            '[Process]::GetProcesses()' = {
                [Diagnostics.Process]::GetProcesses()
            }
        } -GroupName "Fastest Way to Enumerate Processes"
    .Link
        Get-Benchmark
    .Link
        Measure-Benchmark
    #>
    [CmdletBinding(DefaultParameterSetName='Technique')]
    [OutputType([PSObject])]
    param(
    # A command to run.  This can be the name of a command, or the text content of a script block.
    [Parameter(Mandatory=$true,Position=0,ParameterSetName='Command',ValueFromPipelineByPropertyName=$true)]
    [Alias('Fullname')]
    [string]
    $Command,

    # A script block to execute.
    [Parameter(Mandatory=$true,Position=0,ParameterSetName='ScriptBlock',ValueFromPipeline=$true)]
    [ScriptBlock]
    $ScriptBlock,

    # A hashtable of parameters.  These can be passed to either a command or a script block.
    [Parameter(ParameterSetName='Command',ValueFromPipelineByPropertyName=$true)]
    [Parameter(ParameterSetName='ScriptBlock',ValueFromPipelineByPropertyName=$true)]
    [Alias('Parameters')]
    [Collections.IDictionary]
    $Parameter = @{},

    # A list of positional arguments.
    [Parameter(ParameterSetName='Command',ValueFromPipelineByPropertyName=$true,ValueFromRemainingArguments=$true)]
    [Parameter(ParameterSetName='ScriptBlock',ValueFromPipelineByPropertyName=$true,ValueFromRemainingArguments=$true)]
    [PSObject[]]
    $ArgumentList = @(),

    # A hashtable of techniques to compare
    [Parameter(Mandatory=$true,Position=0,ParameterSetName='Technique',ValueFromPipelineByPropertyName=$true)]
    [Alias('Techniques')]
    [Collections.IDictionary]
    $Technique = @{},

    # The number of times to repeat the benchmark.
    [Parameter(Position=1,ValueFromPipelineByPropertyName=$true)]
    [Alias('Reps', 'Repetitions', 'RepetitionCount', 'Repeat')]
    [Uint32]$RepeatCount = 100,

    # If set, will provide detailed output, containing average runtimes, minimums, and maximums.
    [Parameter(ValueFromPipelineByPropertyName=$true)]
    [switch]
    $Detailed,

    # The name of the file that contains the benchmark (excluding the extension).
    # This is used for reporting, and will be automatically populated by Get-Benchmark.
    [Parameter(Position=2,ParameterSetName='Command',ValueFromPipelineByPropertyName=$true)]
    [Parameter(Position=2,ParameterSetName='ScriptBlock',ValueFromPipelineByPropertyName=$true)]
    [Parameter(Position=2,ParameterSetName='Technique',ValueFromPipelineByPropertyName=$true)]
    [string]
    $FileName,

    # The name of a logical group.  This is used for reporting.
    [Parameter(ParameterSetName='Command',ValueFromPipelineByPropertyName=$true)]
    [Parameter(ParameterSetName='ScriptBlock',ValueFromPipelineByPropertyName=$true)]
    [Parameter(ParameterSetName='Technique',ValueFromPipelineByPropertyName=$true)]
    [string]
    $GroupName,

    # If set, will launch as a job.
    [Parameter(ValueFromPipelineByPropertyName=$true)]
    [switch]
    $AsJob
    )

    begin {
        $cpuSpeed = 
            if ($executionContext.SessionState.PSVariable.Get('IsLinux').Value) {
                Get-Content /proc/cpuinfo -Raw -ErrorAction SilentlyContinue | 
                    Select-String "(?<Unit>Mhz|MIPS)\s+\:\s+(?<Value>[\d\.]+)" | 
                    Select-Object -First 1 -ExpandProperty Matches |
                    ForEach-Object {
                        $_.Groups["Value"].Value -as [int]
                    }
            } elseif ($executionContext.SessionState.PSVariable.Get('IsMacOS').Value) {
                (sysctl -n hw.cpufrequency) / 1e6 -as [int]
            } else {
                $getCimInstance = $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-CimInstance','Cmdlet')
                if ($getCimInstance) {
                    & $getCimInstance -Class Win32_Processor |
                        Select-Object -ExpandProperty MaxClockSpeed
                }
            }
    }

    process {
        $_splat = @{} + $PSBoundParameters # Before we do anything, make a copy of psboundparameters.

        if ($AsJob) {
            $myself = $MyInvocation.MyCommand
            $_splat.Remove('AsJob')
            Start-Job ([ScriptBlock]::Create("param([Hashtable]`$splat)
function $($myself.Name) {
$($myself.Definition)
}
$($myself.Name) @splat")) -ArgumentList $_splat
            return
        }

        #region Resolve the Command
        if ($PSCmdlet.ParameterSetName -eq 'Command') { # If we're benchmarking a command
            # attempt to find the command
            $measureCommand = $ExecutionContext.SessionState.InvokeCommand.GetCommand($Command, 'All')
            if (-not $measureCommand) { # If we couldn't find the command
                $commandAsScriptBlock = [ScriptBlock]::Create($Command) # try treating it as a script block.
                if (-not $commandAsScriptBlock) { # If that didn't work
                    Write-Error "Could not resolve $Command" # write an error
                    return # and return.
                }
                # If it was castable to a script block, that's what we're measuring.
                $measureCommand = $commandAsScriptBlock
            }
        }
        #endregion Resolve the Command

        if ($PSCmdlet.ParameterSetName -eq 'ScriptBlock') { # If we're benchmarking a script block,
            $measureCommand = $ScriptBlock # life is easy (just set $MeasureCommand).
        }

        if (-not $FileName) { # If a file name wasn't provided
            $caller = $(Get-PSCallStack | # peek thru the call stack
                Select-Object -Skip 1 -ExpandProperty InvocationInfo | # (skip yourself)
                Where-Object -Property MyCommand -is ([Management.Automation.ExternalScriptInfo]) | # find external scripts
                Select-Object -First 1 -ExpandProperty MyCommand) # and pull out the first one
            $FileName = # Extract the file name out
                if ($caller.Name -like '*.benchmark.*') {
                    $caller.Name -replace '\.benchmark\.ps1$' -replace '_', ' '
                } elseif ($caller) {
                    $caller.Name -replace '\.ps1$', '' -replace '_', ' '
                }
            if ($FileName) { # If we have a file name, put it in $_splat
                $_splat.FileName = $FileName
            }
        }

        # If we're benchmarking a command or script, let's get to it.
        if ('Command', 'ScriptBlock' -contains $PSCmdlet.ParameterSetName) {
            if ($Detailed) { # If we're asking for detailed benchmarks
                @(foreach ($n in 1..$RepeatCount) { # Measure each execution
                    Measure-Command {
                        & $measureCommand @Parameter @ArgumentList
                    }
                }) |
                # Then determine average, total, min, and max
                Measure-Object -Property TotalMilliseconds -Sum -Average -Minimum -Maximum |
                & { process {
                    # and output a property bag with this information
                    New-Object PSObject -Property @{
                        'Command' = $measureCommand
                        'RepeatCount' = $RepeatCount
                        'TotalMilliseconds' = $_.Sum
                        'TotalTime' = [TimeSpan]::FromMilliseconds($_.Sum)
                        'AverageTime' = [Timespan]::FromMilliseconds($_.Average)
                        'FastestTime' = [Timespan]::FromMilliseconds($_.Minimum)
                        'SlowestTime' = [Timespan]::FromMilliseconds($_.Maximum)
                        FileName = $FileName
                        GroupName = $GroupName
                        BenchmarkInput = $_splat
                        PSTypeName = 'Benchmark.Detail'
                    }
                }}
            } else {
                # If we don't need details, just Measure-Command running it $RepeatCount times
                Measure-Command {
                    foreach ($_ in 1..$RepeatCount) {
                        & $measureCommand @Parameter @ArgumentList
                    }
                } |
                & {
                    process {
                        $_.pstypenames.add('Benchmark.Measure')
                        $_
                    }
                } |
                    Add-Member NoteProperty FileName $FileName -Force -PassThru |
                    Add-Member NoteProperty GroupName $GroupName -Force -PassThru |
                    Add-Member NoteProperty BenchmarkInput $_splat -Force -PassThru
            }
            return # and we're done.
        }


        if ($PSCmdlet.ParameterSetName -eq 'Technique') { # If we're comparing techniques
            $speeds = [Ordered]@{} # Create an ordered hashtable (to keep the speeds)
            $id= Get-Random # get our progress bars ready
            $c, $t = 0, $technique.Count
            $_splat.Remove('Technique') # and remove technique from splat (so we don't infinitely recurse).

            foreach ($techniqueName in @($technique.Keys)) { # Walk over each technique
                $p = $c* 100 / $t
                if ($Technique[$techniqueName] -is [string]) { # If it's a string, try to make it a script block
                    $Technique[$techniqueName] = [ScriptBlock]::Create($technique[$techniqueName])
                    if (-not $Technique[$techniqueName]) { continue } # If that didn't work, keep moving.
                }
                # Call Measure-Benchmark for each technique
                Write-Progress "Timing $techniqueName" "Over $RepeatCount repetitions" -PercentComplete $p -Id $id
                $speeds[$techniqueName] = Measure-Benchmark -ScriptBlock $Technique[$techniqueName] @_splat

                $c++
            }
            Write-Progress "Timing" "Complete" -Completed -Id $id

            # Find the lowest speed
            $lowestSpeed =
                if ($Detailed) {
                    $speeds.GetEnumerator() |
                        Sort-Object { $_.Value.TotalMilliseconds } |
                        Select-Object -First 1
                } else {
                    $speeds.GetEnumerator() |
                        Sort-Object Value |
                        Select-Object -First 1
                }

            # then use that to determine relative speeds.
            $baseFactor = $lowestSpeed.Value.TotalMilliseconds
            $relativeSpeed = [Ordered]@{}
            foreach ($key in $speeds.Keys) {
                $relativeSpeed[$key] = $speeds[$key].TotalMilliseconds / $baseFactor
            }

            # After that's done, sort the speeds from fastest to slowest.
            $sortedSpeeds=
                if ($Detailed) {
                    $speeds.GetEnumerator() |
                        Sort-Object { $_.Value.TotalMilliseconds }
                } else {
                    $speeds.GetEnumerator() | Sort-Object Value
                }


            # Now walk thru each speed from fastest to slowest
            foreach ($kv in $sortedSpeeds) {
                # Create a property bag containing our results
                $ReportItem = [Ordered]@{}
                $ReportItem["Technique"] = $kv.Key
                $ReportItem["Time"] =
                    if ($kv.Value -is [Timespan]) {
                        $kv.Value
                    } else {
                        $kv.Value.TotalTime
                    }
                $ReportItem["RelativeSpeed"] = $relativeSpeed[$kv.Key]
                if ($GroupName) {
                    $ReportItem["GroupName"] = $GroupName
                }
                if ($cpuSpeed) {
                    $ReportItem["ClockSpeed"] = $cpuSpeed
                }
                if ($FileName) {
                    $ReportItem["FileName"] = $FileName
                }
                if ($Detailed) {
                    $ReportItem["Details"] = $kv.Value
                }
                $reportItem["RepeatCount"] = $RepeatCount
                $reportItem["Throughput"] = $repeatCount / $reportItem["Time"].TotalSeconds
                $reportItem["BenchmarkInput"] = $_splat
                $ReportItem["PSTypeName"] = "Benchmark.Relative.Summary"

                # and output it.
                New-Object PSObject -Property $ReportItem
            }
        }
    }
}

Set-Alias bench Measure-Benchmark
