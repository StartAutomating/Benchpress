---
layout: Benchmark

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 9818526
      Days: 0
      Hours: 0
      Milliseconds: 981
      Minutes: 0
      Seconds: 0
      TotalDays: 1.13640347222222e-05
      TotalHours: 0.000272736833333333
      TotalMilliseconds: 981.8526
      TotalMinutes: 0.01636421
      TotalSeconds: 0.9818526
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
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
        RepeatCount: 3
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 3.05544844511284
    BenchmarkInput: 
      FileName: multithreading
      GroupName: Multi-Threading
      RepeatCount: 3
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 10202347
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 1
      TotalDays: 1.18082719907407e-05
      TotalHours: 0.000283398527777778
      TotalMilliseconds: 1020.2347
      TotalMinutes: 0.0170039116666667
      TotalSeconds: 1.0202347
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
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
        RepeatCount: 3
    RelativeSpeed: 1.03909150925506
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 2.94049986733445
    BenchmarkInput: 
      FileName: multithreading
      GroupName: Multi-Threading
      RepeatCount: 3
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 20162052
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 2
      TotalDays: 2.33357083333333e-05
      TotalHours: 0.000560057
      TotalMilliseconds: 2016.2052
      TotalMinutes: 0.03360342
      TotalSeconds: 2.0162052
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
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
        RepeatCount: 3
    RelativeSpeed: 2.05347034778947
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 1.48794378667409
    BenchmarkInput: 
      FileName: multithreading
      GroupName: Multi-Threading
      RepeatCount: 3
  - Technique: Start-Job
    Time: 
      Ticks: 301215731
      Days: 0
      Hours: 0
      Milliseconds: 121
      Minutes: 0
      Seconds: 30
      TotalDays: 0.000348629318287037
      TotalHours: 0.00836710363888889
      TotalMilliseconds: 30121.5731
      TotalMinutes: 0.502026218333333
      TotalSeconds: 30.1215731
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
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
        RepeatCount: 3
    RelativeSpeed: 30.6783045642493
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 0.0995963919294773
    BenchmarkInput: 
      FileName: multithreading
      GroupName: Multi-Threading
      RepeatCount: 3
FileName: multithreading
ClockSpeed: 2594
---
multithreading
--------------
> @2594 Mhz


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:00.981852|1x           |3.06/s    |
|ForEach-Object -Parallel|00:00:01.020234|1.04x        |2.94/s    |
|Start-ThreadJob         |00:00:02.016205|2.05x        |1.49/s    |
|Start-Job               |00:00:30.121573|30.68x       |0.1/s     |
