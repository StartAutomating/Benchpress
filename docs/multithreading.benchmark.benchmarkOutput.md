---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 7150953
      Days: 0
      Hours: 0
      Milliseconds: 715
      Minutes: 0
      Seconds: 0
      TotalDays: 8.27656597222222e-06
      TotalHours: 0.000198637583333333
      TotalMilliseconds: 715.0953
      TotalMinutes: 0.011918255
      TotalSeconds: 0.7150953
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        RepeatCount: 3
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
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 4.19524502538333
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 9106293
      Days: 0
      Hours: 0
      Milliseconds: 910
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05396909722222e-05
      TotalHours: 0.000252952583333333
      TotalMilliseconds: 910.6293
      TotalMinutes: 0.015177155
      TotalSeconds: 0.9106293
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        RepeatCount: 3
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
    RelativeSpeed: 1.27343768026443
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 3.29442507505524
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 17281730
      Days: 0
      Hours: 0
      Milliseconds: 728
      Minutes: 0
      Seconds: 1
      TotalDays: 2.00020023148148e-05
      TotalHours: 0.000480048055555556
      TotalMilliseconds: 1728.173
      TotalMinutes: 0.0288028833333333
      TotalSeconds: 1.728173
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        RepeatCount: 3
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
    RelativeSpeed: 2.41670306041726
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 1.73593731646079
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: Start-Job
    Time: 
      Ticks: 295117235
      Days: 0
      Hours: 0
      Milliseconds: 511
      Minutes: 0
      Seconds: 29
      TotalDays: 0.000341570873842593
      TotalHours: 0.00819770097222222
      TotalMilliseconds: 29511.7235
      TotalMinutes: 0.491862058333333
      TotalSeconds: 29.5117235
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        RepeatCount: 3
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
    RelativeSpeed: 41.2696370679544
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 0.101654517059974
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
FileName: multithreading
ClockSpeed: 2793
---
multithreading
--------------
> @2793 Mhz


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:00.715095|1x           |4.2/s     |
|ForEach-Object -Parallel|00:00:00.910629|1.27x        |3.29/s    |
|Start-ThreadJob         |00:00:01.728173|2.42x        |1.74/s    |
|Start-Job               |00:00:29.511723|41.27x       |0.1/s     |
