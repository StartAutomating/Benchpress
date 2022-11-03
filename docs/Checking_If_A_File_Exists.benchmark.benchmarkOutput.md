---
layout: Benchmark

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 107985
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.24982638888889e-07
      TotalHours: 2.99958333333333e-06
      TotalMilliseconds: 10.7985
      TotalMinutes: 0.000179975
      TotalSeconds: 0.0107985
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($fileToCheck) # only works with full paths
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2394
    FileName: Checking If A File Exists
    Throughput: 9260.54544612678
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 175699
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.03355324074074e-07
      TotalHours: 4.88052777777778e-06
      TotalMilliseconds: 17.5699
      TotalMinutes: 0.000292831666666667
      TotalSeconds: 0.0175699
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try{$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($fileToCheck)} catch {}
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 1.62706857433903
    GroupName: (Found Path)
    ClockSpeed: 2394
    FileName: Checking If A File Exists
    Throughput: 5691.55202932288
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 395962
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.58289351851852e-07
      TotalHours: 1.09989444444444e-05
      TotalMilliseconds: 39.5962
      TotalMinutes: 0.000659936666666667
      TotalSeconds: 0.0395962
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $fileToCheck
              
        GroupName: (Found Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 3.66682409593925
    GroupName: (Found Path)
    ClockSpeed: 2394
    FileName: Checking If A File Exists
    Throughput: 2525.49487071992
    BenchmarkInput: 
      GroupName: (Found Path)
      FileName: Checking If A File Exists
  - Technique: [IO.File]::Exists
    Time: 
      Ticks: 91108
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05449074074074e-07
      TotalHours: 2.53077777777778e-06
      TotalMilliseconds: 9.1108
      TotalMinutes: 0.000151846666666667
      TotalSeconds: 0.0091108
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::Exists($badFile)    # only works with full paths
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2394
    FileName: Checking If A File Exists
    Throughput: 10975.9845458138
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Test-Path
    Time: 
      Ticks: 374443
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.33383101851852e-07
      TotalHours: 1.04011944444444e-05
      TotalMilliseconds: 37.4443
      TotalMinutes: 0.000624071666666667
      TotalSeconds: 0.0374443
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Test-path $badFile
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 4.10988058128814
    GroupName: (Missing Path)
    ClockSpeed: 2394
    FileName: Checking If A File Exists
    Throughput: 2670.63344754742
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
  - Technique: Get Resolved Path
    Time: 
      Ticks: 816535
      Days: 0
      Hours: 0
      Milliseconds: 81
      Minutes: 0
      Seconds: 0
      TotalDays: 9.45063657407407e-07
      TotalHours: 2.26815277777778e-05
      TotalMilliseconds: 81.6535
      TotalMinutes: 0.00136089166666667
      TotalSeconds: 0.0816535
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: 
        ScriptBlock: |
          
                  try {$ExecutionContext.SessionState.Path.GetResolvedPSPathFromPSPath($badFile)} catch {}
              
        GroupName: (Missing Path)
        FileName: Checking If A File Exists
    RelativeSpeed: 8.96227554111604
    GroupName: (Missing Path)
    ClockSpeed: 2394
    FileName: Checking If A File Exists
    Throughput: 1224.68724549468
    BenchmarkInput: 
      GroupName: (Missing Path)
      FileName: Checking If A File Exists
FileName: Checking If A File Exists
ClockSpeed: 2394
---
Checking If A File Exists
-------------------------
> @2394 Mhz


### (Found Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.010798|1x           |9260.55/s |
|Get Resolved Path|00:00:00.017569|1.63x        |5691.55/s |
|Test-Path        |00:00:00.039596|3.67x        |2525.49/s |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.009110|1x           |10975.98/s|
|Test-Path        |00:00:00.037444|4.11x        |2670.63/s |
|Get Resolved Path|00:00:00.081653|8.96x        |1224.69/s |
