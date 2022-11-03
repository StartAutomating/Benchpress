---
layout: Benchmark

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 76212
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.82083333333333e-08
      TotalHours: 2.117e-06
      TotalMilliseconds: 7.6212
      TotalMinutes: 0.00012702
      TotalSeconds: 0.0076212
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        GroupName: (Found Path)
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 13121.2932346612
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 126967
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.46952546296296e-07
      TotalHours: 3.52686111111111e-06
      TotalMilliseconds: 12.6967
      TotalMinutes: 0.000211611666666667
      TotalSeconds: 0.0126967
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        GroupName: (Found Path)
    RelativeSpeed: 1.66597123812523
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 7876.06228390054
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 546624
      Days: 0
      Hours: 0
      Milliseconds: 54
      Minutes: 0
      Seconds: 0
      TotalDays: 6.32666666666667e-07
      TotalHours: 1.5184e-05
      TotalMilliseconds: 54.6624
      TotalMinutes: 0.00091104
      TotalSeconds: 0.0546624
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        GroupName: (Found Path)
    RelativeSpeed: 7.17241379310345
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 1829.41107598642
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 65584
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.59074074074074e-08
      TotalHours: 1.82177777777778e-06
      TotalMilliseconds: 6.5584
      TotalMinutes: 0.000109306666666667
      TotalSeconds: 0.0065584
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
        GroupName: (Missing Path)
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 15247.6213710661
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 280613
      Days: 0
      Hours: 0
      Milliseconds: 28
      Minutes: 0
      Seconds: 0
      TotalDays: 3.24783564814815e-07
      TotalHours: 7.79480555555555e-06
      TotalMilliseconds: 28.0613
      TotalMinutes: 0.000467688333333333
      TotalSeconds: 0.0280613
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  Test-path $badFile
              
        GroupName: (Missing Path)
    RelativeSpeed: 4.27868077579898
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 3563.62677424068
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 1255440
      Days: 0
      Hours: 0
      Milliseconds: 125
      Minutes: 0
      Seconds: 0
      TotalDays: 1.45305555555556e-06
      TotalHours: 3.48733333333333e-05
      TotalMilliseconds: 125.544
      TotalMinutes: 0.0020924
      TotalSeconds: 0.125544
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        GroupName: (Missing Path)
    RelativeSpeed: 19.1424737740912
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 796.533486267763
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
|[IO.File]::Exists|00:00:00.007621|1x           |13121.29/s|
|Get Resolved Path|00:00:00.012696|1.67x        |7876.06/s |
|Test-Path        |00:00:00.054662|7.17x        |1829.41/s |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.006558|1x           |15247.62/s|
|Test-Path        |00:00:00.028061|4.28x        |3563.63/s |
|Get Resolved Path|00:00:00.125544|19.14x       |796.53/s  |
