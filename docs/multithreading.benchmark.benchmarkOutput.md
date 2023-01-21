---
layout: Benchmark

Data: 
  - Technique: Runspace
    Time: 
      Ticks: 7861731
      Days: 0
      Hours: 0
      Milliseconds: 786
      Minutes: 0
      Seconds: 0
      TotalDays: 9.09922569444445e-06
      TotalHours: 0.000218381416666667
      TotalMilliseconds: 786.1731
      TotalMinutes: 0.013102885
      TotalSeconds: 0.7861731
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
        FileName: multithreading
        GroupName: Multi-Threading
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 3.8159535094752
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
  - Technique: ForEach-Object -Parallel
    Time: 
      Ticks: 9237901
      Days: 0
      Hours: 0
      Milliseconds: 923
      Minutes: 0
      Seconds: 0
      TotalDays: 1.06920150462963e-05
      TotalHours: 0.000256608361111111
      TotalMilliseconds: 923.7901
      TotalMinutes: 0.0153965016666667
      TotalSeconds: 0.9237901
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
        FileName: multithreading
        GroupName: Multi-Threading
    RelativeSpeed: 1.17504669137115
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 3.24749096142078
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
  - Technique: Start-ThreadJob
    Time: 
      Ticks: 20125771
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 2
      TotalDays: 2.32937164351852e-05
      TotalHours: 0.000559049194444444
      TotalMilliseconds: 2012.5771
      TotalMinutes: 0.0335429516666667
      TotalSeconds: 2.0125771
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
        FileName: multithreading
        GroupName: Multi-Threading
    RelativeSpeed: 2.55996688261148
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 1.49062612309362
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
  - Technique: Start-Job
    Time: 
      Ticks: 271961292
      Days: 0
      Hours: 0
      Milliseconds: 196
      Minutes: 0
      Seconds: 27
      TotalDays: 0.000314770013888889
      TotalHours: 0.00755448033333333
      TotalMilliseconds: 27196.1292
      TotalMinutes: 0.45326882
      TotalSeconds: 27.1961292
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
        FileName: multithreading
        GroupName: Multi-Threading
    RelativeSpeed: 34.5930548882937
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 0.110309815707156
    BenchmarkInput: 
      RepeatCount: 3
      FileName: multithreading
      GroupName: Multi-Threading
FileName: multithreading
ClockSpeed: 2793
---
multithreading
--------------
> @2793 Mhz


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:00.786173|1x           |3.82/s    |
|ForEach-Object -Parallel|00:00:00.923790|1.18x        |3.25/s    |
|Start-ThreadJob         |00:00:02.012577|2.56x        |1.49/s    |
|Start-Job               |00:00:27.196129|34.59x       |0.11/s    |
