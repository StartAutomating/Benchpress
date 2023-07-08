---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 6565873
      Days: 0
      Hours: 0
      Milliseconds: 656
      Minutes: 0
      Seconds: 0
      TotalDays: 7.5993900462963e-06
      TotalHours: 0.000182385361111111
      TotalMilliseconds: 656.5873
      TotalMinutes: 0.0109431216666667
      TotalSeconds: 0.6565873
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
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 4.56908015126092
    BenchmarkInput: 
      FileName: multithreading
      RepeatCount: 3
      GroupName: Multi-Threading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 8992504
      Days: 0
      Hours: 0
      Milliseconds: 899
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04079907407407e-05
      TotalHours: 0.000249791777777778
      TotalMilliseconds: 899.2504
      TotalMinutes: 0.0149875066666667
      TotalSeconds: 0.8992504
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
    RelativeSpeed: 1.36958238455115
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 3.3361119439035
    BenchmarkInput: 
      FileName: multithreading
      RepeatCount: 3
      GroupName: Multi-Threading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 18701751
      Days: 0
      Hours: 0
      Milliseconds: 870
      Minutes: 0
      Seconds: 1
      TotalDays: 2.16455451388889e-05
      TotalHours: 0.000519493083333333
      TotalMilliseconds: 1870.1751
      TotalMinutes: 0.031169585
      TotalSeconds: 1.8701751
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
    RelativeSpeed: 2.8483266429308
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 1.60412787016574
    BenchmarkInput: 
      FileName: multithreading
      RepeatCount: 3
      GroupName: Multi-Threading
  - Technique: Start-Job
    Time: 
      Ticks: 300957421
      Days: 0
      Hours: 0
      Milliseconds: 95
      Minutes: 0
      Seconds: 30
      TotalDays: 0.00034833034837963
      TotalHours: 0.00835992836111111
      TotalMilliseconds: 30095.7421
      TotalMinutes: 0.501595701666667
      TotalSeconds: 30.0957421
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
    RelativeSpeed: 45.8366192888592
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    RepeatCount: 3
    Throughput: 0.0996818749320689
    BenchmarkInput: 
      FileName: multithreading
      RepeatCount: 3
      GroupName: Multi-Threading
FileName: multithreading
ClockSpeed: 2594
---


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:00.656587|1x           |4.57/s    |
|ForEach-Object -Parallel|00:00:00.899250|1.37x        |3.34/s    |
|Start-ThreadJob         |00:00:01.870175|2.85x        |1.6/s     |
|Start-Job               |00:00:30.095742|45.84x       |0.1/s     |
