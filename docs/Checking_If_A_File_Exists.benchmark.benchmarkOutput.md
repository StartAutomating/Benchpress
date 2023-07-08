---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 162282
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.87826388888889e-07
      TotalHours: 4.50783333333333e-06
      TotalMilliseconds: 16.2282
      TotalMinutes: 0.00027047
      TotalSeconds: 0.0162282
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2397
    FileName: Checking If A File Exists
    Throughput: 6162.11286525924
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 190613
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.20616898148148e-07
      TotalHours: 5.29480555555556e-06
      TotalMilliseconds: 19.0613
      TotalMinutes: 0.000317688333333333
      TotalSeconds: 0.0190613
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 1.17457881958566
    GroupName: (Found Path)
    ClockSpeed: 2397
    FileName: Checking If A File Exists
    Throughput: 5246.23189394218
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 375408
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.345e-07
      TotalHours: 1.0428e-05
      TotalMilliseconds: 37.5408
      TotalMinutes: 0.00062568
      TotalSeconds: 0.0375408
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 2.31330646652124
    GroupName: (Found Path)
    ClockSpeed: 2397
    FileName: Checking If A File Exists
    Throughput: 2663.7684865533
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 101945
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.17991898148148e-07
      TotalHours: 2.83180555555556e-06
      TotalMilliseconds: 10.1945
      TotalMinutes: 0.000169908333333333
      TotalSeconds: 0.0101945
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2397
    FileName: Checking If A File Exists
    Throughput: 9809.2108489872
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 380281
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 0
      TotalDays: 4.40140046296296e-07
      TotalHours: 1.05633611111111e-05
      TotalMilliseconds: 38.0281
      TotalMinutes: 0.000633801666666667
      TotalSeconds: 0.0380281
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $badFile
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 3.7302565108637
    GroupName: (Missing Path)
    ClockSpeed: 2397
    FileName: Checking If A File Exists
    Throughput: 2629.6344019291
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 791568
      Days: 0
      Hours: 0
      Milliseconds: 79
      Minutes: 0
      Seconds: 0
      TotalDays: 9.16166666666667e-07
      TotalHours: 2.1988e-05
      TotalMilliseconds: 79.1568
      TotalMinutes: 0.00131928
      TotalSeconds: 0.0791568
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 7.7646574133111
    GroupName: (Missing Path)
    ClockSpeed: 2397
    FileName: Checking If A File Exists
    Throughput: 1263.31534372284
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2397
---


### (Found Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.016228|1x           |6162.11/s |
|Get Resolved Path|00:00:00.019061|1.17x        |5246.23/s |
|Test-Path        |00:00:00.037540|2.31x        |2663.77/s |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.010194|1x           |9809.21/s |
|Test-Path        |00:00:00.038028|3.73x        |2629.63/s |
|Get Resolved Path|00:00:00.079156|7.76x        |1263.32/s |
