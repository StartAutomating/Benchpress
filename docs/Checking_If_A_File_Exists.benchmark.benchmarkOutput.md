---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 69380
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 8.03009259259259e-08
      TotalHours: 1.92722222222222e-06
      TotalMilliseconds: 6.938
      TotalMinutes: 0.000115633333333333
      TotalSeconds: 0.006938
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        GroupName: (Found Path)
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 14413.3756125685
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 113564
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.31439814814815e-07
      TotalHours: 3.15455555555556e-06
      TotalMilliseconds: 11.3564
      TotalMinutes: 0.000189273333333333
      TotalSeconds: 0.0113564
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        GroupName: (Found Path)
    RelativeSpeed: 1.63684058806573
    GroupName: (Found Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 8805.6074107992
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 235112
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.7212037037037e-07
      TotalHours: 6.53088888888889e-06
      TotalMilliseconds: 23.5112
      TotalMinutes: 0.000391853333333333
      TotalSeconds: 0.0235112
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        GroupName: (Found Path)
    RelativeSpeed: 3.3887575670222
    GroupName: (Found Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 4253.29204804519
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 114465
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.32482638888889e-07
      TotalHours: 3.17958333333333e-06
      TotalMilliseconds: 11.4465
      TotalMinutes: 0.000190775
      TotalSeconds: 0.0114465
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
        GroupName: (Missing Path)
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 8736.29493731708
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 233139
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.69836805555556e-07
      TotalHours: 6.47608333333333e-06
      TotalMilliseconds: 23.3139
      TotalMinutes: 0.000388565
      TotalSeconds: 0.0233139
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  Test-path $badFile
              
        GroupName: (Missing Path)
    RelativeSpeed: 2.03677106539117
    GroupName: (Missing Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 4289.28664873745
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 412736
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.77703703703704e-07
      TotalHours: 1.14648888888889e-05
      TotalMilliseconds: 41.2736
      TotalMinutes: 0.000687893333333333
      TotalSeconds: 0.0412736
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        GroupName: (Missing Path)
    RelativeSpeed: 3.6057834272485
    GroupName: (Missing Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 2422.856256784
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2793
---


### (Found Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.006938|1x           |14413.38/s|
|Get Resolved Path|00:00:00.011356|1.64x        |8805.61/s |
|Test-Path        |00:00:00.023511|3.39x        |4253.29/s |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.011446|1x           |8736.29/s |
|Test-Path        |00:00:00.023313|2.04x        |4289.29/s |
|Get Resolved Path|00:00:00.041273|3.61x        |2422.86/s |
