---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 79769
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.23252314814815e-08
      TotalHours: 2.21580555555556e-06
      TotalMilliseconds: 7.9769
      TotalMinutes: 0.000132948333333333
      TotalSeconds: 0.0079769
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        GroupName: (Found Path)
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 12536.1982725119
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 132888
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.53805555555556e-07
      TotalHours: 3.69133333333333e-06
      TotalMilliseconds: 13.2888
      TotalMinutes: 0.00022148
      TotalSeconds: 0.0132888
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        GroupName: (Found Path)
    RelativeSpeed: 1.66591031603756
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 7525.13394738426
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 290201
      Days: 0
      Hours: 0
      Milliseconds: 29
      Minutes: 0
      Seconds: 0
      TotalDays: 3.35880787037037e-07
      TotalHours: 8.06113888888889e-06
      TotalMilliseconds: 29.0201
      TotalMinutes: 0.000483668333333333
      TotalSeconds: 0.0290201
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        GroupName: (Found Path)
    RelativeSpeed: 3.63801727488122
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 3445.88750555649
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 71679
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.29618055555556e-08
      TotalHours: 1.99108333333333e-06
      TotalMilliseconds: 7.1679
      TotalMinutes: 0.000119465
      TotalSeconds: 0.0071679
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
        GroupName: (Missing Path)
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 13951.0874872696
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 317993
      Days: 0
      Hours: 0
      Milliseconds: 31
      Minutes: 0
      Seconds: 0
      TotalDays: 3.68047453703704e-07
      TotalHours: 8.83313888888889e-06
      TotalMilliseconds: 31.7993
      TotalMinutes: 0.000529988333333333
      TotalSeconds: 0.0317993
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  Test-path $badFile
              
        GroupName: (Missing Path)
    RelativeSpeed: 4.43634816333933
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 3144.72331151944
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 549023
      Days: 0
      Hours: 0
      Milliseconds: 54
      Minutes: 0
      Seconds: 0
      TotalDays: 6.35443287037037e-07
      TotalHours: 1.52506388888889e-05
      TotalMilliseconds: 54.9023
      TotalMinutes: 0.000915038333333333
      TotalSeconds: 0.0549023
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        GroupName: (Missing Path)
    RelativeSpeed: 7.65946790552323
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 1821.41731767157
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2095
---


### (Found Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.007976|1x           |12536.2/s |
|Get Resolved Path|100        |00:00:00.013288|1.67x        |7525.13/s |
|Test-Path        |100        |00:00:00.029020|3.64x        |3445.89/s |


### (Missing Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.007167|1x           |13951.09/s|
|Test-Path        |100        |00:00:00.031799|4.44x        |3144.72/s |
|Get Resolved Path|100        |00:00:00.054902|7.66x        |1821.42/s |
