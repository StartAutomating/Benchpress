---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 84969
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.834375e-08
      TotalHours: 2.36025e-06
      TotalMilliseconds: 8.4969
      TotalMinutes: 0.000141615
      TotalSeconds: 0.0084969
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        FileName: Checking If A File Exists
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 11768.9981051913
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 144728
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.67509259259259e-07
      TotalHours: 4.02022222222222e-06
      TotalMilliseconds: 14.4728
      TotalMinutes: 0.000241213333333333
      TotalSeconds: 0.0144728
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        FileName: Checking If A File Exists
    RelativeSpeed: 1.70330355776813
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 6909.51301752253
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 294528
      Days: 0
      Hours: 0
      Milliseconds: 29
      Minutes: 0
      Seconds: 0
      TotalDays: 3.40888888888889e-07
      TotalHours: 8.18133333333333e-06
      TotalMilliseconds: 29.4528
      TotalMinutes: 0.00049088
      TotalSeconds: 0.0294528
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        FileName: Checking If A File Exists
    RelativeSpeed: 3.46629947392578
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 3395.26292916123
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 70617
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.17326388888889e-08
      TotalHours: 1.96158333333333e-06
      TotalMilliseconds: 7.0617
      TotalMinutes: 0.000117695
      TotalSeconds: 0.0070617
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
        FileName: Checking If A File Exists
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 14160.8961015053
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 318470
      Days: 0
      Hours: 0
      Milliseconds: 31
      Minutes: 0
      Seconds: 0
      TotalDays: 3.68599537037037e-07
      TotalHours: 8.84638888888889e-06
      TotalMilliseconds: 31.847
      TotalMinutes: 0.000530783333333333
      TotalSeconds: 0.031847
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  Test-path $badFile
              
        FileName: Checking If A File Exists
    RelativeSpeed: 4.50982058144639
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 3140.01318805539
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 547108
      Days: 0
      Hours: 0
      Milliseconds: 54
      Minutes: 0
      Seconds: 0
      TotalDays: 6.33226851851852e-07
      TotalHours: 1.51974444444444e-05
      TotalMilliseconds: 54.7108
      TotalMinutes: 0.000911846666666667
      TotalSeconds: 0.0547108
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        FileName: Checking If A File Exists
    RelativeSpeed: 7.74753954430236
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 1827.79268444256
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2095
---


### (Found Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.008496|1x           |11769/s   |
|Get Resolved Path|100        |00:00:00.014472|1.7x         |6909.51/s |
|Test-Path        |100        |00:00:00.029452|3.47x        |3395.26/s |


### (Missing Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.007061|1x           |14160.9/s |
|Test-Path        |100        |00:00:00.031847|4.51x        |3140.01/s |
|Get Resolved Path|100        |00:00:00.054710|7.75x        |1827.79/s |
