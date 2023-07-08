---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 8934651
      Days: 0
      Hours: 0
      Milliseconds: 893
      Minutes: 0
      Seconds: 0
      TotalDays: 1.034103125e-05
      TotalHours: 0.00024818475
      TotalMilliseconds: 893.4651
      TotalMinutes: 0.014891085
      TotalSeconds: 0.8934651
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
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 3.35771369245424
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 9492320
      Days: 0
      Hours: 0
      Milliseconds: 949
      Minutes: 0
      Seconds: 0
      TotalDays: 1.09864814814815e-05
      TotalHours: 0.000263675555555556
      TotalMilliseconds: 949.232
      TotalMinutes: 0.0158205333333333
      TotalSeconds: 0.949232
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
    RelativeSpeed: 1.06241642790524
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 3.1604497109242
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 18982391
      Days: 0
      Hours: 0
      Milliseconds: 898
      Minutes: 0
      Seconds: 1
      TotalDays: 2.19703599537037e-05
      TotalHours: 0.000527288638888889
      TotalMilliseconds: 1898.2391
      TotalMinutes: 0.0316373183333333
      TotalSeconds: 1.8982391
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
    RelativeSpeed: 2.12458113920734
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 1.58041207769875
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
  - Technique: Start-Job
    Time: 
      Ticks: 290923456
      Days: 0
      Hours: 0
      Milliseconds: 92
      Minutes: 0
      Seconds: 29
      TotalDays: 0.000336716962962963
      TotalHours: 0.00808120711111111
      TotalMilliseconds: 29092.3456
      TotalMinutes: 0.484872426666667
      TotalSeconds: 29.0923456
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
    RelativeSpeed: 32.5612557222437
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 0.103119907938946
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
FileName: multithreading
ClockSpeed: 2594
---


### Multi-Threading


|Technique               |RepeatCount|Time           |RelativeSpeed|Throughput|
|------------------------|-----------|---------------|-------------|----------|
|Runspace                |3          |00:00:00.893465|1x           |3.36/s    |
|ForEach-Object -Parallel|3          |00:00:00.949232|1.06x        |3.16/s    |
|Start-ThreadJob         |3          |00:00:01.898239|2.12x        |1.58/s    |
|Start-Job               |3          |00:00:29.092345|32.56x       |0.1/s     |
