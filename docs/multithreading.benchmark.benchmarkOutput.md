---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 8425454
      Days: 0
      Hours: 0
      Milliseconds: 842
      Minutes: 0
      Seconds: 0
      TotalDays: 9.75168287037037e-06
      TotalHours: 0.000234040388888889
      TotalMilliseconds: 842.5454
      TotalMinutes: 0.0140424233333333
      TotalSeconds: 0.8425454
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
    Throughput: 3.56063898752518
    BenchmarkInput: 
      FileName: multithreading
      GroupName: Multi-Threading
      RepeatCount: 3
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 10230543
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 1
      TotalDays: 1.184090625e-05
      TotalHours: 0.00028418175
      TotalMilliseconds: 1023.0543
      TotalMinutes: 0.017050905
      TotalSeconds: 1.0230543
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
    RelativeSpeed: 1.21424234231176
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 2.93239567049374
    BenchmarkInput: 
      FileName: multithreading
      GroupName: Multi-Threading
      RepeatCount: 3
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 19742500
      Days: 0
      Hours: 0
      Milliseconds: 974
      Minutes: 0
      Seconds: 1
      TotalDays: 2.28501157407407e-05
      TotalHours: 0.000548402777777778
      TotalMilliseconds: 1974.25
      TotalMinutes: 0.0329041666666667
      TotalSeconds: 1.97425
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
    RelativeSpeed: 2.3431971737072
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 1.51956439154109
    BenchmarkInput: 
      FileName: multithreading
      GroupName: Multi-Threading
      RepeatCount: 3
  - Technique: Start-Job
    Time: 
      Ticks: 309768592
      Days: 0
      Hours: 0
      Milliseconds: 976
      Minutes: 0
      Seconds: 30
      TotalDays: 0.000358528462962963
      TotalHours: 0.00860468311111111
      TotalMilliseconds: 30976.8592
      TotalMinutes: 0.516280986666667
      TotalSeconds: 30.9768592
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
    RelativeSpeed: 36.765804192866
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    RepeatCount: 3
    Throughput: 0.0968464872642737
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
|Runspace                |3          |00:00:00.842545|1x           |3.56/s    |
|ForEach-Object -Parallel|3          |00:00:01.023054|1.21x        |2.93/s    |
|Start-ThreadJob         |3          |00:00:01.974250|2.34x        |1.52/s    |
|Start-Job               |3          |00:00:30.976859|36.77x       |0.1/s     |
