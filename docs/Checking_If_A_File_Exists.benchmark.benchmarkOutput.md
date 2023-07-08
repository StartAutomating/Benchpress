---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 75464
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.73425925925926e-08
      TotalHours: 2.09622222222222e-06
      TotalMilliseconds: 7.5464
      TotalMinutes: 0.000125773333333333
      TotalSeconds: 0.0075464
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 13251.3516378671
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: Get Resolved Path
    Time: 
      Ticks: 121368
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.40472222222222e-07
      TotalHours: 3.37133333333333e-06
      TotalMilliseconds: 12.1368
      TotalMinutes: 0.00020228
      TotalSeconds: 0.0121368
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 1.60829004558465
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 8239.40412629359
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: Test-Path
    Time: 
      Ticks: 260725
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 0
      TotalDays: 3.01765046296296e-07
      TotalHours: 7.24236111111111e-06
      TotalMilliseconds: 26.0725
      TotalMinutes: 0.000434541666666667
      TotalSeconds: 0.0260725
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 3.45495865578289
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 3835.45881676096
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 64162
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.42615740740741e-08
      TotalHours: 1.78227777777778e-06
      TotalMilliseconds: 6.4162
      TotalMinutes: 0.000106936666666667
      TotalSeconds: 0.0064162
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 15585.549078894
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
  - Technique: Test-Path
    Time: 
      Ticks: 257591
      Days: 0
      Hours: 0
      Milliseconds: 25
      Minutes: 0
      Seconds: 0
      TotalDays: 2.98137731481482e-07
      TotalHours: 7.15530555555556e-06
      TotalMilliseconds: 25.7591
      TotalMinutes: 0.000429318333333333
      TotalSeconds: 0.0257591
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $badFile
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 4.0146971727814
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 3882.12321082647
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
  - Technique: Get Resolved Path
    Time: 
      Ticks: 496572
      Days: 0
      Hours: 0
      Milliseconds: 49
      Minutes: 0
      Seconds: 0
      TotalDays: 5.74736111111111e-07
      TotalHours: 1.37936666666667e-05
      TotalMilliseconds: 49.6572
      TotalMinutes: 0.00082762
      TotalSeconds: 0.0496572
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 7.73934727720458
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 2013.80665845034
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
FileName: Checking If A File Exists
ClockSpeed: 2594
---


### (Found Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.007546|1x           |13251.35/s|
|Get Resolved Path|00:00:00.012136|1.61x        |8239.4/s  |
|Test-Path        |00:00:00.026072|3.45x        |3835.46/s |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.006416|1x           |15585.55/s|
|Test-Path        |00:00:00.025759|4.01x        |3882.12/s |
|Get Resolved Path|00:00:00.049657|7.74x        |2013.81/s |
