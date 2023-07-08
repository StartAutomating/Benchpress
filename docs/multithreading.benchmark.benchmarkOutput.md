---
layout: Benchmark

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 9373718
      Days: 0
      Hours: 0
      Milliseconds: 937
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08492106481481e-05
      TotalHours: 0.000260381055555556
      TotalMilliseconds: 937.3718
      TotalMinutes: 0.0156228633333333
      TotalSeconds: 0.9373718
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        GroupName: Multi-Threading
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
              
        RepeatCount: 3
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    Throughput: 3.2004376491804
    BenchmarkInput: 
      GroupName: Multi-Threading
      FileName: multithreading
      RepeatCount: 3
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 11177110
      Days: 0
      Hours: 0
      Milliseconds: 117
      Minutes: 0
      Seconds: 1
      TotalDays: 1.29364699074074e-05
      TotalHours: 0.000310475277777778
      TotalMilliseconds: 1117.711
      TotalMinutes: 0.0186285166666667
      TotalSeconds: 1.117711
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        GroupName: Multi-Threading
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
              
        RepeatCount: 3
    RelativeSpeed: 1.19238812176769
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    Throughput: 2.68405697000387
    BenchmarkInput: 
      GroupName: Multi-Threading
      FileName: multithreading
      RepeatCount: 3
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 22099219
      Days: 0
      Hours: 0
      Milliseconds: 209
      Minutes: 0
      Seconds: 2
      TotalDays: 2.55777997685185e-05
      TotalHours: 0.000613867194444444
      TotalMilliseconds: 2209.9219
      TotalMinutes: 0.0368320316666667
      TotalSeconds: 2.2099219
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        GroupName: Multi-Threading
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
              
        RepeatCount: 3
    RelativeSpeed: 2.35757241683609
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    Throughput: 1.35751403703452
    BenchmarkInput: 
      GroupName: Multi-Threading
      FileName: multithreading
      RepeatCount: 3
  - Technique: Start-Job
    Time: 
      Ticks: 430290786
      Days: 0
      Hours: 0
      Milliseconds: 29
      Minutes: 0
      Seconds: 43
      TotalDays: 0.000498021743055556
      TotalHours: 0.0119525218333333
      TotalMilliseconds: 43029.0786
      TotalMinutes: 0.71715131
      TotalSeconds: 43.0290786
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        GroupName: Multi-Threading
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
              
        RepeatCount: 3
    RelativeSpeed: 45.9039610536609
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    Throughput: 0.0697202937550236
    BenchmarkInput: 
      GroupName: Multi-Threading
      FileName: multithreading
      RepeatCount: 3
FileName: multithreading
ClockSpeed: 2295
---
multithreading
--------------
> @2295 Mhz


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:00.937371|1x           |3.2/s     |
|ForEach-Object -Parallel|00:00:01.117711|1.19x        |2.68/s    |
|Start-ThreadJob         |00:00:02.209921|2.36x        |1.36/s    |
|Start-Job               |00:00:43.029078|45.9x        |0.07/s    |
