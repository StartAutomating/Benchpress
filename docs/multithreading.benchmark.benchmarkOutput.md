---
layout: Benchmark
title: multithreading

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 10482722
      Days: 0
      Hours: 0
      Milliseconds: 48
      Minutes: 0
      Seconds: 1
      TotalDays: 1.21327800925926e-05
      TotalHours: 0.000291186722222222
      TotalMilliseconds: 1048.2722
      TotalMinutes: 0.0174712033333333
      TotalSeconds: 1.0482722
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
              
        RepeatCount: 3
        GroupName: Multi-Threading
        FileName: multithreading
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    Throughput: 2.86185210291754
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 11986810
      Days: 0
      Hours: 0
      Milliseconds: 198
      Minutes: 0
      Seconds: 1
      TotalDays: 1.38736226851852e-05
      TotalHours: 0.000332966944444444
      TotalMilliseconds: 1198.681
      TotalMinutes: 0.0199780166666667
      TotalSeconds: 1.198681
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
              
        RepeatCount: 3
        GroupName: Multi-Threading
        FileName: multithreading
    RelativeSpeed: 1.14348258019243
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    Throughput: 2.50275094040867
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 22886131
      Days: 0
      Hours: 0
      Milliseconds: 288
      Minutes: 0
      Seconds: 2
      TotalDays: 2.64885775462963e-05
      TotalHours: 0.000635725861111111
      TotalMilliseconds: 2288.6131
      TotalMinutes: 0.0381435516666667
      TotalSeconds: 2.2886131
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
              
        RepeatCount: 3
        GroupName: Multi-Threading
        FileName: multithreading
    RelativeSpeed: 2.18322407099988
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    Throughput: 1.31083755484927
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
      FileName: multithreading
  - Technique: Start-Job
    Time: 
      Ticks: 396279196
      Days: 0
      Hours: 0
      Milliseconds: 627
      Minutes: 0
      Seconds: 39
      TotalDays: 0.000458656476851852
      TotalHours: 0.0110077554444444
      TotalMilliseconds: 39627.9196
      TotalMinutes: 0.660465326666667
      TotalSeconds: 39.6279196
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
              
        RepeatCount: 3
        GroupName: Multi-Threading
        FileName: multithreading
    RelativeSpeed: 37.8030816805024
    GroupName: Multi-Threading
    ClockSpeed: 2295
    FileName: multithreading
    Throughput: 0.0757042012369481
    BenchmarkInput: 
      RepeatCount: 3
      GroupName: Multi-Threading
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
|Runspace                |00:00:01.048272|1x           |2.86/s    |
|ForEach-Object -Parallel|00:00:01.198681|1.14x        |2.5/s     |
|Start-ThreadJob         |00:00:02.288613|2.18x        |1.31/s    |
|Start-Job               |00:00:39.627919|37.8x        |0.08/s    |
