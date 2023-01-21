---
layout: Benchmark

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 80726
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.34328703703704e-08
      TotalHours: 2.24238888888889e-06
      TotalMilliseconds: 8.0726
      TotalMinutes: 0.000134543333333333
      TotalSeconds: 0.0080726
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    Throughput: 12387.5826871144
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 136526
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.58016203703704e-07
      TotalHours: 3.79238888888889e-06
      TotalMilliseconds: 13.6526
      TotalMinutes: 0.000227543333333333
      TotalSeconds: 0.0136526
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
    RelativeSpeed: 1.69122711394099
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    Throughput: 7324.61216178603
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 331254
      Days: 0
      Hours: 0
      Milliseconds: 33
      Minutes: 0
      Seconds: 0
      TotalDays: 3.83395833333333e-07
      TotalHours: 9.2015e-06
      TotalMilliseconds: 33.1254
      TotalMinutes: 0.00055209
      TotalSeconds: 0.0331254
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
    RelativeSpeed: 4.10343631543741
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    Throughput: 3018.83147071432
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 67878
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.85625e-08
      TotalHours: 1.8855e-06
      TotalMilliseconds: 6.7878
      TotalMinutes: 0.00011313
      TotalSeconds: 0.0067878
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    Throughput: 14732.3138572144
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 348179
      Days: 0
      Hours: 0
      Milliseconds: 34
      Minutes: 0
      Seconds: 0
      TotalDays: 4.02984953703704e-07
      TotalHours: 9.67163888888889e-06
      TotalMilliseconds: 34.8179
      TotalMinutes: 0.000580298333333333
      TotalSeconds: 0.0348179
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  Test-path $badFile
              
    RelativeSpeed: 5.12948230649106
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    Throughput: 2872.08590983374
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 899057
      Days: 0
      Hours: 0
      Milliseconds: 89
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04057523148148e-06
      TotalHours: 2.49738055555556e-05
      TotalMilliseconds: 89.9057
      TotalMinutes: 0.00149842833333333
      TotalSeconds: 0.0899057
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
    RelativeSpeed: 13.2451898995256
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    Throughput: 1112.27652974172
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2095
---
Checking If A File Exists
-------------------------
> @2095 Mhz


### (Found Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.008072|1x           |12387.58/s|
|Get Resolved Path|00:00:00.013652|1.69x        |7324.61/s |
|Test-Path        |00:00:00.033125|4.1x         |3018.83/s |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.006787|1x           |14732.31/s|
|Test-Path        |00:00:00.034817|5.13x        |2872.09/s |
|Get Resolved Path|00:00:00.089905|13.25x       |1112.28/s |
