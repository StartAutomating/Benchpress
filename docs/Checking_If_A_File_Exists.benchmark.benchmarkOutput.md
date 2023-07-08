---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 77031
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.915625e-08
      TotalHours: 2.13975e-06
      TotalMilliseconds: 7.7031
      TotalMinutes: 0.000128385
      TotalSeconds: 0.0077031
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
    Throughput: 12981.7865534655
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: Get Resolved Path
    Time: 
      Ticks: 125483
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.45234953703704e-07
      TotalHours: 3.48563888888889e-06
      TotalMilliseconds: 12.5483
      TotalMinutes: 0.000209138333333333
      TotalSeconds: 0.0125483
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 1.62899352208851
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 7969.206984213
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: Test-Path
    Time: 
      Ticks: 263045
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 0
      TotalDays: 3.04450231481481e-07
      TotalHours: 7.30680555555556e-06
      TotalMilliseconds: 26.3045
      TotalMinutes: 0.000438408333333333
      TotalSeconds: 0.0263045
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 3.41479404395633
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 3801.63089965595
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 65371
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.56608796296296e-08
      TotalHours: 1.81586111111111e-06
      TotalMilliseconds: 6.5371
      TotalMinutes: 0.000108951666666667
      TotalSeconds: 0.0065371
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
    Throughput: 15297.303085466
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
  - Technique: Test-Path
    Time: 
      Ticks: 260959
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 0
      TotalDays: 3.0203587962963e-07
      TotalHours: 7.24886111111111e-06
      TotalMilliseconds: 26.0959
      TotalMinutes: 0.000434931666666667
      TotalSeconds: 0.0260959
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $badFile
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 3.99196891588013
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 3832.01958928414
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
  - Technique: Get Resolved Path
    Time: 
      Ticks: 501472
      Days: 0
      Hours: 0
      Milliseconds: 50
      Minutes: 0
      Seconds: 0
      TotalDays: 5.80407407407407e-07
      TotalHours: 1.39297777777778e-05
      TotalMilliseconds: 50.1472
      TotalMinutes: 0.000835786666666667
      TotalSeconds: 0.0501472
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 7.67116917287482
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 1994.1292833897
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
FileName: Checking If A File Exists
ClockSpeed: 2594
---


### (Found Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.007703|1x           |12981.79/s|
|Get Resolved Path|100        |00:00:00.012548|1.63x        |7969.21/s |
|Test-Path        |100        |00:00:00.026304|3.41x        |3801.63/s |


### (Missing Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.006537|1x           |15297.3/s |
|Test-Path        |100        |00:00:00.026095|3.99x        |3832.02/s |
|Get Resolved Path|100        |00:00:00.050147|7.67x        |1994.13/s |
