---
layout: Benchmark
title: Checking If A File Exists

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 66993
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.75381944444444e-08
      TotalHours: 1.86091666666667e-06
      TotalMilliseconds: 6.6993
      TotalMinutes: 0.000111655
      TotalSeconds: 0.0066993
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
    RepeatCount: 100
    Throughput: 14926.9326646067
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 113072
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.3087037037037e-07
      TotalHours: 3.14088888888889e-06
      TotalMilliseconds: 11.3072
      TotalMinutes: 0.000188453333333333
      TotalSeconds: 0.0113072
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 1.68781813025241
    GroupName: (Found Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 8843.9224564879
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 234100
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.70949074074074e-07
      TotalHours: 6.50277777777778e-06
      TotalMilliseconds: 23.41
      TotalMinutes: 0.000390166666666667
      TotalSeconds: 0.02341
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 3.49439493678444
    GroupName: (Found Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 4271.67876975651
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 56746
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.56782407407407e-08
      TotalHours: 1.57627777777778e-06
      TotalMilliseconds: 5.6746
      TotalMinutes: 9.45766666666667e-05
      TotalSeconds: 0.0056746
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
    RepeatCount: 100
    Throughput: 17622.3874810559
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 231217
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.67612268518519e-07
      TotalHours: 6.42269444444444e-06
      TotalMilliseconds: 23.1217
      TotalMinutes: 0.000385361666666667
      TotalSeconds: 0.0231217
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $badFile
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 4.07459556620731
    GroupName: (Missing Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 4324.94150516614
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 466976
      Days: 0
      Hours: 0
      Milliseconds: 46
      Minutes: 0
      Seconds: 0
      TotalDays: 5.40481481481481e-07
      TotalHours: 1.29715555555556e-05
      TotalMilliseconds: 46.6976
      TotalMinutes: 0.000778293333333333
      TotalSeconds: 0.0466976
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 8.22923201635358
    GroupName: (Missing Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    RepeatCount: 100
    Throughput: 2141.43767559789
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2793
---


### (Found Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.006699|1x           |14926.93/s|
|Get Resolved Path|00:00:00.011307|1.69x        |8843.92/s |
|Test-Path        |00:00:00.023410|3.49x        |4271.68/s |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.005674|1x           |17622.39/s|
|Test-Path        |00:00:00.023121|4.07x        |4324.94/s |
|Get Resolved Path|00:00:00.046697|8.23x        |2141.44/s |
