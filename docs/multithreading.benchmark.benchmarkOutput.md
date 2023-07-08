---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 10386920
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 1
      TotalDays: 1.20218981481481e-05
      TotalHours: 0.000288525555555556
      TotalMilliseconds: 1038.692
      TotalMinutes: 0.0173115333333333
      TotalSeconds: 1.038692
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
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 2.88824791179676
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 10606220
      Days: 0
      Hours: 0
      Milliseconds: 60
      Minutes: 0
      Seconds: 1
      TotalDays: 1.22757175925926e-05
      TotalHours: 0.000294617222222222
      TotalMilliseconds: 1060.622
      TotalMinutes: 0.0176770333333333
      TotalSeconds: 1.060622
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
              
    RelativeSpeed: 1.02111309223523
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 2.82852891982252
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 22613008
      Days: 0
      Hours: 0
      Milliseconds: 261
      Minutes: 0
      Seconds: 2
      TotalDays: 2.6172462962963e-05
      TotalHours: 0.000628139111111111
      TotalMilliseconds: 2261.3008
      TotalMinutes: 0.0376883466666667
      TotalSeconds: 2.2613008
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
              
    RelativeSpeed: 2.17706577118145
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 1.3266700299226
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: Start-Job
    Time: 
      Ticks: 355335682
      Days: 0
      Hours: 0
      Milliseconds: 533
      Minutes: 0
      Seconds: 35
      TotalDays: 0.000411268150462963
      TotalHours: 0.00987043561111111
      TotalMilliseconds: 35533.5682
      TotalMinutes: 0.592226136666667
      TotalSeconds: 35.5335682
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
              
    RelativeSpeed: 34.2099180507793
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 0.0844272093113351
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
FileName: multithreading
ClockSpeed: 2095
---


### Multi-Threading


|Technique               |RepeatCount|Time           |RelativeSpeed|Throughput|
|------------------------|-----------|---------------|-------------|----------|
|Runspace                |3          |00:00:01.038692|1x           |2.89/s    |
|ForEach-Object -Parallel|3          |00:00:01.060622|1.02x        |2.83/s    |
|Start-ThreadJob         |3          |00:00:02.261300|2.18x        |1.33/s    |
|Start-Job               |3          |00:00:35.533568|34.21x       |0.08/s    |
