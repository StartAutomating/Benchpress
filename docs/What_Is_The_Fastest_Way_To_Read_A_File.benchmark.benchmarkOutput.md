---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 64366
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.44976851851852e-08
      TotalHours: 1.78794444444444e-06
      TotalMilliseconds: 6.4366
      TotalMinutes: 0.000107276666666667
      TotalSeconds: 0.0064366
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 15536.1526271634
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 109512
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.2675e-07
      TotalHours: 3.042e-06
      TotalMilliseconds: 10.9512
      TotalMinutes: 0.00018252
      TotalSeconds: 0.0109512
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
    RelativeSpeed: 1.70139514650592
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 9131.41938782964
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 132661
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.53542824074074e-07
      TotalHours: 3.68502777777778e-06
      TotalMilliseconds: 13.2661
      TotalMinutes: 0.000221101666666667
      TotalSeconds: 0.0132661
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
    RelativeSpeed: 2.06104154367212
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 7538.0104175304
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 488604
      Days: 0
      Hours: 0
      Milliseconds: 48
      Minutes: 0
      Seconds: 0
      TotalDays: 5.65513888888889e-07
      TotalHours: 1.35723333333333e-05
      TotalMilliseconds: 48.8604
      TotalMinutes: 0.00081434
      TotalSeconds: 0.0488604
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
    RelativeSpeed: 7.59102631824255
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 2046.64718258549
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 583396
      Days: 0
      Hours: 0
      Milliseconds: 58
      Minutes: 0
      Seconds: 0
      TotalDays: 6.75226851851852e-07
      TotalHours: 1.62054444444444e-05
      TotalMilliseconds: 58.3396
      TotalMinutes: 0.000972326666666667
      TotalSeconds: 0.0583396
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
    RelativeSpeed: 9.06372929807662
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1714.10157080268
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2594
---


### 


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |00:00:00.006436|1x           |15536.15/s|
|[IO.StreamReader].ReadToEnd|00:00:00.010951|1.7x         |9131.42/s |
|[IO.File]::ReadAllBytes    |00:00:00.013266|2.06x        |7538.01/s |
|Get-Content -Raw           |00:00:00.048860|7.59x        |2046.65/s |
|Get-Content                |00:00:00.058339|9.06x        |1714.1/s  |
