---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 7449298
      Days: 0
      Hours: 0
      Milliseconds: 744
      Minutes: 0
      Seconds: 0
      TotalDays: 8.62187268518518e-06
      TotalHours: 0.000206924944444444
      TotalMilliseconds: 744.9298
      TotalMinutes: 0.0124154966666667
      TotalSeconds: 0.7449298
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        ScriptBlock: |
          
                  $RunspacePool = [runspacefactory]::CreateRunspacePool(1, $threads)
                  $RunspacePool.Open()
                  $runspace = foreach($chunk in $chunks) {
                      $params = @{
                          array = $chunk.Group
                          average = $average
                      }
                      $ps = [powershell]::Create().AddScript($action).AddParameters($params)
                      $ps.RunspacePool = $RunspacePool
          
                      @{
                          Instance = $ps
                          Handle   = $ps.BeginInvoke()
                      }
                  }
          
                  $resultRunspace = foreach($r in $runspace) {
                      $r.Instance.EndInvoke($r.Handle)
                  }
          
                  $RunspacePool.Dispose()
                  $hash = @{
                      TestName      = 'Runspace'
                      TestCount     = $resultRunspace.Count
                      ExpectedCount = $expectedCount
                  }
                  $thisTest = & $resultObject @hash        
              
        GroupName: Multi-Threading
        FileName: multithreading
        RepeatCount: 3
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 4.02722511570889
    BenchmarkInput: 
      GroupName: Multi-Threading
      FileName: multithreading
      RepeatCount: 3
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 9613919
      Days: 0
      Hours: 0
      Milliseconds: 961
      Minutes: 0
      Seconds: 0
      TotalDays: 1.11272210648148e-05
      TotalHours: 0.000267053305555556
      TotalMilliseconds: 961.3919
      TotalMinutes: 0.0160231983333333
      TotalSeconds: 0.9613919
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        ScriptBlock: |
          
                  $resultParallel = $chunks | ForEach-Object -Parallel {
                      foreach($i in $_.Group) {
                          if($i.FirstValue -le $using:average -and $i.SecondValue % 2) {
                              $i
                          }
                      }
                  } -ThrottleLimit $threads
                  $hash = @{
                      TestName      = 'Parallel'
                      TestCount     = $resultParallel.Count
                      ExpectedCount = $expectedCount
                  }
                  $thisTest = & $resultObject @hash        
              
        GroupName: Multi-Threading
        FileName: multithreading
        RepeatCount: 3
    RelativeSpeed: 1.2905805352397
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 3.12047563537825
    BenchmarkInput: 
      GroupName: Multi-Threading
      FileName: multithreading
      RepeatCount: 3
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 21345941
      Days: 0
      Hours: 0
      Milliseconds: 134
      Minutes: 0
      Seconds: 2
      TotalDays: 2.47059502314815e-05
      TotalHours: 0.000592942805555556
      TotalMilliseconds: 2134.5941
      TotalMinutes: 0.0355765683333333
      TotalSeconds: 2.1345941
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        ScriptBlock: |
          
                  $jobs = foreach($chunk in $chunks) {
                      Start-ThreadJob -ScriptBlock $action -ArgumentList $chunk.Group, $average -ThrottleLimit $threads
                  }
                  $resultThreadJob = Receive-Job $jobs -Wait -AutoRemoveJob
                  $hash = @{
                      TestName      = 'ThreadJob'
                      TestCount     = $resultThreadJob.Count
                      ExpectedCount = $expectedCount
                  }
                  $thisTest = & $resultObject @hash        
              
        GroupName: Multi-Threading
        FileName: multithreading
        RepeatCount: 3
    RelativeSpeed: 2.86549699045467
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 1.405419419083
    BenchmarkInput: 
      GroupName: Multi-Threading
      FileName: multithreading
      RepeatCount: 3
  - Technique: Start-Job
    Time: 
      Ticks: 304911643
      Days: 0
      Hours: 0
      Milliseconds: 491
      Minutes: 0
      Seconds: 30
      TotalDays: 0.000352906994212963
      TotalHours: 0.00846976786111111
      TotalMilliseconds: 30491.1643
      TotalMinutes: 0.508186071666667
      TotalSeconds: 30.4911643
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        ScriptBlock: |
          
                  $jobs = foreach($chunk in $chunks) {
                      Start-Job -ScriptBlock $action -ArgumentList $chunk.Group, $average
                  }
                  $resultJob = Receive-Job $jobs -Wait -AutoRemoveJob
                  $hash = @{
                      TestName      = 'Job'
                      TestCount     = $resultJob.Count
                      ExpectedCount = $expectedCount
                  }
                  $thisTest = & $resultObject @hash        
              
        GroupName: Multi-Threading
        FileName: multithreading
        RepeatCount: 3
    RelativeSpeed: 40.9315942253888
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 0.0983891585930682
    BenchmarkInput: 
      GroupName: Multi-Threading
      FileName: multithreading
      RepeatCount: 3
FileName: multithreading
ClockSpeed: 2594
---


### Multi-Threading


|Technique               |RepeatCount|Time           |RelativeSpeed|Throughput|
|------------------------|-----------|---------------|-------------|----------|
|Runspace                |3          |00:00:00.744929|1x           |4.03/s    |
|ForEach-Object -Parallel|3          |00:00:00.961391|1.29x        |3.12/s    |
|Start-ThreadJob         |3          |00:00:02.134594|2.87x        |1.41/s    |
|Start-Job               |3          |00:00:30.491164|40.93x       |0.1/s     |
