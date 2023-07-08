---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 75352
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.7212962962963e-08
      TotalHours: 2.09311111111111e-06
      TotalMilliseconds: 7.5352
      TotalMinutes: 0.000125586666666667
      TotalSeconds: 0.0075352
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
    Throughput: 13271.0478819408
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: Get Resolved Path
    Time: 
      Ticks: 169741
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.96459490740741e-07
      TotalHours: 4.71502777777778e-06
      TotalMilliseconds: 16.9741
      TotalMinutes: 0.000282901666666667
      TotalSeconds: 0.0169741
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        GroupName: (Found Path)
    RelativeSpeed: 2.25264093852851
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 5891.3285535021
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: Test-Path
    Time: 
      Ticks: 255797
      Days: 0
      Hours: 0
      Milliseconds: 25
      Minutes: 0
      Seconds: 0
      TotalDays: 2.96061342592593e-07
      TotalHours: 7.10547222222222e-06
      TotalMilliseconds: 25.5797
      TotalMinutes: 0.000426328333333333
      TotalSeconds: 0.0255797
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        GroupName: (Found Path)
    RelativeSpeed: 3.3946942350568
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 3909.34999237677
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 65967
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.63506944444444e-08
      TotalHours: 1.83241666666667e-06
      TotalMilliseconds: 6.5967
      TotalMinutes: 0.000109945
      TotalSeconds: 0.0065967
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
    Throughput: 15159.0946988646
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
  - Technique: Test-Path
    Time: 
      Ticks: 243744
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.82111111111111e-07
      TotalHours: 6.77066666666667e-06
      TotalMilliseconds: 24.3744
      TotalMinutes: 0.00040624
      TotalSeconds: 0.0243744
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  Test-path $badFile
              
        GroupName: (Missing Path)
    RelativeSpeed: 3.69493837828005
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 4102.66509124327
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
  - Technique: Get Resolved Path
    Time: 
      Ticks: 562887
      Days: 0
      Hours: 0
      Milliseconds: 56
      Minutes: 0
      Seconds: 0
      TotalDays: 6.51489583333333e-07
      TotalHours: 1.563575e-05
      TotalMilliseconds: 56.2887
      TotalMinutes: 0.000938145
      TotalSeconds: 0.0562887
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        GroupName: (Missing Path)
    RelativeSpeed: 8.53285733775979
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 1776.55550758856
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
FileName: Checking If A File Exists
ClockSpeed: 2095
---


### (Found Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.007535|1x           |13271.05/s|
|Get Resolved Path|100        |00:00:00.016974|2.25x        |5891.33/s |
|Test-Path        |100        |00:00:00.025579|3.39x        |3909.35/s |


### (Missing Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.006596|1x           |15159.09/s|
|Test-Path        |100        |00:00:00.024374|3.69x        |4102.67/s |
|Get Resolved Path|100        |00:00:00.056288|8.53x        |1776.56/s |
