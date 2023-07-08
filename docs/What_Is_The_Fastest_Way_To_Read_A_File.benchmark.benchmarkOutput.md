---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 73627
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.52164351851852e-08
      TotalHours: 2.04519444444444e-06
      TotalMilliseconds: 7.3627
      TotalMinutes: 0.000122711666666667
      TotalSeconds: 0.0073627
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 13581.9740041018
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 153376
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.77518518518519e-07
      TotalHours: 4.26044444444444e-06
      TotalMilliseconds: 15.3376
      TotalMinutes: 0.000255626666666667
      TotalSeconds: 0.0153376
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 2.08314884485311
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 6519.92489046526
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 504692
      Days: 0
      Hours: 0
      Milliseconds: 50
      Minutes: 0
      Seconds: 0
      TotalDays: 5.84134259259259e-07
      TotalHours: 1.40192222222222e-05
      TotalMilliseconds: 50.4692
      TotalMinutes: 0.000841153333333333
      TotalSeconds: 0.0504692
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 6.85471362407812
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1981.40648157688
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 699809
      Days: 0
      Hours: 0
      Milliseconds: 69
      Minutes: 0
      Seconds: 0
      TotalDays: 8.0996412037037e-07
      TotalHours: 1.94391388888889e-05
      TotalMilliseconds: 69.9809
      TotalMinutes: 0.00116634833333333
      TotalSeconds: 0.0699809
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 9.50478764583645
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1428.96133087743
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 904485
      Days: 0
      Hours: 0
      Milliseconds: 90
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04685763888889e-06
      TotalHours: 2.51245833333333e-05
      TotalMilliseconds: 90.4485
      TotalMinutes: 0.001507475
      TotalSeconds: 0.0904485
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 12.2846917571
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1105.60153015252
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2095
---




|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |100        |00:00:00.007362|1x           |13581.97/s|
|[IO.File]::ReadAllBytes    |100        |00:00:00.015337|2.08x        |6519.92/s |
|[IO.StreamReader].ReadToEnd|100        |00:00:00.050469|6.85x        |1981.41/s |
|Get-Content -Raw           |100        |00:00:00.069980|9.5x         |1428.96/s |
|Get-Content                |100        |00:00:00.090448|12.28x       |1105.6/s  |
