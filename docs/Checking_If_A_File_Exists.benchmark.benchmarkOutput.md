---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 101464
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.17435185185185e-07
      TotalHours: 2.81844444444444e-06
      TotalMilliseconds: 10.1464
      TotalMinutes: 0.000169106666666667
      TotalSeconds: 0.0101464
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
    Throughput: 9855.71237089017
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 167587
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.93966435185185e-07
      TotalHours: 4.65519444444444e-06
      TotalMilliseconds: 16.7587
      TotalMinutes: 0.000279311666666667
      TotalSeconds: 0.0167587
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 1.65168926910037
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 5967.04995017513
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 357292
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.13532407407407e-07
      TotalHours: 9.92477777777778e-06
      TotalMilliseconds: 35.7292
      TotalMinutes: 0.000595486666666667
      TotalSeconds: 0.0357292
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 3.52136718442009
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 2798.8312080875
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 159838
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.84997685185185e-07
      TotalHours: 4.43994444444444e-06
      TotalMilliseconds: 15.9838
      TotalMinutes: 0.000266396666666667
      TotalSeconds: 0.0159838
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
    Throughput: 6256.33453872045
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 341268
      Days: 0
      Hours: 0
      Milliseconds: 34
      Minutes: 0
      Seconds: 0
      TotalDays: 3.94986111111111e-07
      TotalHours: 9.47966666666667e-06
      TotalMilliseconds: 34.1268
      TotalMinutes: 0.00056878
      TotalSeconds: 0.0341268
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $badFile
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 2.13508677536005
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 2930.24836785166
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 614043
      Days: 0
      Hours: 0
      Milliseconds: 61
      Minutes: 0
      Seconds: 0
      TotalDays: 7.10697916666667e-07
      TotalHours: 1.705675e-05
      TotalMilliseconds: 61.4043
      TotalMinutes: 0.001023405
      TotalSeconds: 0.0614043
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 3.84165842915952
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 1628.55044353571
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2295
---
Checking If A File Exists
-------------------------
> @2295 Mhz


### (Found Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.010146|1x           |9855.71/s |
|Get Resolved Path|00:00:00.016758|1.65x        |5967.05/s |
|Test-Path        |00:00:00.035729|3.52x        |2798.83/s |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.015983|1x           |6256.33/s |
|Test-Path        |00:00:00.034126|2.14x        |2930.25/s |
|Get Resolved Path|00:00:00.061404|3.84x        |1628.55/s |
