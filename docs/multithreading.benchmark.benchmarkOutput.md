---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 7105220
      Days: 0
      Hours: 0
      Milliseconds: 710
      Minutes: 0
      Seconds: 0
      TotalDays: 8.22363425925926e-06
      TotalHours: 0.000197367222222222
      TotalMilliseconds: 710.522
      TotalMinutes: 0.0118420333333333
      TotalSeconds: 0.710522
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
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 4.22224786846853
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 9003824
      Days: 0
      Hours: 0
      Milliseconds: 900
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04210925925926e-05
      TotalHours: 0.000250106222222222
      TotalMilliseconds: 900.3824
      TotalMinutes: 0.0150063733333333
      TotalSeconds: 0.9003824
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
    RelativeSpeed: 1.26721255640219
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 3.33191763855002
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 19554158
      Days: 0
      Hours: 0
      Milliseconds: 955
      Minutes: 0
      Seconds: 1
      TotalDays: 2.26321273148148e-05
      TotalHours: 0.000543171055555556
      TotalMilliseconds: 1955.4158
      TotalMinutes: 0.0325902633333333
      TotalSeconds: 1.9554158
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
    RelativeSpeed: 2.7520833978399
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 1.53420055212809
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: Start-Job
    Time: 
      Ticks: 279676577
      Days: 0
      Hours: 0
      Milliseconds: 967
      Minutes: 0
      Seconds: 27
      TotalDays: 0.000323699741898148
      TotalHours: 0.00776879380555556
      TotalMilliseconds: 27967.6577
      TotalMinutes: 0.466127628333333
      TotalSeconds: 27.9676577
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
    RelativeSpeed: 39.3621277032942
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 0.10726675906077
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
|Runspace                |00:00:00.710522|1x           |4.22/s    |
|ForEach-Object -Parallel|00:00:00.900382|1.27x        |3.33/s    |
|Start-ThreadJob         |00:00:01.955415|2.75x        |1.53/s    |
|Start-Job               |00:00:27.967657|39.36x       |0.11/s    |
