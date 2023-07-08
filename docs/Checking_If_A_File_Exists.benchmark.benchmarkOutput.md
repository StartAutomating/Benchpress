---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 67973
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.86724537037037e-08
      TotalHours: 1.88813888888889e-06
      TotalMilliseconds: 6.7973
      TotalMinutes: 0.000113288333333333
      TotalSeconds: 0.0067973
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 14711.7237726744
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 112938
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.30715277777778e-07
      TotalHours: 3.13716666666667e-06
      TotalMilliseconds: 11.2938
      TotalMinutes: 0.00018823
      TotalSeconds: 0.0112938
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 1.66151265943831
    GroupName: (Found Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 8854.41569710815
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 235305
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.7234375e-07
      TotalHours: 6.53625e-06
      TotalMilliseconds: 23.5305
      TotalMinutes: 0.000392175
      TotalSeconds: 0.0235305
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 3.46174216232916
    GroupName: (Found Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 4249.8034465906
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 55693
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.44594907407407e-08
      TotalHours: 1.54702777777778e-06
      TotalMilliseconds: 5.5693
      TotalMinutes: 9.28216666666667e-05
      TotalSeconds: 0.0055693
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 17955.5779002747
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 231309
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.6771875e-07
      TotalHours: 6.42525e-06
      TotalMilliseconds: 23.1309
      TotalMinutes: 0.000385515
      TotalSeconds: 0.0231309
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $badFile
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 4.15328676853465
    GroupName: (Missing Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 4323.22131866897
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 432967
      Days: 0
      Hours: 0
      Milliseconds: 43
      Minutes: 0
      Seconds: 0
      TotalDays: 5.01119212962963e-07
      TotalHours: 1.20268611111111e-05
      TotalMilliseconds: 43.2967
      TotalMinutes: 0.000721611666666667
      TotalSeconds: 0.0432967
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 7.77417269674824
    GroupName: (Missing Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 2309.64484591204
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2793
---
Checking If A File Exists
-------------------------
> @2793 Mhz


### (Found Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.006797|1x           |14711.72/s|
|Get Resolved Path|00:00:00.011293|1.66x        |8854.42/s |
|Test-Path        |00:00:00.023530|3.46x        |4249.8/s  |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.005569|1x           |17955.58/s|
|Test-Path        |00:00:00.023130|4.15x        |4323.22/s |
|Get Resolved Path|00:00:00.043296|7.77x        |2309.64/s |
