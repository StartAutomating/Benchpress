---
layout: Benchmark

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 109886
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.2718287037037e-07
      TotalHours: 3.05238888888889e-06
      TotalMilliseconds: 10.9886
      TotalMinutes: 0.000183143333333333
      TotalSeconds: 0.0109886
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 9100.34035272919
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 194718
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.25368055555556e-07
      TotalHours: 5.40883333333333e-06
      TotalMilliseconds: 19.4718
      TotalMinutes: 0.00032453
      TotalSeconds: 0.0194718
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
    RelativeSpeed: 1.77200007280272
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 5135.63204223544
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 751230
      Days: 0
      Hours: 0
      Milliseconds: 75
      Minutes: 0
      Seconds: 0
      TotalDays: 8.69479166666667e-07
      TotalHours: 2.08675e-05
      TotalMilliseconds: 75.123
      TotalMinutes: 0.00125205
      TotalSeconds: 0.075123
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        GroupName: (Found Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
    RelativeSpeed: 6.83644868318075
    GroupName: (Found Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 1331.15024692837
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 99690
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.15381944444444e-07
      TotalHours: 2.76916666666667e-06
      TotalMilliseconds: 9.969
      TotalMinutes: 0.00016615
      TotalSeconds: 0.009969
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 10031.0963988364
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 394335
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.5640625e-07
      TotalHours: 1.095375e-05
      TotalMilliseconds: 39.4335
      TotalMinutes: 0.000657225
      TotalSeconds: 0.0394335
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  Test-path $badFile
              
    RelativeSpeed: 3.95561239843515
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 2535.91489469613
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 700561
      Days: 0
      Hours: 0
      Milliseconds: 70
      Minutes: 0
      Seconds: 0
      TotalDays: 8.10834490740741e-07
      TotalHours: 1.94600277777778e-05
      TotalMilliseconds: 70.0561
      TotalMinutes: 0.00116760166666667
      TotalSeconds: 0.0700561
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
    RelativeSpeed: 7.02739492426522
    GroupName: (Missing Path)
    ClockSpeed: 2295
    FileName: Checking If A File Exists
    Throughput: 1427.42744743142
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2295
---
Checking If A File Exists
-------------------------
> @2295 Mhz


### (Found Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.010988|1x           |9100.34/s |
|Get Resolved Path|00:00:00.019471|1.77x        |5135.63/s |
|Test-Path        |00:00:00.075123|6.84x        |1331.15/s |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.009969|1x           |10031.1/s |
|Test-Path        |00:00:00.039433|3.96x        |2535.91/s |
|Get Resolved Path|00:00:00.070056|7.03x        |1427.43/s |
