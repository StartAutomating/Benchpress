---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 161075
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.86429398148148e-07
      TotalHours: 4.47430555555556e-06
      TotalMilliseconds: 16.1075
      TotalMinutes: 0.000268458333333333
      TotalSeconds: 0.0161075
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 6208.2880645662
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 196340
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.2724537037037e-07
      TotalHours: 5.45388888888889e-06
      TotalMilliseconds: 19.634
      TotalMinutes: 0.000327233333333333
      TotalSeconds: 0.019634
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
    RelativeSpeed: 1.21893527859693
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 5093.2056636447
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 222960
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.58055555555556e-07
      TotalHours: 6.19333333333333e-06
      TotalMilliseconds: 22.296
      TotalMinutes: 0.0003716
      TotalSeconds: 0.022296
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
    RelativeSpeed: 1.38419990687568
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 4485.10943667025
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 472639
      Days: 0
      Hours: 0
      Milliseconds: 47
      Minutes: 0
      Seconds: 0
      TotalDays: 5.4703587962963e-07
      TotalHours: 1.31288611111111e-05
      TotalMilliseconds: 47.2639
      TotalMinutes: 0.000787731666666667
      TotalSeconds: 0.0472639
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
    RelativeSpeed: 2.9342790625485
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 2115.77969655488
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 747563
      Days: 0
      Hours: 0
      Milliseconds: 74
      Minutes: 0
      Seconds: 0
      TotalDays: 8.65234953703704e-07
      TotalHours: 2.07656388888889e-05
      TotalMilliseconds: 74.7563
      TotalMinutes: 0.00124593833333333
      TotalSeconds: 0.0747563
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
    RelativeSpeed: 4.6410864504113
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1337.67990122572
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2295
---




|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|[IO.StreamReader].ReadToEnd|100        |00:00:00.016107|1x           |6208.29/s |
|[IO.File]::ReadAllBytes    |100        |00:00:00.019634|1.22x        |5093.21/s |
|[IO.File]::ReadAllText     |100        |00:00:00.022296|1.38x        |4485.11/s |
|Get-Content -Raw           |100        |00:00:00.047263|2.93x        |2115.78/s |
|Get-Content                |100        |00:00:00.074756|4.64x        |1337.68/s |
