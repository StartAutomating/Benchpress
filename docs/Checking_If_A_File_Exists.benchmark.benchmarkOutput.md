---
layout: Benchmark

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 133201
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.54167824074074e-07
      TotalHours: 3.70002777777778e-06
      TotalMilliseconds: 13.3201
      TotalMinutes: 0.000222001666666667
      TotalSeconds: 0.0133201
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 7507.45114526167
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 224400
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.59722222222222e-07
      TotalHours: 6.23333333333333e-06
      TotalMilliseconds: 22.44
      TotalMinutes: 0.000374
      TotalSeconds: 0.02244
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 1.68467203699672
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 4456.32798573975
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 354008
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.09731481481481e-07
      TotalHours: 9.83355555555556e-06
      TotalMilliseconds: 35.4008
      TotalMinutes: 0.000590013333333333
      TotalSeconds: 0.0354008
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 2.65769776503179
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 2824.79491988882
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 96238
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.11386574074074e-07
      TotalHours: 2.67327777777778e-06
      TotalMilliseconds: 9.6238
      TotalMinutes: 0.000160396666666667
      TotalSeconds: 0.0096238
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 10390.9058791745
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 394626
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.56743055555556e-07
      TotalHours: 1.09618333333333e-05
      TotalMilliseconds: 39.4626
      TotalMinutes: 0.00065771
      TotalSeconds: 0.0394626
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $badFile
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 4.10052162347514
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 2534.04489313933
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 986710
      Days: 0
      Hours: 0
      Milliseconds: 98
      Minutes: 0
      Seconds: 0
      TotalDays: 1.14202546296296e-06
      TotalHours: 2.74086111111111e-05
      TotalMilliseconds: 98.671
      TotalMinutes: 0.00164451666666667
      TotalSeconds: 0.098671
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 10.2528107400403
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 1013.46900305054
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2295
---
Checking If A File Exists
-------------------------
> @2295 Mhz


### (Found Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.013320|1x           |7507.45/s |
|Get Resolved Path|00:00:00.022440|1.68x        |4456.33/s |
|Test-Path        |00:00:00.035400|2.66x        |2824.79/s |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.009623|1x           |10390.91/s|
|Test-Path        |00:00:00.039462|4.1x         |2534.04/s |
|Get Resolved Path|00:00:00.098671|10.25x       |1013.47/s |
