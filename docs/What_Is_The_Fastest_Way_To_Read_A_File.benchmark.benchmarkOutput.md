---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 76947
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.90590277777778e-08
      TotalHours: 2.13741666666667e-06
      TotalMilliseconds: 7.6947
      TotalMinutes: 0.000128245
      TotalSeconds: 0.0076947
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 12995.9582569821
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 133448
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.54453703703704e-07
      TotalHours: 3.70688888888889e-06
      TotalMilliseconds: 13.3448
      TotalMinutes: 0.000222413333333333
      TotalSeconds: 0.0133448
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
    RelativeSpeed: 1.73428463747774
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 7493.55554223368
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 156555
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.81197916666667e-07
      TotalHours: 4.34875e-06
      TotalMilliseconds: 15.6555
      TotalMinutes: 0.000260925
      TotalSeconds: 0.0156555
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
    RelativeSpeed: 2.03458224492183
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 6387.53153843697
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 547359
      Days: 0
      Hours: 0
      Milliseconds: 54
      Minutes: 0
      Seconds: 0
      TotalDays: 6.33517361111111e-07
      TotalHours: 1.52044166666667e-05
      TotalMilliseconds: 54.7359
      TotalMinutes: 0.000912265
      TotalSeconds: 0.0547359
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
    RelativeSpeed: 7.11345471558345
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1826.95452162109
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 754172
      Days: 0
      Hours: 0
      Milliseconds: 75
      Minutes: 0
      Seconds: 0
      TotalDays: 8.72884259259259e-07
      TotalHours: 2.09492222222222e-05
      TotalMilliseconds: 75.4172
      TotalMinutes: 0.00125695333333333
      TotalSeconds: 0.0754172
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
    RelativeSpeed: 9.80118783058469
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1325.9574738919
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2095
---




|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |100        |00:00:00.007694|1x           |12995.96/s|
|[IO.StreamReader].ReadToEnd|100        |00:00:00.013344|1.73x        |7493.56/s |
|[IO.File]::ReadAllBytes    |100        |00:00:00.015655|2.03x        |6387.53/s |
|Get-Content -Raw           |100        |00:00:00.054735|7.11x        |1826.95/s |
|Get-Content                |100        |00:00:00.075417|9.8x         |1325.96/s |
