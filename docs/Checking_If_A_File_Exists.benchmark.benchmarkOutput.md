---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 83701
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.68761574074074e-08
      TotalHours: 2.32502777777778e-06
      TotalMilliseconds: 8.3701
      TotalMinutes: 0.000139501666666667
      TotalSeconds: 0.0083701
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Found Path)
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 11947.2885628607
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 136969
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.58528935185185e-07
      TotalHours: 3.80469444444444e-06
      TotalMilliseconds: 13.6969
      TotalMinutes: 0.000228281666666667
      TotalSeconds: 0.0136969
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Found Path)
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
    RelativeSpeed: 1.63640816716646
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 7300.92210646205
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 283725
      Days: 0
      Hours: 0
      Milliseconds: 28
      Minutes: 0
      Seconds: 0
      TotalDays: 3.28385416666667e-07
      TotalHours: 7.88125e-06
      TotalMilliseconds: 28.3725
      TotalMinutes: 0.000472875
      TotalSeconds: 0.0283725
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Found Path)
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
    RelativeSpeed: 3.38974444749764
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 3524.53960701383
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 71581
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.28483796296296e-08
      TotalHours: 1.98836111111111e-06
      TotalMilliseconds: 7.1581
      TotalMinutes: 0.000119301666666667
      TotalSeconds: 0.0071581
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 13970.1876196197
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 271620
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.14375e-07
      TotalHours: 7.545e-06
      TotalMilliseconds: 27.162
      TotalMinutes: 0.0004527
      TotalSeconds: 0.027162
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  Test-path $badFile
              
    RelativeSpeed: 3.79458236124111
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 3681.61401958619
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 563515
      Days: 0
      Hours: 0
      Milliseconds: 56
      Minutes: 0
      Seconds: 0
      TotalDays: 6.52216435185185e-07
      TotalHours: 1.56531944444444e-05
      TotalMilliseconds: 56.3515
      TotalMinutes: 0.000939191666666667
      TotalSeconds: 0.0563515
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
    RelativeSpeed: 7.87241027647001
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 1774.57565459659
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2095
---


### (Found Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.008370|1x           |11947.29/s|
|Get Resolved Path|100        |00:00:00.013696|1.64x        |7300.92/s |
|Test-Path        |100        |00:00:00.028372|3.39x        |3524.54/s |


### (Missing Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.007158|1x           |13970.19/s|
|Test-Path        |100        |00:00:00.027162|3.79x        |3681.61/s |
|Get Resolved Path|100        |00:00:00.056351|7.87x        |1774.58/s |
