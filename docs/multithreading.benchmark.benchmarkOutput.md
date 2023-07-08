---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 10416024
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 1
      TotalDays: 1.20555833333333e-05
      TotalHours: 0.000289334
      TotalMilliseconds: 1041.6024
      TotalMinutes: 0.01736004
      TotalSeconds: 1.0416024
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
        RepeatCount: 3
        FileName: multithreading
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    RepeatCount: 3
    Throughput: 2.8801776954431
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 11885098
      Days: 0
      Hours: 0
      Milliseconds: 188
      Minutes: 0
      Seconds: 1
      TotalDays: 1.3755900462963e-05
      TotalHours: 0.000330141611111111
      TotalMilliseconds: 1188.5098
      TotalMinutes: 0.0198084966666667
      TotalSeconds: 1.1885098
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
        RepeatCount: 3
        FileName: multithreading
    RelativeSpeed: 1.14103980559185
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    RepeatCount: 3
    Throughput: 2.52416934214594
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 23262543
      Days: 0
      Hours: 0
      Milliseconds: 326
      Minutes: 0
      Seconds: 2
      TotalDays: 2.69242395833333e-05
      TotalHours: 0.00064618175
      TotalMilliseconds: 2326.2543
      TotalMinutes: 0.038770905
      TotalSeconds: 2.3262543
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
        RepeatCount: 3
        FileName: multithreading
    RelativeSpeed: 2.23334191626287
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    RepeatCount: 3
    Throughput: 1.28962684776123
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: Start-Job
    Time: 
      Ticks: 402488999
      Days: 0
      Hours: 0
      Milliseconds: 248
      Minutes: 0
      Seconds: 40
      TotalDays: 0.000465843748842593
      TotalHours: 0.0111802499722222
      TotalMilliseconds: 40248.8999
      TotalMinutes: 0.670814998333333
      TotalSeconds: 40.2488999
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
        RepeatCount: 3
        FileName: multithreading
    RelativeSpeed: 38.6413279193673
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    RepeatCount: 3
    Throughput: 0.074536198689992
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
FileName: multithreading
ClockSpeed: 2295
---


### Multi-Threading


|Technique               |RepeatCount|Time           |RelativeSpeed|Throughput|
|------------------------|-----------|---------------|-------------|----------|
|Runspace                |3          |00:00:01.041602|1x           |2.88/s    |
|ForEach-Object -Parallel|3          |00:00:01.188509|1.14x        |2.52/s    |
|Start-ThreadJob         |3          |00:00:02.326254|2.23x        |1.29/s    |
|Start-Job               |3          |00:00:40.248899|38.64x       |0.07/s    |
