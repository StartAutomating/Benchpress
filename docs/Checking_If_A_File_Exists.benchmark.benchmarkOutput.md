---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 71794
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.30949074074074e-08
      TotalHours: 1.99427777777778e-06
      TotalMilliseconds: 7.1794
      TotalMinutes: 0.000119656666666667
      TotalSeconds: 0.0071794
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        FileName: Checking If A File Exists
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 13928.7405632783
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 113488
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.31351851851852e-07
      TotalHours: 3.15244444444444e-06
      TotalMilliseconds: 11.3488
      TotalMinutes: 0.000189146666666667
      TotalSeconds: 0.0113488
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        FileName: Checking If A File Exists
    RelativeSpeed: 1.58074490904532
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 8811.5043000141
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 241888
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.79962962962963e-07
      TotalHours: 6.71911111111111e-06
      TotalMilliseconds: 24.1888
      TotalMinutes: 0.000403146666666667
      TotalSeconds: 0.0241888
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        FileName: Checking If A File Exists
    RelativeSpeed: 3.36919519737025
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 4134.14472813864
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 60929
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.05196759259259e-08
      TotalHours: 1.69247222222222e-06
      TotalMilliseconds: 6.0929
      TotalMinutes: 0.000101548333333333
      TotalSeconds: 0.0060929
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
    Throughput: 16412.5457499713
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 261343
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 0
      TotalDays: 3.02480324074074e-07
      TotalHours: 7.25952777777778e-06
      TotalMilliseconds: 26.1343
      TotalMinutes: 0.000435571666666667
      TotalSeconds: 0.0261343
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  Test-path $badFile
              
        FileName: Checking If A File Exists
    RelativeSpeed: 4.28930394393474
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 3826.38907489391
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 465799
      Days: 0
      Hours: 0
      Milliseconds: 46
      Minutes: 0
      Seconds: 0
      TotalDays: 5.39119212962963e-07
      TotalHours: 1.29388611111111e-05
      TotalMilliseconds: 46.5799
      TotalMinutes: 0.000776331666666667
      TotalSeconds: 0.0465799
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        FileName: Checking If A File Exists
    RelativeSpeed: 7.64494739779087
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 2146.84874806515
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2594
---


### (Found Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.007179|1x           |13928.74/s|
|Get Resolved Path|00:00:00.011348|1.58x        |8811.5/s  |
|Test-Path        |00:00:00.024188|3.37x        |4134.14/s |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.006092|1x           |16412.55/s|
|Test-Path        |00:00:00.026134|4.29x        |3826.39/s |
|Get Resolved Path|00:00:00.046579|7.64x        |2146.85/s |
