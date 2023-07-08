---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 101178
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.17104166666667e-07
      TotalHours: 2.8105e-06
      TotalMilliseconds: 10.1178
      TotalMinutes: 0.00016863
      TotalSeconds: 0.0101178
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 9883.57152740714
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: Get Resolved Path
    Time: 
      Ticks: 170532
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 1.97375e-07
      TotalHours: 4.737e-06
      TotalMilliseconds: 17.0532
      TotalMinutes: 0.00028422
      TotalSeconds: 0.0170532
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 1.68546521971179
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 5864.00206412873
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: Test-Path
    Time: 
      Ticks: 353728
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.09407407407407e-07
      TotalHours: 9.82577777777778e-06
      TotalMilliseconds: 35.3728
      TotalMinutes: 0.000589546666666667
      TotalSeconds: 0.0353728
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 3.49609598924667
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 2827.0309390266
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 92332
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.06865740740741e-07
      TotalHours: 2.56477777777778e-06
      TotalMilliseconds: 9.2332
      TotalMinutes: 0.000153886666666667
      TotalSeconds: 0.0092332
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 10830.4813065893
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
  - Technique: Test-Path
    Time: 
      Ticks: 350161
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.05278935185185e-07
      TotalHours: 9.72669444444445e-06
      TotalMilliseconds: 35.0161
      TotalMinutes: 0.000583601666666667
      TotalSeconds: 0.0350161
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $badFile
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 3.7924121647966
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 2855.82917572202
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
  - Technique: Get Resolved Path
    Time: 
      Ticks: 705181
      Days: 0
      Hours: 0
      Milliseconds: 70
      Minutes: 0
      Seconds: 0
      TotalDays: 8.16181712962963e-07
      TotalHours: 1.95883611111111e-05
      TotalMilliseconds: 70.5181
      TotalMinutes: 0.00117530166666667
      TotalSeconds: 0.0705181
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 7.63744963826192
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 1418.07564299095
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
FileName: Checking If A File Exists
ClockSpeed: 2295
---


### (Found Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.010117|1x           |9883.57/s |
|Get Resolved Path|100        |00:00:00.017053|1.69x        |5864/s    |
|Test-Path        |100        |00:00:00.035372|3.5x         |2827.03/s |


### (Missing Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.009233|1x           |10830.48/s|
|Test-Path        |100        |00:00:00.035016|3.79x        |2855.83/s |
|Get Resolved Path|100        |00:00:00.070518|7.64x        |1418.08/s |
