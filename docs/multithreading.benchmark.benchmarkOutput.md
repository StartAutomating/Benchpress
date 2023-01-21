---
layout: Benchmark

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 8310541
      Days: 0
      Hours: 0
      Milliseconds: 831
      Minutes: 0
      Seconds: 0
      TotalDays: 9.61868171296296e-06
      TotalHours: 0.000230848361111111
      TotalMilliseconds: 831.0541
      TotalMinutes: 0.0138509016666667
      TotalSeconds: 0.8310541
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        GroupName: Multi-Threading
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
              
        FileName: multithreading
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    Throughput: 3.60987329224415
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 11421200
      Days: 0
      Hours: 0
      Milliseconds: 142
      Minutes: 0
      Seconds: 1
      TotalDays: 1.32189814814815e-05
      TotalHours: 0.000317255555555556
      TotalMilliseconds: 1142.12
      TotalMinutes: 0.0190353333333333
      TotalSeconds: 1.14212
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        GroupName: Multi-Threading
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
              
        FileName: multithreading
    RelativeSpeed: 1.3743028281793
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    Throughput: 2.62669421777046
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 23280864
      Days: 0
      Hours: 0
      Milliseconds: 328
      Minutes: 0
      Seconds: 2
      TotalDays: 2.69454444444444e-05
      TotalHours: 0.000646690666666667
      TotalMilliseconds: 2328.0864
      TotalMinutes: 0.03880144
      TotalSeconds: 2.3280864
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        GroupName: Multi-Threading
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
              
        FileName: multithreading
    RelativeSpeed: 2.80136563913228
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    Throughput: 1.28861196904032
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: Start-Job
    Time: 
      Ticks: 343294892
      Days: 0
      Hours: 0
      Milliseconds: 329
      Minutes: 0
      Seconds: 34
      TotalDays: 0.000397332050925926
      TotalHours: 0.00953596922222222
      TotalMilliseconds: 34329.4892
      TotalMinutes: 0.572158153333333
      TotalSeconds: 34.3294892
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        GroupName: Multi-Threading
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
              
        FileName: multithreading
    RelativeSpeed: 41.3083687331547
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    Throughput: 0.0873884252259716
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
FileName: multithreading
ClockSpeed: 2095
---
multithreading
--------------
> @2095 Mhz


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:00.831054|1x           |3.61/s    |
|ForEach-Object -Parallel|00:00:01.142120|1.37x        |2.63/s    |
|Start-ThreadJob         |00:00:02.328086|2.8x         |1.29/s    |
|Start-Job               |00:00:34.329489|41.31x       |0.09/s    |
