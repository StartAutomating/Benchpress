---
layout: Benchmark

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 8587227
      Days: 0
      Hours: 0
      Milliseconds: 858
      Minutes: 0
      Seconds: 0
      TotalDays: 9.93892013888889e-06
      TotalHours: 0.000238534083333333
      TotalMilliseconds: 858.7227
      TotalMinutes: 0.014312045
      TotalSeconds: 0.8587227
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
              
        FileName: multithreading
        RepeatCount: 3
        GroupName: Multi-Threading
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    Throughput: 3.49356084333161
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 11705888
      Days: 0
      Hours: 0
      Milliseconds: 170
      Minutes: 0
      Seconds: 1
      TotalDays: 1.35484814814815e-05
      TotalHours: 0.000325163555555556
      TotalMilliseconds: 1170.5888
      TotalMinutes: 0.0195098133333333
      TotalSeconds: 1.1705888
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
              
        FileName: multithreading
        RepeatCount: 3
        GroupName: Multi-Threading
    RelativeSpeed: 1.36317439844085
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    Throughput: 2.56281283401994
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 23284679
      Days: 0
      Hours: 0
      Milliseconds: 328
      Minutes: 0
      Seconds: 2
      TotalDays: 2.69498599537037e-05
      TotalHours: 0.000646796638888889
      TotalMilliseconds: 2328.4679
      TotalMinutes: 0.0388077983333333
      TotalSeconds: 2.3284679
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
              
        FileName: multithreading
        RepeatCount: 3
        GroupName: Multi-Threading
    RelativeSpeed: 2.71154809346486
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    Throughput: 1.28840084074167
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: Start-Job
    Time: 
      Ticks: 381742469
      Days: 0
      Hours: 0
      Milliseconds: 174
      Minutes: 0
      Seconds: 38
      TotalDays: 0.000441831561342593
      TotalHours: 0.0106039574722222
      TotalMilliseconds: 38174.2469
      TotalMinutes: 0.636237448333333
      TotalSeconds: 38.1742469
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
              
        FileName: multithreading
        RepeatCount: 3
        GroupName: Multi-Threading
    RelativeSpeed: 44.4546847311711
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    Throughput: 0.0785870120203995
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
FileName: multithreading
ClockSpeed: 2295
---
multithreading
--------------
> @2295 Mhz


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:00.858722|1x           |3.49/s    |
|ForEach-Object -Parallel|00:00:01.170588|1.36x        |2.56/s    |
|Start-ThreadJob         |00:00:02.328467|2.71x        |1.29/s    |
|Start-Job               |00:00:38.174246|44.45x       |0.08/s    |
