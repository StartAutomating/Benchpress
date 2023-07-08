---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 9249881
      Days: 0
      Hours: 0
      Milliseconds: 924
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0705880787037e-05
      TotalHours: 0.000256941138888889
      TotalMilliseconds: 924.9881
      TotalMinutes: 0.0154164683333333
      TotalSeconds: 0.9249881
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
    ClockSpeed: 2397
    FileName: multithreading
    Throughput: 3.24328496766607
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 12436540
      Days: 0
      Hours: 0
      Milliseconds: 243
      Minutes: 0
      Seconds: 1
      TotalDays: 1.43941435185185e-05
      TotalHours: 0.000345459444444444
      TotalMilliseconds: 1243.654
      TotalMinutes: 0.0207275666666667
      TotalSeconds: 1.243654
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
    RelativeSpeed: 1.34450810772593
    GroupName: Multi-Threading
    ClockSpeed: 2397
    FileName: multithreading
    Throughput: 2.41224649299564
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 27652668
      Days: 0
      Hours: 0
      Milliseconds: 765
      Minutes: 0
      Seconds: 2
      TotalDays: 3.20054027777778e-05
      TotalHours: 0.000768129666666667
      TotalMilliseconds: 2765.2668
      TotalMinutes: 0.04608778
      TotalSeconds: 2.7652668
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
    RelativeSpeed: 2.98951608134202
    GroupName: Multi-Threading
    ClockSpeed: 2397
    FileName: multithreading
    Throughput: 1.08488627571126
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
  - Technique: Start-Job
    Time: 
      Ticks: 383115323
      Days: 0
      Hours: 0
      Milliseconds: 311
      Minutes: 0
      Seconds: 38
      TotalDays: 0.000443420512731481
      TotalHours: 0.0106420923055556
      TotalMilliseconds: 38311.5323
      TotalMinutes: 0.638525538333333
      TotalSeconds: 38.3115323
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
    RelativeSpeed: 41.4184055989477
    GroupName: Multi-Threading
    ClockSpeed: 2397
    FileName: multithreading
    Throughput: 0.0783054036186383
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
FileName: multithreading
ClockSpeed: 2397
---


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:00.924988|1x           |3.24/s    |
|ForEach-Object -Parallel|00:00:01.243654|1.34x        |2.41/s    |
|Start-ThreadJob         |00:00:02.765266|2.99x        |1.08/s    |
|Start-Job               |00:00:38.311532|41.42x       |0.08/s    |
