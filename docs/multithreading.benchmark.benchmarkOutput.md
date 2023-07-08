---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 10044145
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 1
      TotalDays: 1.16251678240741e-05
      TotalHours: 0.000279004027777778
      TotalMilliseconds: 1004.4145
      TotalMinutes: 0.0167402416666667
      TotalSeconds: 1.0044145
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        RepeatCount: 3
        GroupName: Multi-Threading
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
    RepeatCount: 3
    Throughput: 2.98681470647825
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 10513317
      Days: 0
      Hours: 0
      Milliseconds: 51
      Minutes: 0
      Seconds: 1
      TotalDays: 1.21681909722222e-05
      TotalHours: 0.000292036583333333
      TotalMilliseconds: 1051.3317
      TotalMinutes: 0.017522195
      TotalSeconds: 1.0513317
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        RepeatCount: 3
        GroupName: Multi-Threading
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
    RelativeSpeed: 1.04671099431559
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 2.85352377370529
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 23326693
      Days: 0
      Hours: 0
      Milliseconds: 332
      Minutes: 0
      Seconds: 2
      TotalDays: 2.69984872685185e-05
      TotalHours: 0.000647963694444444
      TotalMilliseconds: 2332.6693
      TotalMinutes: 0.0388778216666667
      TotalSeconds: 2.3326693
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        RepeatCount: 3
        GroupName: Multi-Threading
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
    RelativeSpeed: 2.32241699019678
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 1.28608028579105
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: Start-Job
    Time: 
      Ticks: 351874245
      Days: 0
      Hours: 0
      Milliseconds: 187
      Minutes: 0
      Seconds: 35
      TotalDays: 0.000407261857638889
      TotalHours: 0.00977428458333333
      TotalMilliseconds: 35187.4245
      TotalMinutes: 0.586457075
      TotalSeconds: 35.1874245
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        RepeatCount: 3
        GroupName: Multi-Threading
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
    RelativeSpeed: 35.0327723265644
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 0.085257731778579
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
FileName: multithreading
ClockSpeed: 2095
---


### Multi-Threading


|Technique               |RepeatCount|Time           |RelativeSpeed|Throughput|
|------------------------|-----------|---------------|-------------|----------|
|Runspace                |3          |00:00:01.004414|1x           |2.99/s    |
|ForEach-Object -Parallel|3          |00:00:01.051331|1.05x        |2.85/s    |
|Start-ThreadJob         |3          |00:00:02.332669|2.32x        |1.29/s    |
|Start-Job               |3          |00:00:35.187424|35.03x       |0.09/s    |
