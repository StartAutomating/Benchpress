---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 10700768
      Days: 0
      Hours: 0
      Milliseconds: 70
      Minutes: 0
      Seconds: 1
      TotalDays: 1.23851481481481e-05
      TotalHours: 0.000297243555555556
      TotalMilliseconds: 1070.0768
      TotalMinutes: 0.0178346133333333
      TotalSeconds: 1.0700768
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        FileName: multithreading
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
              
        RepeatCount: 3
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    RepeatCount: 3
    Throughput: 2.80353709191714
    BenchmarkInput: 
      FileName: multithreading
      GroupName: Multi-Threading
      RepeatCount: 3
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 11816830
      Days: 0
      Hours: 0
      Milliseconds: 181
      Minutes: 0
      Seconds: 1
      TotalDays: 1.36768865740741e-05
      TotalHours: 0.000328245277777778
      TotalMilliseconds: 1181.683
      TotalMinutes: 0.0196947166666667
      TotalSeconds: 1.181683
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        FileName: multithreading
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
              
        RepeatCount: 3
    RelativeSpeed: 1.10429737379597
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    RepeatCount: 3
    Throughput: 2.53875193262491
    BenchmarkInput: 
      FileName: multithreading
      GroupName: Multi-Threading
      RepeatCount: 3
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 26776114
      Days: 0
      Hours: 0
      Milliseconds: 677
      Minutes: 0
      Seconds: 2
      TotalDays: 3.09908726851852e-05
      TotalHours: 0.000743780944444444
      TotalMilliseconds: 2677.6114
      TotalMinutes: 0.0446268566666667
      TotalSeconds: 2.6776114
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        FileName: multithreading
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
              
        RepeatCount: 3
    RelativeSpeed: 2.50226095921339
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    RepeatCount: 3
    Throughput: 1.12040156387144
    BenchmarkInput: 
      FileName: multithreading
      GroupName: Multi-Threading
      RepeatCount: 3
  - Technique: Start-Job
    Time: 
      Ticks: 389514919
      Days: 0
      Hours: 0
      Milliseconds: 951
      Minutes: 0
      Seconds: 38
      TotalDays: 0.000450827452546296
      TotalHours: 0.0108198588611111
      TotalMilliseconds: 38951.4919
      TotalMinutes: 0.649191531666667
      TotalSeconds: 38.9514919
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
        FileName: multithreading
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
              
        RepeatCount: 3
    RelativeSpeed: 36.40065077572
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    RepeatCount: 3
    Throughput: 0.0770188727995808
    BenchmarkInput: 
      FileName: multithreading
      GroupName: Multi-Threading
      RepeatCount: 3
FileName: multithreading
ClockSpeed: 2295
---


### Multi-Threading


|Technique               |RepeatCount|Time           |RelativeSpeed|Throughput|
|------------------------|-----------|---------------|-------------|----------|
|Runspace                |3          |00:00:01.070076|1x           |2.8/s     |
|ForEach-Object -Parallel|3          |00:00:01.181683|1.1x         |2.54/s    |
|Start-ThreadJob         |3          |00:00:02.677611|2.5x         |1.12/s    |
|Start-Job               |3          |00:00:38.951491|36.4x        |0.08/s    |
