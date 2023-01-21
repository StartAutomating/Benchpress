---
layout: Benchmark

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 64036
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.41157407407407e-08
      TotalHours: 1.77877777777778e-06
      TotalMilliseconds: 6.4036
      TotalMinutes: 0.000106726666666667
      TotalSeconds: 0.0064036
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 15616.2158785683
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 102844
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.19032407407407e-07
      TotalHours: 2.85677777777778e-06
      TotalMilliseconds: 10.2844
      TotalMinutes: 0.000171406666666667
      TotalSeconds: 0.0102844
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.60603410581548
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 9723.46466492941
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 120522
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.39493055555556e-07
      TotalHours: 3.34783333333333e-06
      TotalMilliseconds: 12.0522
      TotalMinutes: 0.00020087
      TotalSeconds: 0.0120522
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.88209757011681
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 8297.24033786363
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 406317
      Days: 0
      Hours: 0
      Milliseconds: 40
      Minutes: 0
      Seconds: 0
      TotalDays: 4.70274305555556e-07
      TotalHours: 1.12865833333333e-05
      TotalMilliseconds: 40.6317
      TotalMinutes: 0.000677195
      TotalSeconds: 0.0406317
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 6.34513398713224
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 2461.13256398329
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 478710
      Days: 0
      Hours: 0
      Milliseconds: 47
      Minutes: 0
      Seconds: 0
      TotalDays: 5.540625e-07
      TotalHours: 1.32975e-05
      TotalMilliseconds: 47.871
      TotalMinutes: 0.00079785
      TotalSeconds: 0.047871
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 7.47563870322943
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 2088.94737941551
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2793
---
What Is The Fastest Way To Read A File
--------------------------------------
> @2793 Mhz


### 


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |00:00:00.006403|1x           |15616.22/s|
|[IO.StreamReader].ReadToEnd|00:00:00.010284|1.61x        |9723.46/s |
|[IO.File]::ReadAllBytes    |00:00:00.012052|1.88x        |8297.24/s |
|Get-Content                |00:00:00.040631|6.35x        |2461.13/s |
|Get-Content -Raw           |00:00:00.047871|7.48x        |2088.95/s |
