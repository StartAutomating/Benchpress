---
layout: Benchmark

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 6626600
      Days: 0
      Hours: 0
      Milliseconds: 662
      Minutes: 0
      Seconds: 0
      TotalDays: 7.66967592592593e-06
      TotalHours: 0.000184072222222222
      TotalMilliseconds: 662.66
      TotalMinutes: 0.0110443333333333
      TotalSeconds: 0.66266
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
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
        FileName: multithreading
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 4.52720852322458
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 7991376
      Days: 0
      Hours: 0
      Milliseconds: 799
      Minutes: 0
      Seconds: 0
      TotalDays: 9.24927777777778e-06
      TotalHours: 0.000221982666666667
      TotalMilliseconds: 799.1376
      TotalMinutes: 0.01331896
      TotalSeconds: 0.7991376
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
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
        FileName: multithreading
    RelativeSpeed: 1.20595418464975
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 3.75404686251779
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 18019966
      Days: 0
      Hours: 0
      Milliseconds: 801
      Minutes: 0
      Seconds: 1
      TotalDays: 2.08564421296296e-05
      TotalHours: 0.000500554611111111
      TotalMilliseconds: 1801.9966
      TotalMinutes: 0.0300332766666667
      TotalSeconds: 1.8019966
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
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
        FileName: multithreading
    RelativeSpeed: 2.7193381221139
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 1.66482001131412
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
  - Technique: Start-Job
    Time: 
      Ticks: 268577183
      Days: 0
      Hours: 0
      Milliseconds: 857
      Minutes: 0
      Seconds: 26
      TotalDays: 0.000310853221064815
      TotalHours: 0.00746047730555556
      TotalMilliseconds: 26857.7183
      TotalMinutes: 0.447628638333333
      TotalSeconds: 26.8577183
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: 
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
        FileName: multithreading
    RelativeSpeed: 40.5301637340416
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 0.111699734373936
    BenchmarkInput: 
      GroupName: Multi-Threading
      RepeatCount: 3
      FileName: multithreading
FileName: multithreading
ClockSpeed: 2793
---
multithreading
--------------
> @2793 Mhz


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:00.662660|1x           |4.53/s    |
|ForEach-Object -Parallel|00:00:00.799137|1.21x        |3.75/s    |
|Start-ThreadJob         |00:00:01.801996|2.72x        |1.66/s    |
|Start-Job               |00:00:26.857718|40.53x       |0.11/s    |
