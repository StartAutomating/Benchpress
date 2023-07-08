---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 72667
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.41053240740741e-08
      TotalHours: 2.01852777777778e-06
      TotalMilliseconds: 7.2667
      TotalMinutes: 0.000121111666666667
      TotalSeconds: 0.0072667
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
    Throughput: 13761.4047641983
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 124226
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.43780092592593e-07
      TotalHours: 3.45072222222222e-06
      TotalMilliseconds: 12.4226
      TotalMinutes: 0.000207043333333333
      TotalSeconds: 0.0124226
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
    RelativeSpeed: 1.7095242682373
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 8049.84463799849
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 150962
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.74724537037037e-07
      TotalHours: 4.19338888888889e-06
      TotalMilliseconds: 15.0962
      TotalMinutes: 0.000251603333333333
      TotalSeconds: 0.0150962
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
    RelativeSpeed: 2.07744918601291
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 6624.18356937507
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 774178
      Days: 0
      Hours: 0
      Milliseconds: 77
      Minutes: 0
      Seconds: 0
      TotalDays: 8.96039351851852e-07
      TotalHours: 2.15049444444444e-05
      TotalMilliseconds: 77.4178
      TotalMinutes: 0.00129029666666667
      TotalSeconds: 0.0774178
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
    RelativeSpeed: 10.6537768175375
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1291.69260815988
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 892643
      Days: 0
      Hours: 0
      Milliseconds: 89
      Minutes: 0
      Seconds: 0
      TotalDays: 1.03315162037037e-06
      TotalHours: 2.47956388888889e-05
      TotalMilliseconds: 89.2643
      TotalMinutes: 0.00148773833333333
      TotalSeconds: 0.0892643
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
    RelativeSpeed: 12.2840216329283
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1120.26868524147
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2095
---




|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |100        |00:00:00.007266|1x           |13761.4/s |
|[IO.StreamReader].ReadToEnd|100        |00:00:00.012422|1.71x        |8049.84/s |
|[IO.File]::ReadAllBytes    |100        |00:00:00.015096|2.08x        |6624.18/s |
|Get-Content -Raw           |100        |00:00:00.077417|10.65x       |1291.69/s |
|Get-Content                |100        |00:00:00.089264|12.28x       |1120.27/s |
