---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 8782848
      Days: 0
      Hours: 0
      Milliseconds: 878
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01653333333333e-05
      TotalHours: 0.000243968
      TotalMilliseconds: 878.2848
      TotalMinutes: 0.01463808
      TotalSeconds: 0.8782848
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
              
        RepeatCount: 3
        FileName: multithreading
        GroupName: Multi-Threading
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    RepeatCount: 3
    Throughput: 3.41574851346625
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 10277388
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 1
      TotalDays: 1.1895125e-05
      TotalHours: 0.000285483
      TotalMilliseconds: 1027.7388
      TotalMinutes: 0.01712898
      TotalSeconds: 1.0277388
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
              
        RepeatCount: 3
        FileName: multithreading
        GroupName: Multi-Threading
    RelativeSpeed: 1.17016575944386
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    RepeatCount: 3
    Throughput: 2.91902962114498
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 21797576
      Days: 0
      Hours: 0
      Milliseconds: 179
      Minutes: 0
      Seconds: 2
      TotalDays: 2.52286759259259e-05
      TotalHours: 0.000605488222222222
      TotalMilliseconds: 2179.7576
      TotalMinutes: 0.0363292933333333
      TotalSeconds: 2.1797576
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
              
        RepeatCount: 3
        FileName: multithreading
        GroupName: Multi-Threading
    RelativeSpeed: 2.48183459397225
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    RepeatCount: 3
    Throughput: 1.37629982342991
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
  - Technique: Start-Job
    Time: 
      Ticks: 367444122
      Days: 0
      Hours: 0
      Milliseconds: 744
      Minutes: 0
      Seconds: 36
      TotalDays: 0.000425282548611111
      TotalHours: 0.0102067811666667
      TotalMilliseconds: 36744.4122
      TotalMinutes: 0.61240687
      TotalSeconds: 36.7444122
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
              
        RepeatCount: 3
        FileName: multithreading
        GroupName: Multi-Threading
    RelativeSpeed: 41.8365571167803
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    RepeatCount: 3
    Throughput: 0.0816450671103673
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
FileName: multithreading
ClockSpeed: 2295
---


### Multi-Threading


|Technique               |RepeatCount|Time           |RelativeSpeed|Throughput|
|------------------------|-----------|---------------|-------------|----------|
|Runspace                |3          |00:00:00.878284|1x           |3.42/s    |
|ForEach-Object -Parallel|3          |00:00:01.027738|1.17x        |2.92/s    |
|Start-ThreadJob         |3          |00:00:02.179757|2.48x        |1.38/s    |
|Start-Job               |3          |00:00:36.744412|41.84x       |0.08/s    |
