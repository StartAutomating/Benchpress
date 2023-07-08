---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 71143
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.23414351851852e-08
      TotalHours: 1.97619444444444e-06
      TotalMilliseconds: 7.1143
      TotalMinutes: 0.000118571666666667
      TotalSeconds: 0.0071143
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 14056.1966743039
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 116090
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.34363425925926e-07
      TotalHours: 3.22472222222222e-06
      TotalMilliseconds: 11.609
      TotalMinutes: 0.000193483333333333
      TotalSeconds: 0.011609
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 1.63178387191994
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 8614.00637436472
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 250655
      Days: 0
      Hours: 0
      Milliseconds: 25
      Minutes: 0
      Seconds: 0
      TotalDays: 2.90109953703704e-07
      TotalHours: 6.96263888888889e-06
      TotalMilliseconds: 25.0655
      TotalMinutes: 0.000417758333333333
      TotalSeconds: 0.0250655
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 3.52325597739764
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 3989.54738584908
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 60600
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.01388888888889e-08
      TotalHours: 1.68333333333333e-06
      TotalMilliseconds: 6.06
      TotalMinutes: 0.000101
      TotalSeconds: 0.00606
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 16501.6501650165
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 246529
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.85334490740741e-07
      TotalHours: 6.84802777777778e-06
      TotalMilliseconds: 24.6529
      TotalMinutes: 0.000410881666666667
      TotalSeconds: 0.0246529
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $badFile
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 4.06813531353135
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 4056.31791797314
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 494430
      Days: 0
      Hours: 0
      Milliseconds: 49
      Minutes: 0
      Seconds: 0
      TotalDays: 5.72256944444444e-07
      TotalHours: 1.37341666666667e-05
      TotalMilliseconds: 49.443
      TotalMinutes: 0.00082405
      TotalSeconds: 0.049443
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 8.15891089108911
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 2022.5309952875
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2594
---


### (Found Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.007114|1x           |14056.2/s |
|Get Resolved Path|100        |00:00:00.011609|1.63x        |8614.01/s |
|Test-Path        |100        |00:00:00.025065|3.52x        |3989.55/s |


### (Missing Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.006060|1x           |16501.65/s|
|Test-Path        |100        |00:00:00.024652|4.07x        |4056.32/s |
|Get Resolved Path|100        |00:00:00.049443|8.16x        |2022.53/s |
