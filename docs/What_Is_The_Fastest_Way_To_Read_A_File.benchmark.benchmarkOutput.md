---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 109873
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.27167824074074e-07
      TotalHours: 3.05202777777778e-06
      TotalMilliseconds: 10.9873
      TotalMinutes: 0.000183121666666667
      TotalSeconds: 0.0109873
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 9101.41709064101
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 174444
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.01902777777778e-07
      TotalHours: 4.84566666666667e-06
      TotalMilliseconds: 17.4444
      TotalMinutes: 0.00029074
      TotalSeconds: 0.0174444
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.58768760295978
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 5732.4986815253
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 504405
      Days: 0
      Hours: 0
      Milliseconds: 50
      Minutes: 0
      Seconds: 0
      TotalDays: 5.83802083333333e-07
      TotalHours: 1.401125e-05
      TotalMilliseconds: 50.4405
      TotalMinutes: 0.000840675
      TotalSeconds: 0.0504405
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 4.59080028760478
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1982.53387654762
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 626099
      Days: 0
      Hours: 0
      Milliseconds: 62
      Minutes: 0
      Seconds: 0
      TotalDays: 7.2465162037037e-07
      TotalHours: 1.73916388888889e-05
      TotalMilliseconds: 62.6099
      TotalMinutes: 0.00104349833333333
      TotalSeconds: 0.0626099
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 5.69838813903325
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1597.19149846909
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 1123265
      Days: 0
      Hours: 0
      Milliseconds: 112
      Minutes: 0
      Seconds: 0
      TotalDays: 1.30007523148148e-06
      TotalHours: 3.12018055555556e-05
      TotalMilliseconds: 112.3265
      TotalMinutes: 0.00187210833333333
      TotalSeconds: 0.1123265
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 10.2233032683189
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 890.261870529216
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2295
---




|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |100        |00:00:00.010987|1x           |9101.42/s |
|[IO.StreamReader].ReadToEnd|100        |00:00:00.017444|1.59x        |5732.5/s  |
|Get-Content -Raw           |100        |00:00:00.050440|4.59x        |1982.53/s |
|[IO.File]::ReadAllBytes    |100        |00:00:00.062609|5.7x         |1597.19/s |
|Get-Content                |100        |00:00:00.112326|10.22x       |890.26/s  |
