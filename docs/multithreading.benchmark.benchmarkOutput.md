---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 7315772
      Days: 0
      Hours: 0
      Milliseconds: 731
      Minutes: 0
      Seconds: 0
      TotalDays: 8.4673287037037e-06
      TotalHours: 0.000203215888888889
      TotalMilliseconds: 731.5772
      TotalMinutes: 0.0121929533333333
      TotalSeconds: 0.7315772
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
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 4.10072921900792
    BenchmarkInput: 
      FileName: multithreading
      GroupName: Multi-Threading
      RepeatCount: 3
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 10114704
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 1
      TotalDays: 1.17068333333333e-05
      TotalHours: 0.000280964
      TotalMilliseconds: 1011.4704
      TotalMinutes: 0.01685784
      TotalSeconds: 1.0114704
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
    RelativeSpeed: 1.38258874114721
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 2.9659790340874
    BenchmarkInput: 
      FileName: multithreading
      GroupName: Multi-Threading
      RepeatCount: 3
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 17763158
      Days: 0
      Hours: 0
      Milliseconds: 776
      Minutes: 0
      Seconds: 1
      TotalDays: 2.05592106481481e-05
      TotalHours: 0.000493421055555556
      TotalMilliseconds: 1776.3158
      TotalMinutes: 0.0296052633333333
      TotalSeconds: 1.7763158
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
    RelativeSpeed: 2.42806336774848
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 1.68888887888066
    BenchmarkInput: 
      FileName: multithreading
      GroupName: Multi-Threading
      RepeatCount: 3
  - Technique: Start-Job
    Time: 
      Ticks: 287006169
      Days: 0
      Hours: 0
      Milliseconds: 700
      Minutes: 0
      Seconds: 28
      TotalDays: 0.000332183065972222
      TotalHours: 0.00797239358333333
      TotalMilliseconds: 28700.6169
      TotalMinutes: 0.478343615
      TotalSeconds: 28.7006169
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
    RelativeSpeed: 39.2311527751275
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 0.104527369932595
    BenchmarkInput: 
      FileName: multithreading
      GroupName: Multi-Threading
      RepeatCount: 3
FileName: multithreading
ClockSpeed: 2095
---


### Multi-Threading


|Technique               |RepeatCount|Time           |RelativeSpeed|Throughput|
|------------------------|-----------|---------------|-------------|----------|
|Runspace                |3          |00:00:00.731577|1x           |4.1/s     |
|ForEach-Object -Parallel|3          |00:00:01.011470|1.38x        |2.97/s    |
|Start-ThreadJob         |3          |00:00:01.776315|2.43x        |1.69/s    |
|Start-Job               |3          |00:00:28.700616|39.23x       |0.1/s     |
