---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 122843
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.42179398148148e-07
      TotalHours: 3.41230555555556e-06
      TotalMilliseconds: 12.2843
      TotalMinutes: 0.000204738333333333
      TotalSeconds: 0.0122843
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Found Path)
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 8140.47198456567
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: Get Resolved Path
    Time: 
      Ticks: 178195
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.06244212962963e-07
      TotalHours: 4.94986111111111e-06
      TotalMilliseconds: 17.8195
      TotalMinutes: 0.000296991666666667
      TotalSeconds: 0.0178195
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Found Path)
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
    RelativeSpeed: 1.45059140528968
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 5611.82973708578
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: Test-Path
    Time: 
      Ticks: 641567
      Days: 0
      Hours: 0
      Milliseconds: 64
      Minutes: 0
      Seconds: 0
      TotalDays: 7.42554398148148e-07
      TotalHours: 1.78213055555556e-05
      TotalMilliseconds: 64.1567
      TotalMinutes: 0.00106927833333333
      TotalSeconds: 0.0641567
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Found Path)
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
    RelativeSpeed: 5.22265818972184
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 1558.68366047506
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 93808
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08574074074074e-07
      TotalHours: 2.60577777777778e-06
      TotalMilliseconds: 9.3808
      TotalMinutes: 0.000156346666666667
      TotalSeconds: 0.0093808
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 10660.0716356814
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
  - Technique: Test-Path
    Time: 
      Ticks: 332038
      Days: 0
      Hours: 0
      Milliseconds: 33
      Minutes: 0
      Seconds: 0
      TotalDays: 3.84303240740741e-07
      TotalHours: 9.22327777777778e-06
      TotalMilliseconds: 33.2038
      TotalMinutes: 0.000553396666666667
      TotalSeconds: 0.0332038
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  Test-path $badFile
              
    RelativeSpeed: 3.53954886576838
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 3011.7034797222
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
  - Technique: Get Resolved Path
    Time: 
      Ticks: 674152
      Days: 0
      Hours: 0
      Milliseconds: 67
      Minutes: 0
      Seconds: 0
      TotalDays: 7.80268518518519e-07
      TotalHours: 1.87264444444444e-05
      TotalMilliseconds: 67.4152
      TotalMinutes: 0.00112358666666667
      TotalSeconds: 0.0674152
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
    RelativeSpeed: 7.18650861333788
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 1483.34500231402
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
FileName: Checking If A File Exists
ClockSpeed: 2295
---


### (Found Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.012284|1x           |8140.47/s |
|Get Resolved Path|100        |00:00:00.017819|1.45x        |5611.83/s |
|Test-Path        |100        |00:00:00.064156|5.22x        |1558.68/s |


### (Missing Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.009380|1x           |10660.07/s|
|Test-Path        |100        |00:00:00.033203|3.54x        |3011.7/s  |
|Get Resolved Path|100        |00:00:00.067415|7.19x        |1483.35/s |
