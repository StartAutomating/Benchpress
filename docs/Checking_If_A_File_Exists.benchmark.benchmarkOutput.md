---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 86803
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.00466435185185e-07
      TotalHours: 2.41119444444444e-06
      TotalMilliseconds: 8.6803
      TotalMinutes: 0.000144671666666667
      TotalSeconds: 0.0086803
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
    RepeatCount: 100
    Throughput: 11520.3391587848
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: Get Resolved Path
    Time: 
      Ticks: 136523
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.58012731481481e-07
      TotalHours: 3.79230555555556e-06
      TotalMilliseconds: 13.6523
      TotalMinutes: 0.000227538333333333
      TotalSeconds: 0.0136523
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
    RelativeSpeed: 1.57279126297478
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 7324.77311515276
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: Test-Path
    Time: 
      Ticks: 283815
      Days: 0
      Hours: 0
      Milliseconds: 28
      Minutes: 0
      Seconds: 0
      TotalDays: 3.28489583333333e-07
      TotalHours: 7.88375e-06
      TotalMilliseconds: 28.3815
      TotalMinutes: 0.000473025
      TotalSeconds: 0.0283815
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
    RelativeSpeed: 3.26964505835052
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 3523.42194739531
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Found Path)
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 70964
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.21342592592593e-08
      TotalHours: 1.97122222222222e-06
      TotalMilliseconds: 7.0964
      TotalMinutes: 0.000118273333333333
      TotalSeconds: 0.0070964
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
    RepeatCount: 100
    Throughput: 14091.6521052928
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
  - Technique: Test-Path
    Time: 
      Ticks: 313331
      Days: 0
      Hours: 0
      Milliseconds: 31
      Minutes: 0
      Seconds: 0
      TotalDays: 3.6265162037037e-07
      TotalHours: 8.70363888888889e-06
      TotalMilliseconds: 31.3331
      TotalMinutes: 0.000522218333333333
      TotalSeconds: 0.0313331
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  Test-path $badFile
              
    RelativeSpeed: 4.41535144580351
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 3191.51312828925
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
  - Technique: Get Resolved Path
    Time: 
      Ticks: 551710
      Days: 0
      Hours: 0
      Milliseconds: 55
      Minutes: 0
      Seconds: 0
      TotalDays: 6.38553240740741e-07
      TotalHours: 1.53252777777778e-05
      TotalMilliseconds: 55.171
      TotalMinutes: 0.000919516666666667
      TotalSeconds: 0.055171
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
    RelativeSpeed: 7.7745053830111
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 1812.54644650269
    BenchmarkInput: 
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
FileName: Checking If A File Exists
ClockSpeed: 2095
---


### (Found Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.008680|1x           |11520.34/s|
|Get Resolved Path|100        |00:00:00.013652|1.57x        |7324.77/s |
|Test-Path        |100        |00:00:00.028381|3.27x        |3523.42/s |


### (Missing Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.007096|1x           |14091.65/s|
|Test-Path        |100        |00:00:00.031333|4.42x        |3191.51/s |
|Get Resolved Path|100        |00:00:00.055171|7.77x        |1812.55/s |
