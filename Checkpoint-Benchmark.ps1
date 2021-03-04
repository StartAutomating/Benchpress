function Checkpoint-Benchmark
{
    <#
    .Synopsis
        Checkpoints benchmarks
    .Description
        Checkpoints benchmark files, executing them and storing their results.
    .Link
        Measure-Benchmark
    .Link
        Get-Benchmark
    #>
    [CmdletBinding(DefaultParameterSetName='CurrentDirectory')]
    [OutputType([PSObject])]
    param(
    # The path to the benchmark file
    [Parameter(Mandatory=$true,ParameterSetName='Path',ValueFromPipelineByPropertyName=$true,Position=0)]
    [ValidatePattern('\.benchmark\.(psd1|ps1|clixml|csv|json)$')]
    [Alias('Fullname', 'FilePath')]
    [string[]]
    $BenchmarkPath,

    # The name of a module
    [Parameter(Mandatory=$true,ParameterSetName='Module',ValueFromPipelineByPropertyName=$true)]
    [string]
    $ModuleName,

    # The output path. If no OutputPath is provided, benchmarks will be executed and returned.
    # If a path to a folder is provided, a file will be created for each output 
    [Parameter(ValueFromPipelineByPropertyName=$true)]
    [string]
    $OutputPath,
    
    # If set, will include the PSVersionInfo object in returned results.
    # If used with -OutputPath set to a folder, will include the PSVersion in the file names
    [Parameter(ValueFromPipelineByPropertyName=$true)]
    [switch]
    $IncludePSVersion,

    # If set, will include the module version in returned results
    # If used with -OutputPath set to a folder, will include the Module version in the file names
    [Parameter(ValueFromPipelineByPropertyName=$true,ParameterSetName='Module')]
    [switch]
    $IncludeModuleVersion,

    # If set, will not include a timestamp in output file names
    # This is only used is -OutputPath is passed a directory name 
    [Parameter(ValueFromPipelineByPropertyName=$true)]
    [switch]
    $NoTimestamp
    )

    begin {
        $getBenchmarkCmd = 
            $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Benchmark','Function')
        $measureBenchmarkCmd = 
            $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
    }

    process {
        #region Get Benchmarks
        $getBenchmarkSplat = @{} + $PSBoundParameters
        foreach ($_ in @($getBenchmarkSplat.Keys)) {
            if (-not $getBenchmarkCmd.Parameters[$_]) {
                $getBenchmarkSplat.Remove($_)
            }
        }

        $theBenchmarks = @(Get-Benchmark @getBenchmarkSplat)
        if (-not $theBenchmarks) { return } 
        #endregion Get Benchmarks

        #region Run Benchmarks
        $benchmarkResults = [Collections.ArrayList]::new()

        $c, $t, $progID = 0, $theBenchmarks.Count, $(Get-Random)

        $theBenchmarks | 
            . { process {
                $benchmark = $_
                $c++
                $p = $c * 100 / $t                
                Write-Progress "Running Benchmarks" "$($benchmark.FileName)" -PercentComplete $p -Id $progID
                if ($Benchmark -is [Management.Automation.ExternalScriptInfo]) {
                    & $Benchmark
                } else {
                    $benchmarkSplat = @{}
                    $props = 
                        @(if ($benchmark -is [Collections.IDictionary]) {
                            $benchmark.Keys                     
                        } else {
                            foreach ($_ in $benchmark.psobject.properties) { 
                                $_.Name
                            }                        
                        })

                    foreach ($prop in $props) {
                        $isGood? = $measureBenchmarkCmd.Parameters.ContainsKey($prop)
                        if (-not $isGood?) {
                            foreach ($param in $measureBenchmarkCmd.Parameters.Values) {
                                if ($param.Aliases -contains $prop) {
                                    $isGood? = $true
                                    break
                                }
                            }
                        }
                        if ($isGood?) {
                            $benchmarkSplat[$prop] = $benchmark.$prop
                        }
                    }
                    
                    if ($benchmarkSplat.Count) {
                        Measure-Benchmark @benchmarkSplat
                    }                    
                }
            } } |
            . { process {
                if ($OutputPath) {
                    $null = $benchmarkResults.Add($_)                    
                } else {
                    $_
                }
            } }
             
        Write-Progress "Running Benchmarks" "Complete" -Id $progID -Completed

        if (-not $outputPath) { return }
        #endregion Run Benchmarks

        #region Save Benchmark Results
        $IsOutputFile? = $outputPath -match "\.(json|csv|clixml)$"
        $fileNameParts = if (-not $IsOutputFile?) {
            @([DateTime]::UtcNow.ToString('o').Substring(0,19).Replace(':','_') + 'Z')
        } else {
            @()
        }

        if ($IncludeModuleVersion -and $ModuleName) {
            $theModule = Get-Module $ModuleName
            $benchmarkResults | 
                Add-Member NoteProperty ModuleVersion $theModule.Version -Force
            if (-not $IsOutputFile?) {
                $fileNameParts += "v$($theModule.Version)"
            }
        }


        if ($IncludePSVersion) {
            $benchmarkResults | 
                Add-Member NoteProperty PSVersion $PSVersionTable -Force
            if ($IsOutputFile?) {
                $fileNameParts += "ps$($PSVersionTable.PSVersion)"                
            }
        }


        if ($IsOutputFile?) {
            $null = $outputPath -match "\.(?<extension>json|csv|clixml)"
            if ($matches.extension -eq 'json') {
                $benchmarkResults | 
                    ConvertTo-Json -Depth 10 | 
                    Set-Content $OutputPath
            } elseif ($matches.extension -eq 'csv') {
                $benchmarkResults | 
                    Export-Csv -Path $OutputPath
            } elseif ($matches.extension -eq 'clixml') {
                $benchmarkResults|
                    Export-Clixml -Path $OutputPath
            }
            Get-Item -Path $OutputPath -ErrorAction SilentlyContinue
        } else {
            if (-not (Test-Path $OutputPath)) {
                $newDir = New-Item -ItemType Directory -Path $OutputPath
                if (-not $newDir) { return $benchmarkResults }
            }

            $resolvedBasePath = Resolve-Path $OutputPath
            

            $benchmarkResults | 
                Group-Object FileName |
                & {
                    process {
                        $group = $_.Group
                        $outFilePath = Join-Path $resolvedBasePath "$($_.Name).$($fileNameParts -join '.').marks.clixml"
                        $group | Export-Clixml -Path $outFilePath
                    }
                }
        }
        #endregion Save Benchmark Results
        
    }
} 
