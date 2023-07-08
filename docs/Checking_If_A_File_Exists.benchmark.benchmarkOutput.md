---
layout: Benchmark

Data: 
  - Technique: Get Resolved Path
    Time: 
      Ticks: 112839
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.30600694444444e-07
      TotalHours: 3.13441666666667e-06
      TotalMilliseconds: 11.2839
      TotalMinutes: 0.000188065
      TotalSeconds: 0.0112839
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        FileName: Checking If A File Exists
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 8862.1841739115
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 118122
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.36715277777778e-07
      TotalHours: 3.28116666666667e-06
      TotalMilliseconds: 11.8122
      TotalMinutes: 0.00019687
      TotalSeconds: 0.0118122
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        FileName: Checking If A File Exists
    RelativeSpeed: 1.04681891899077
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 8465.82347064899
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 238889
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.76491898148148e-07
      TotalHours: 6.63580555555556e-06
      TotalMilliseconds: 23.8889
      TotalMinutes: 0.000398148333333333
      TotalSeconds: 0.0238889
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        FileName: Checking If A File Exists
    RelativeSpeed: 2.11707831512155
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 4186.04456463044
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 57518
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.65717592592593e-08
      TotalHours: 1.59772222222222e-06
      TotalMilliseconds: 5.7518
      TotalMinutes: 9.58633333333333e-05
      TotalSeconds: 0.0057518
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
        FileName: Checking If A File Exists
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 17385.8618171703
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 454975
      Days: 0
      Hours: 0
      Milliseconds: 45
      Minutes: 0
      Seconds: 0
      TotalDays: 5.26591435185185e-07
      TotalHours: 1.26381944444444e-05
      TotalMilliseconds: 45.4975
      TotalMinutes: 0.000758291666666667
      TotalSeconds: 0.0454975
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        FileName: Checking If A File Exists
    RelativeSpeed: 7.91013248026705
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 2197.92296280015
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 462753
      Days: 0
      Hours: 0
      Milliseconds: 46
      Minutes: 0
      Seconds: 0
      TotalDays: 5.3559375e-07
      TotalHours: 1.285425e-05
      TotalMilliseconds: 46.2753
      TotalMinutes: 0.000771255
      TotalSeconds: 0.0462753
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  Test-path $badFile
              
        FileName: Checking If A File Exists
    RelativeSpeed: 8.045359713481
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 2160.98004767122
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2594
---
Checking If A File Exists
-------------------------
> @2594 Mhz


### (Found Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|Get Resolved Path|00:00:00.011283|1x           |8862.18/s |
|[IO.File]::Exists|00:00:00.011812|1.05x        |8465.82/s |
|Test-Path        |00:00:00.023888|2.12x        |4186.04/s |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.005751|1x           |17385.86/s|
|Get Resolved Path|00:00:00.045497|7.91x        |2197.92/s |
|Test-Path        |00:00:00.046275|8.05x        |2160.98/s |
