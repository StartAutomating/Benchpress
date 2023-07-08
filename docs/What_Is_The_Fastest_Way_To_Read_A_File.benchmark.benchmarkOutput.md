---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 63653
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.36724537037037e-08
      TotalHours: 1.76813888888889e-06
      TotalMilliseconds: 6.3653
      TotalMinutes: 0.000106088333333333
      TotalSeconds: 0.0063653
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
    Throughput: 15710.178624731
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 108662
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.25766203703704e-07
      TotalHours: 3.01838888888889e-06
      TotalMilliseconds: 10.8662
      TotalMinutes: 0.000181103333333333
      TotalSeconds: 0.0108662
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
    RelativeSpeed: 1.70709942972052
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 9202.84920211298
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 131926
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.5269212962963e-07
      TotalHours: 3.66461111111111e-06
      TotalMilliseconds: 13.1926
      TotalMinutes: 0.000219876666666667
      TotalSeconds: 0.0131926
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
    RelativeSpeed: 2.07258102524626
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 7580.00697360642
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 597441
      Days: 0
      Hours: 0
      Milliseconds: 59
      Minutes: 0
      Seconds: 0
      TotalDays: 6.91482638888889e-07
      TotalHours: 1.65955833333333e-05
      TotalMilliseconds: 59.7441
      TotalMinutes: 0.000995735
      TotalSeconds: 0.0597441
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
    RelativeSpeed: 9.38590482773789
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1673.80544689769
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 773064
      Days: 0
      Hours: 0
      Milliseconds: 77
      Minutes: 0
      Seconds: 0
      TotalDays: 8.9475e-07
      TotalHours: 2.1474e-05
      TotalMilliseconds: 77.3064
      TotalMinutes: 0.00128844
      TotalSeconds: 0.0773064
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
    RelativeSpeed: 12.144973528349
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1293.55396189707
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2594
---




|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |100        |00:00:00.006365|1x           |15710.18/s|
|[IO.StreamReader].ReadToEnd|100        |00:00:00.010866|1.71x        |9202.85/s |
|[IO.File]::ReadAllBytes    |100        |00:00:00.013192|2.07x        |7580.01/s |
|Get-Content -Raw           |100        |00:00:00.059744|9.39x        |1673.81/s |
|Get-Content                |100        |00:00:00.077306|12.14x       |1293.55/s |
