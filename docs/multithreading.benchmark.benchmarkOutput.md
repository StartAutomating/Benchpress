---
layout: Benchmark

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 7379486
      Days: 0
      Hours: 0
      Milliseconds: 737
      Minutes: 0
      Seconds: 0
      TotalDays: 8.54107175925926e-06
      TotalHours: 0.000204985722222222
      TotalMilliseconds: 737.9486
      TotalMinutes: 0.0122991433333333
      TotalSeconds: 0.7379486
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
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 4.06532379084397
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 10196755
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 1
      TotalDays: 1.18017997685185e-05
      TotalHours: 0.000283243194444444
      TotalMilliseconds: 1019.6755
      TotalMinutes: 0.0169945916666667
      TotalSeconds: 1.0196755
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
    RelativeSpeed: 1.38177035636357
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 2.94211246617184
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 19349531
      Days: 0
      Hours: 0
      Milliseconds: 934
      Minutes: 0
      Seconds: 1
      TotalDays: 2.23952905092593e-05
      TotalHours: 0.000537486972222222
      TotalMilliseconds: 1934.9531
      TotalMinutes: 0.0322492183333333
      TotalSeconds: 1.9349531
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
    RelativeSpeed: 2.62207029053243
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 1.55042517567997
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: Start-Job
    Time: 
      Ticks: 285592296
      Days: 0
      Hours: 0
      Milliseconds: 559
      Minutes: 0
      Seconds: 28
      TotalDays: 0.000330546638888889
      TotalHours: 0.00793311933333333
      TotalMilliseconds: 28559.2296
      TotalMinutes: 0.47598716
      TotalSeconds: 28.5592296
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
    RelativeSpeed: 38.7008385136851
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 0.105044850369493
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
FileName: multithreading
ClockSpeed: 2594
---
multithreading
--------------
> @2594 Mhz


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:00.737948|1x           |4.07/s    |
|ForEach-Object -Parallel|00:00:01.019675|1.38x        |2.94/s    |
|Start-ThreadJob         |00:00:01.934953|2.62x        |1.55/s    |
|Start-Job               |00:00:28.559229|38.7x        |0.11/s    |
