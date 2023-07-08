---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 8284032
      Days: 0
      Hours: 0
      Milliseconds: 828
      Minutes: 0
      Seconds: 0
      TotalDays: 9.588e-06
      TotalHours: 0.000230112
      TotalMilliseconds: 828.4032
      TotalMinutes: 0.01380672
      TotalSeconds: 0.8284032
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
    RepeatCount: 3
    Throughput: 3.62142492930979
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 8494333
      Days: 0
      Hours: 0
      Milliseconds: 849
      Minutes: 0
      Seconds: 0
      TotalDays: 9.83140393518519e-06
      TotalHours: 0.000235953694444444
      TotalMilliseconds: 849.4333
      TotalMinutes: 0.0141572216666667
      TotalSeconds: 0.8494333
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
    RelativeSpeed: 1.02538630946863
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    RepeatCount: 3
    Throughput: 3.53176641414929
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 18492764
      Days: 0
      Hours: 0
      Milliseconds: 849
      Minutes: 0
      Seconds: 1
      TotalDays: 2.1403662037037e-05
      TotalHours: 0.000513687888888889
      TotalMilliseconds: 1849.2764
      TotalMinutes: 0.0308212733333333
      TotalSeconds: 1.8492764
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
    RelativeSpeed: 2.23233855204808
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    RepeatCount: 3
    Throughput: 1.62225614299734
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: Start-Job
    Time: 
      Ticks: 276359253
      Days: 0
      Hours: 0
      Milliseconds: 635
      Minutes: 0
      Seconds: 27
      TotalDays: 0.000319860246527778
      TotalHours: 0.00767664591666667
      TotalMilliseconds: 27635.9253
      TotalMinutes: 0.460598755
      TotalSeconds: 27.6359253
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
    RelativeSpeed: 33.360476275321
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    RepeatCount: 3
    Throughput: 0.108554353343834
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
FileName: multithreading
ClockSpeed: 2793
---


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:00.828403|1x           |3.62/s    |
|ForEach-Object -Parallel|00:00:00.849433|1.03x        |3.53/s    |
|Start-ThreadJob         |00:00:01.849276|2.23x        |1.62/s    |
|Start-Job               |00:00:27.635925|33.36x       |0.11/s    |
