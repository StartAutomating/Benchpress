---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 58255
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.74247685185185e-08
      TotalHours: 1.61819444444444e-06
      TotalMilliseconds: 5.8255
      TotalMinutes: 9.70916666666667e-05
      TotalSeconds: 0.0058255
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 17165.9085057077
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 102468
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.18597222222222e-07
      TotalHours: 2.84633333333333e-06
      TotalMilliseconds: 10.2468
      TotalMinutes: 0.00017078
      TotalSeconds: 0.0102468
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
    RelativeSpeed: 1.75895631276285
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 9759.14431822618
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 118639
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.37313657407407e-07
      TotalHours: 3.29552777777778e-06
      TotalMilliseconds: 11.8639
      TotalMinutes: 0.000197731666666667
      TotalSeconds: 0.0118639
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
    RelativeSpeed: 2.03654621920865
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 8428.93146435826
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 416065
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.81556712962963e-07
      TotalHours: 1.15573611111111e-05
      TotalMilliseconds: 41.6065
      TotalMinutes: 0.000693441666666667
      TotalSeconds: 0.0416065
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
    RelativeSpeed: 7.14213372242726
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 2403.4706115631
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 476488
      Days: 0
      Hours: 0
      Milliseconds: 47
      Minutes: 0
      Seconds: 0
      TotalDays: 5.51490740740741e-07
      TotalHours: 1.32357777777778e-05
      TotalMilliseconds: 47.6488
      TotalMinutes: 0.000794146666666667
      TotalSeconds: 0.0476488
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
    RelativeSpeed: 8.17934941206763
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 2098.6887392757
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2793
---


### 


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |00:00:00.005825|1x           |17165.91/s|
|[IO.StreamReader].ReadToEnd|00:00:00.010246|1.76x        |9759.14/s |
|[IO.File]::ReadAllBytes    |00:00:00.011863|2.04x        |8428.93/s |
|Get-Content                |00:00:00.041606|7.14x        |2403.47/s |
|Get-Content -Raw           |00:00:00.047648|8.18x        |2098.69/s |
