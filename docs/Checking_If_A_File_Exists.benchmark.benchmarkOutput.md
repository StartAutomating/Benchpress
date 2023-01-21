---
layout: Benchmark

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 83228
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.63287037037037e-08
      TotalHours: 2.31188888888889e-06
      TotalMilliseconds: 8.3228
      TotalMinutes: 0.000138713333333333
      TotalSeconds: 0.0083228
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 12015.1871966165
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 115068
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.33180555555556e-07
      TotalHours: 3.19633333333333e-06
      TotalMilliseconds: 11.5068
      TotalMinutes: 0.00019178
      TotalSeconds: 0.0115068
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 1.38256356034027
    GroupName: (Found Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 8690.51343553377
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 476327
      Days: 0
      Hours: 0
      Milliseconds: 47
      Minutes: 0
      Seconds: 0
      TotalDays: 5.51304398148148e-07
      TotalHours: 1.32313055555556e-05
      TotalMilliseconds: 47.6327
      TotalMinutes: 0.000793878333333333
      TotalSeconds: 0.0476327
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        FileName: Checking If A File Exists
        GroupName: (Found Path)
    RelativeSpeed: 5.72315807180276
    GroupName: (Found Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 2099.398102564
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 61170
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.07986111111111e-08
      TotalHours: 1.69916666666667e-06
      TotalMilliseconds: 6.117
      TotalMinutes: 0.00010195
      TotalSeconds: 0.006117
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 16347.8829491581
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 229267
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.65355324074074e-07
      TotalHours: 6.36852777777778e-06
      TotalMilliseconds: 22.9267
      TotalMinutes: 0.000382111666666667
      TotalSeconds: 0.0229267
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $badFile
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 3.74803008010463
    GroupName: (Missing Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 4361.72672037406
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 751347
      Days: 0
      Hours: 0
      Milliseconds: 75
      Minutes: 0
      Seconds: 0
      TotalDays: 8.69614583333333e-07
      TotalHours: 2.087075e-05
      TotalMilliseconds: 75.1347
      TotalMinutes: 0.001252245
      TotalSeconds: 0.0751347
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        FileName: Checking If A File Exists
        GroupName: (Missing Path)
    RelativeSpeed: 12.2829328102011
    GroupName: (Missing Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 1330.94295977757
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
|[IO.File]::Exists|00:00:00.008322|1x           |12015.19/s|
|Get Resolved Path|00:00:00.011506|1.38x        |8690.51/s |
|Test-Path        |00:00:00.047632|5.72x        |2099.4/s  |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.006117|1x           |16347.88/s|
|Test-Path        |00:00:00.022926|3.75x        |4361.73/s |
|Get Resolved Path|00:00:00.075134|12.28x       |1330.94/s |
