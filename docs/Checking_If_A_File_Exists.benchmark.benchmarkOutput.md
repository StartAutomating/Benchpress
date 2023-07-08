---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: Get Resolved Path
    Time: 
      Ticks: 113400
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.3125e-07
      TotalHours: 3.15e-06
      TotalMilliseconds: 11.34
      TotalMinutes: 0.000189
      TotalSeconds: 0.01134
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Found Path)
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 8818.34215167549
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 138113
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.59853009259259e-07
      TotalHours: 3.83647222222222e-06
      TotalMilliseconds: 13.8113
      TotalMinutes: 0.000230188333333333
      TotalSeconds: 0.0138113
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Found Path)
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
    RelativeSpeed: 1.21792768959436
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 7240.44803892465
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 242959
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.81202546296296e-07
      TotalHours: 6.74886111111111e-06
      TotalMilliseconds: 24.2959
      TotalMinutes: 0.000404931666666667
      TotalSeconds: 0.0242959
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Found Path)
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
    RelativeSpeed: 2.14249559082892
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 4115.92079322026
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 58537
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.77511574074074e-08
      TotalHours: 1.62602777777778e-06
      TotalMilliseconds: 5.8537
      TotalMinutes: 9.75616666666667e-05
      TotalSeconds: 0.0058537
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 17083.212327246
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 240316
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.78143518518519e-07
      TotalHours: 6.67544444444444e-06
      TotalMilliseconds: 24.0316
      TotalMinutes: 0.000400526666666667
      TotalSeconds: 0.0240316
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  Test-path $badFile
              
    RelativeSpeed: 4.10536925363445
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 4161.18776943691
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 563505
      Days: 0
      Hours: 0
      Milliseconds: 56
      Minutes: 0
      Seconds: 0
      TotalDays: 6.52204861111111e-07
      TotalHours: 1.56529166666667e-05
      TotalMilliseconds: 56.3505
      TotalMinutes: 0.000939175
      TotalSeconds: 0.0563505
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
    RelativeSpeed: 9.62647556246477
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 1774.60714634298
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2594
---


### (Found Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|Get Resolved Path|100        |00:00:00.011340|1x           |8818.34/s |
|[IO.File]::Exists|100        |00:00:00.013811|1.22x        |7240.45/s |
|Test-Path        |100        |00:00:00.024295|2.14x        |4115.92/s |


### (Missing Path)


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|[IO.File]::Exists|100        |00:00:00.005853|1x           |17083.21/s|
|Test-Path        |100        |00:00:00.024031|4.11x        |4161.19/s |
|Get Resolved Path|100        |00:00:00.056350|9.63x        |1774.61/s |
