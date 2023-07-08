---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 71835
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.31423611111111e-08
      TotalHours: 1.99541666666667e-06
      TotalMilliseconds: 7.1835
      TotalMinutes: 0.000119725
      TotalSeconds: 0.0071835
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
    Throughput: 13920.7907009118
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 122702
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.42016203703704e-07
      TotalHours: 3.40838888888889e-06
      TotalMilliseconds: 12.2702
      TotalMinutes: 0.000204503333333333
      TotalSeconds: 0.0122702
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.70810886058328
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 8149.8264086975
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 366049
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.23667824074074e-07
      TotalHours: 1.01680277777778e-05
      TotalMilliseconds: 36.6049
      TotalMinutes: 0.000610081666666667
      TotalSeconds: 0.0366049
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 5.09569151527807
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 2731.87469437152
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 455771
      Days: 0
      Hours: 0
      Milliseconds: 45
      Minutes: 0
      Seconds: 0
      TotalDays: 5.27512731481482e-07
      TotalHours: 1.26603055555556e-05
      TotalMilliseconds: 45.5771
      TotalMinutes: 0.000759618333333333
      TotalSeconds: 0.0455771
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 6.34469269854528
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 2194.08430988369
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 823572
      Days: 0
      Hours: 0
      Milliseconds: 82
      Minutes: 0
      Seconds: 0
      TotalDays: 9.53208333333333e-07
      TotalHours: 2.2877e-05
      TotalMilliseconds: 82.3572
      TotalMinutes: 0.00137262
      TotalSeconds: 0.0823572
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 11.4647734391313
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1214.22292161462
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2095
---




|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |100        |00:00:00.007183|1x           |13920.79/s|
|[IO.StreamReader].ReadToEnd|100        |00:00:00.012270|1.71x        |8149.83/s |
|Get-Content -Raw           |100        |00:00:00.036604|5.1x         |2731.87/s |
|[IO.File]::ReadAllBytes    |100        |00:00:00.045577|6.34x        |2194.08/s |
|Get-Content                |100        |00:00:00.082357|11.46x       |1214.22/s |
