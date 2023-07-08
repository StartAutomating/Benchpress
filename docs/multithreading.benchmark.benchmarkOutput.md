---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 7273767
      Days: 0
      Hours: 0
      Milliseconds: 727
      Minutes: 0
      Seconds: 0
      TotalDays: 8.41871180555556e-06
      TotalHours: 0.000202049083333333
      TotalMilliseconds: 727.3767
      TotalMinutes: 0.012122945
      TotalSeconds: 0.7273767
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        FileName: multithreading
        GroupName: Multi-Threading
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
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 4.12441036398334
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 10123424
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 1
      TotalDays: 1.17169259259259e-05
      TotalHours: 0.000281206222222222
      TotalMilliseconds: 1012.3424
      TotalMinutes: 0.0168723733333333
      TotalSeconds: 1.0123424
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        FileName: multithreading
        GroupName: Multi-Threading
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
    RelativeSpeed: 1.39177182881992
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 2.96342423274971
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 18713296
      Days: 0
      Hours: 0
      Milliseconds: 871
      Minutes: 0
      Seconds: 1
      TotalDays: 2.16589074074074e-05
      TotalHours: 0.000519813777777778
      TotalMilliseconds: 1871.3296
      TotalMinutes: 0.0311888266666667
      TotalSeconds: 1.8713296
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        FileName: multithreading
        GroupName: Multi-Threading
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
    RelativeSpeed: 2.5727103988896
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 1.60313821787461
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: Start-Job
    Time: 
      Ticks: 313616268
      Days: 0
      Hours: 0
      Milliseconds: 361
      Minutes: 0
      Seconds: 31
      TotalDays: 0.000362981791666667
      TotalHours: 0.008711563
      TotalMilliseconds: 31361.6268
      TotalMinutes: 0.52269378
      TotalSeconds: 31.3616268
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        FileName: multithreading
        GroupName: Multi-Threading
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
    RelativeSpeed: 43.1160728684325
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 0.0956583030316527
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
FileName: multithreading
ClockSpeed: 2594
---


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:00.727376|1x           |4.12/s    |
|ForEach-Object -Parallel|00:00:01.012342|1.39x        |2.96/s    |
|Start-ThreadJob         |00:00:01.871329|2.57x        |1.6/s     |
|Start-Job               |00:00:31.361626|43.12x       |0.1/s     |
