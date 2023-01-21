---
layout: Benchmark

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 71623
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.28969907407407e-08
      TotalHours: 1.98952777777778e-06
      TotalMilliseconds: 7.1623
      TotalMinutes: 0.000119371666666667
      TotalSeconds: 0.0071623
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        FileName: Checking If A File Exists
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 13961.9954483895
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 134591
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.5577662037037e-07
      TotalHours: 3.73863888888889e-06
      TotalMilliseconds: 13.4591
      TotalMinutes: 0.000224318333333333
      TotalSeconds: 0.0134591
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        FileName: Checking If A File Exists
    RelativeSpeed: 1.87915892939419
    GroupName: (Found Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 7429.9173050204
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 482133
      Days: 0
      Hours: 0
      Milliseconds: 48
      Minutes: 0
      Seconds: 0
      TotalDays: 5.58024305555556e-07
      TotalHours: 1.33925833333333e-05
      TotalMilliseconds: 48.2133
      TotalMinutes: 0.000803555
      TotalSeconds: 0.0482133
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        FileName: Checking If A File Exists
    RelativeSpeed: 6.73153875151837
    GroupName: (Found Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 2074.11647823318
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 59208
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.85277777777778e-08
      TotalHours: 1.64466666666667e-06
      TotalMilliseconds: 5.9208
      TotalMinutes: 9.868e-05
      TotalSeconds: 0.0059208
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
        FileName: Checking If A File Exists
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 16889.6095122281
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 265203
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 0
      TotalDays: 3.06947916666667e-07
      TotalHours: 7.36675e-06
      TotalMilliseconds: 26.5203
      TotalMinutes: 0.000442005
      TotalSeconds: 0.0265203
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  Test-path $badFile
              
        FileName: Checking If A File Exists
    RelativeSpeed: 4.47917511147142
    GroupName: (Missing Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 3770.69640991995
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 719830
      Days: 0
      Hours: 0
      Milliseconds: 71
      Minutes: 0
      Seconds: 0
      TotalDays: 8.33136574074074e-07
      TotalHours: 1.99952777777778e-05
      TotalMilliseconds: 71.983
      TotalMinutes: 0.00119971666666667
      TotalSeconds: 0.071983
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        FileName: Checking If A File Exists
    RelativeSpeed: 12.1576476151871
    GroupName: (Missing Path)
    ClockSpeed: 2793
    FileName: Checking If A File Exists
    Throughput: 1389.21689843435
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
|[IO.File]::Exists|00:00:00.007162|1x           |13962/s   |
|Get Resolved Path|00:00:00.013459|1.88x        |7429.92/s |
|Test-Path        |00:00:00.048213|6.73x        |2074.12/s |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.005920|1x           |16889.61/s|
|Test-Path        |00:00:00.026520|4.48x        |3770.7/s  |
|Get Resolved Path|00:00:00.071983|12.16x       |1389.22/s |
