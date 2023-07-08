---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 7658631
      Days: 0
      Hours: 0
      Milliseconds: 765
      Minutes: 0
      Seconds: 0
      TotalDays: 8.86415625e-06
      TotalHours: 0.00021273975
      TotalMilliseconds: 765.8631
      TotalMinutes: 0.012764385
      TotalSeconds: 0.7658631
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        GroupName: Multi-Threading
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
              
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 3.91714916151464
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 9747153
      Days: 0
      Hours: 0
      Milliseconds: 974
      Minutes: 0
      Seconds: 0
      TotalDays: 1.12814270833333e-05
      TotalHours: 0.00027075425
      TotalMilliseconds: 974.7153
      TotalMinutes: 0.016245255
      TotalSeconds: 0.9747153
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        GroupName: Multi-Threading
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
              
    RelativeSpeed: 1.27270174003683
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 3.07782180088894
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 20673375
      Days: 0
      Hours: 0
      Milliseconds: 67
      Minutes: 0
      Seconds: 2
      TotalDays: 2.39275173611111e-05
      TotalHours: 0.000574260416666667
      TotalMilliseconds: 2067.3375
      TotalMinutes: 0.034455625
      TotalSeconds: 2.0673375
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        GroupName: Multi-Threading
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
              
    RelativeSpeed: 2.69935645156425
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 1.4511418672568
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: Start-Job
    Time: 
      Ticks: 299543460
      Days: 0
      Hours: 0
      Milliseconds: 954
      Minutes: 0
      Seconds: 29
      TotalDays: 0.000346693819444444
      TotalHours: 0.00832065166666667
      TotalMilliseconds: 29954.346
      TotalMinutes: 0.4992391
      TotalSeconds: 29.954346
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        GroupName: Multi-Threading
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
              
    RelativeSpeed: 39.1118804392064
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 0.100152411940491
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
FileName: multithreading
ClockSpeed: 2594
---


### Multi-Threading


|Technique               |RepeatCount|Time           |RelativeSpeed|Throughput|
|------------------------|-----------|---------------|-------------|----------|
|Runspace                |3          |00:00:00.765863|1x           |3.92/s    |
|ForEach-Object -Parallel|3          |00:00:00.974715|1.27x        |3.08/s    |
|Start-ThreadJob         |3          |00:00:02.067337|2.7x         |1.45/s    |
|Start-Job               |3          |00:00:29.954346|39.11x       |0.1/s     |
