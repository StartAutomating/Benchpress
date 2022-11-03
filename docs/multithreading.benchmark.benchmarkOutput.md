---
layout: Benchmark

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 10831154
      Days: 0
      Hours: 0
      Milliseconds: 83
      Minutes: 0
      Seconds: 1
      TotalDays: 1.25360578703704e-05
      TotalHours: 0.000300865388888889
      TotalMilliseconds: 1083.1154
      TotalMinutes: 0.0180519233333333
      TotalSeconds: 1.0831154
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
              
        GroupName: Multi-Threading
        RepeatCount: 3
        FileName: multithreading
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2394
    FileName: multithreading
    Throughput: 2.76978796534515
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 12788999
      Days: 0
      Hours: 0
      Milliseconds: 278
      Minutes: 0
      Seconds: 1
      TotalDays: 1.48020821759259e-05
      TotalHours: 0.000355249972222222
      TotalMilliseconds: 1278.8999
      TotalMinutes: 0.0213149983333333
      TotalSeconds: 1.2788999
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
              
        GroupName: Multi-Threading
        RepeatCount: 3
        FileName: multithreading
    RelativeSpeed: 1.18076051730037
    GroupName: Multi-Threading
    ClockSpeed: 2394
    FileName: multithreading
    Throughput: 2.34576607598452
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 25112920
      Days: 0
      Hours: 0
      Milliseconds: 511
      Minutes: 0
      Seconds: 2
      TotalDays: 2.90658796296296e-05
      TotalHours: 0.000697581111111111
      TotalMilliseconds: 2511.292
      TotalMinutes: 0.0418548666666667
      TotalSeconds: 2.511292
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
              
        GroupName: Multi-Threading
        RepeatCount: 3
        FileName: multithreading
    RelativeSpeed: 2.31858211968919
    GroupName: Multi-Threading
    ClockSpeed: 2394
    FileName: multithreading
    Throughput: 1.19460421169661
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: Start-Job
    Time: 
      Ticks: 367088278
      Days: 0
      Hours: 0
      Milliseconds: 708
      Minutes: 0
      Seconds: 36
      TotalDays: 0.00042487069212963
      TotalHours: 0.0101968966111111
      TotalMilliseconds: 36708.8278
      TotalMinutes: 0.611813796666667
      TotalSeconds: 36.7088278
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
              
        GroupName: Multi-Threading
        RepeatCount: 3
        FileName: multithreading
    RelativeSpeed: 33.8918898207892
    GroupName: Multi-Threading
    ClockSpeed: 2394
    FileName: multithreading
    Throughput: 0.0817242113081039
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
FileName: multithreading
ClockSpeed: 2394
---
multithreading
--------------
> @2394 Mhz


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:01.083115|1x           |2.77/s    |
|ForEach-Object -Parallel|00:00:01.278899|1.18x        |2.35/s    |
|Start-ThreadJob         |00:00:02.511292|2.32x        |1.19/s    |
|Start-Job               |00:00:36.708827|33.89x       |0.08/s    |
