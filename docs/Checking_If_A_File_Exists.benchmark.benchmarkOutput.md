---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 130581
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.51135416666667e-07
      TotalHours: 3.62725e-06
      TotalMilliseconds: 13.0581
      TotalMinutes: 0.000217635
      TotalSeconds: 0.0130581
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 7658.0819567931
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: Test-Path
    Time: 
      Ticks: 379522
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.39261574074074e-07
      TotalHours: 1.05422777777778e-05
      TotalMilliseconds: 37.9522
      TotalMinutes: 0.000632536666666667
      TotalSeconds: 0.0379522
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 2.90641058040603
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 2634.89336586548
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: Get Resolved Path
    Time: 
      Ticks: 558865
      Days: 0
      Hours: 0
      Milliseconds: 55
      Minutes: 0
      Seconds: 0
      TotalDays: 6.46834490740741e-07
      TotalHours: 1.55240277777778e-05
      TotalMilliseconds: 55.8865
      TotalMinutes: 0.000931441666666667
      TotalSeconds: 0.0558865
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 4.27983397278318
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 1789.34089628086
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 103306
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.1956712962963e-07
      TotalHours: 2.86961111111111e-06
      TotalMilliseconds: 10.3306
      TotalMinutes: 0.000172176666666667
      TotalSeconds: 0.0103306
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 9679.97986564188
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
  - Technique: Test-Path
    Time: 
      Ticks: 432211
      Days: 0
      Hours: 0
      Milliseconds: 43
      Minutes: 0
      Seconds: 0
      TotalDays: 5.00244212962963e-07
      TotalHours: 1.20058611111111e-05
      TotalMilliseconds: 43.2211
      TotalMinutes: 0.000720351666666667
      TotalSeconds: 0.0432211
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $badFile
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 4.18379377770894
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 2313.68475119791
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
  - Technique: Get Resolved Path
    Time: 
      Ticks: 709838
      Days: 0
      Hours: 0
      Milliseconds: 70
      Minutes: 0
      Seconds: 0
      TotalDays: 8.21571759259259e-07
      TotalHours: 1.97177222222222e-05
      TotalMilliseconds: 70.9838
      TotalMinutes: 0.00118306333333333
      TotalSeconds: 0.0709838
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 6.8712175478675
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 1408.77214237615
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
FileName: Checking If A File Exists
ClockSpeed: 2295
---


### (Found Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.013058|1x           |7658.08/s |
|Test-Path        |100        |00:00:00.037952|2.91x        |2634.89/s |
|Get Resolved Path|100        |00:00:00.055886|4.28x        |1789.34/s |


### (Missing Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.010330|1x           |9679.98/s |
|Test-Path        |100        |00:00:00.043221|4.18x        |2313.68/s |
|Get Resolved Path|100        |00:00:00.070983|6.87x        |1408.77/s |
