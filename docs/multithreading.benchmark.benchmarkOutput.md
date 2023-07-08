---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 9959321
      Days: 0
      Hours: 0
      Milliseconds: 995
      Minutes: 0
      Seconds: 0
      TotalDays: 1.15269918981481e-05
      TotalHours: 0.000276647805555556
      TotalMilliseconds: 995.9321
      TotalMinutes: 0.0165988683333333
      TotalSeconds: 0.9959321
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        RepeatCount: 3
        FileName: multithreading
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
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 3.01225354620059
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 11431296
      Days: 0
      Hours: 0
      Milliseconds: 143
      Minutes: 0
      Seconds: 1
      TotalDays: 1.32306666666667e-05
      TotalHours: 0.000317536
      TotalMilliseconds: 1143.1296
      TotalMinutes: 0.01905216
      TotalSeconds: 1.1431296
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        RepeatCount: 3
        FileName: multithreading
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
    RelativeSpeed: 1.14779873045562
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 2.62437434915516
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 22955057
      Days: 0
      Hours: 0
      Milliseconds: 295
      Minutes: 0
      Seconds: 2
      TotalDays: 2.65683530092593e-05
      TotalHours: 0.000637640472222222
      TotalMilliseconds: 2295.5057
      TotalMinutes: 0.0382584283333333
      TotalSeconds: 2.2955057
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        RepeatCount: 3
        FileName: multithreading
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
    RelativeSpeed: 2.30488172838289
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 1.30690156857376
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
  - Technique: Start-Job
    Time: 
      Ticks: 347000602
      Days: 0
      Hours: 0
      Milliseconds: 700
      Minutes: 0
      Seconds: 34
      TotalDays: 0.00040162106712963
      TotalHours: 0.00963890561111111
      TotalMilliseconds: 34700.0602
      TotalMinutes: 0.578334336666667
      TotalSeconds: 34.7000602
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        RepeatCount: 3
        FileName: multithreading
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
    RelativeSpeed: 34.8417931302746
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 0.0864551814235757
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
FileName: multithreading
ClockSpeed: 2095
---


### Multi-Threading


|Technique               |RepeatCount|Time           |RelativeSpeed|Throughput|
|------------------------|-----------|---------------|-------------|----------|
|Runspace                |3          |00:00:00.995932|1x           |3.01/s    |
|ForEach-Object -Parallel|3          |00:00:01.143129|1.15x        |2.62/s    |
|Start-ThreadJob         |3          |00:00:02.295505|2.3x         |1.31/s    |
|Start-Job               |3          |00:00:34.700060|34.84x       |0.09/s    |
