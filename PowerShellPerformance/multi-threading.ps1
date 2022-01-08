#requires -Module Benchpress

# Define the Number of Threads here!!!
$threads = 10

# Using this to be sure no test failed
$resultGrid = [System.Collections.Generic.List[object]]::new()
$ran = [random]::new()
$items = 100000
$testArray = while($items--)
{
    [pscustomobject]@{
        FirstValue = $ran.Next()
        SecondValue = $ran.Next()
    }
}
$average = [System.Linq.Enumerable]::Average(
    [int[]]$testArray.FirstValue
)

$ThreadJobAvailable = Get-Module ThreadJob -ListAvailable
$ParallelAvailable = $PSVersionTable.PSVersion -ge [version]'7.0'

[ref]$Reference = 0
$groupSize = [math]::Ceiling($testArray.Count / $threads)
$chunks = $testArray | Group-Object -Property {
    [math]::Floor($Reference.Value++ / $groupSize)
}

$action = {
    param($array, $average)

    foreach($i in $array)
    {
        if($i.FirstValue -le $average -and $i.SecondValue % 2)
        {
            $i
        }
    }
}

$expectedCount = $(
    foreach($chunk in $chunks)
    {
        & $action $chunk.Group $average
    }
).Count

$resultObject = {
    param($TestName, $TestCount, $ExpectedCount)

    [pscustomobject]@{
        Test = $TestName
        Count = $TestCount
        Status = ('FAILED', 'PASSED')[$Testcount -eq $ExpectedCount]
    }
}

$techniques = @{
    "Start-Job" = {
        $jobs = foreach($chunk in $chunks)
        {
            Start-Job -ScriptBlock $action -ArgumentList $chunk.Group, $average
        }
        $resultJob = Receive-Job $jobs -Wait -AutoRemoveJob
        $hash = @{
            TestName = 'Job'
            TestCount = $resultJob.Count
            ExpectedCount = $expectedCount
        }
        $thisTest = & $resultObject @hash
        $resultGrid.Add($thisTest)
    }

    "Runspace" = {
        $RunspacePool = [runspacefactory]::CreateRunspacePool(1, $threads)
        $RunspacePool.Open()
        $runspace = foreach($chunk in $chunks)
        {
            $params = @{
                array = $chunk.Group
                average = $average
            }
            $ps = [powershell]::Create().AddScript($action).AddParameters($params)
            $ps.RunspacePool = $RunspacePool
            
            [pscustomobject]@{
                Instance = $ps
                Handle = $ps.BeginInvoke()
            }
        }
        
        while($runspace.Handle.IsCompleted -contains $false)
        {
            Start-Sleep -Milliseconds 50
        }
        $resultRunspace = foreach($r in $runspace)
        {
            $r.Instance.EndInvoke($r.Handle)
            $r.Instance.Dispose()
        }
        
        $runspace.Clear()
        $RunspacePool.Dispose()
        $hash = @{
            TestName = 'Runspace'
            TestCount = $resultRunspace.Count
            ExpectedCount = $expectedCount
        }
        $thisTest = & $resultObject @hash
        $resultGrid.Add($thisTest)
    }
}

if($ThreadJobAvailable)
{
    $techniques["Start-ThreadJob"] = {
        $jobs = foreach($chunk in $chunks)
        {
            Start-ThreadJob -ScriptBlock $action -ArgumentList $chunk.Group, $average -ThrottleLimit $threads
        }
        $resultThreadJob = Receive-Job $jobs -Wait -AutoRemoveJob
        $hash = @{
            TestName = 'ThreadJob'
            TestCount = $resultThreadJob.Count
            ExpectedCount = $expectedCount
        }
        $thisTest = & $resultObject @hash
        $resultGrid.Add($thisTest)
    }
}

if($ParallelAvailable)
{
    $techniques["ForEach-Object -Parallel"] = {
        $resultParallel = $chunks | ForEach-Object -Parallel {
            foreach($i in $_.Group)
            {
                if($i.FirstValue -le $using:average -and $i.SecondValue % 2)
                {
                    $i
                }
            }
        } -ThrottleLimit $threads
        $hash = @{
            TestName = 'Parallel'
            TestCount = $resultParallel.Count
            ExpectedCount = $expectedCount
        }
        $thisTest = & $resultObject @hash
        $resultGrid.Add($thisTest)
    }
}

Measure-Benchmark -GroupName "Multi-Threading" -RepeatCount 3 -Technique $techniques
$resultGrid | Format-Table
