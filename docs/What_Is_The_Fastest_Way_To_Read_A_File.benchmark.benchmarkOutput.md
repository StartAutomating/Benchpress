---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 64286
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.44050925925926e-08
      TotalHours: 1.78572222222222e-06
      TotalMilliseconds: 6.4286
      TotalMinutes: 0.000107143333333333
      TotalSeconds: 0.0064286
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 15555.4864200604
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 109348
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.26560185185185e-07
      TotalHours: 3.03744444444444e-06
      TotalMilliseconds: 10.9348
      TotalMinutes: 0.000182246666666667
      TotalSeconds: 0.0109348
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.70096132906076
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 9145.11467973808
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 131890
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.52650462962963e-07
      TotalHours: 3.66361111111111e-06
      TotalMilliseconds: 13.189
      TotalMinutes: 0.000219816666666667
      TotalSeconds: 0.013189
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 2.05161310394176
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 7582.07597240124
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 599357
      Days: 0
      Hours: 0
      Milliseconds: 59
      Minutes: 0
      Seconds: 0
      TotalDays: 6.93700231481481e-07
      TotalHours: 1.66488055555556e-05
      TotalMilliseconds: 59.9357
      TotalMinutes: 0.000998928333333333
      TotalSeconds: 0.0599357
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 9.32328967426811
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1668.45469394701
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 768753
      Days: 0
      Hours: 0
      Milliseconds: 76
      Minutes: 0
      Seconds: 0
      TotalDays: 8.89760416666667e-07
      TotalHours: 2.135425e-05
      TotalMilliseconds: 76.8753
      TotalMinutes: 0.001281255
      TotalSeconds: 0.0768753
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 11.9583268518807
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1300.80793180645
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2594
---




|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |100        |00:00:00.006428|1x           |15555.49/s|
|[IO.StreamReader].ReadToEnd|100        |00:00:00.010934|1.7x         |9145.11/s |
|[IO.File]::ReadAllBytes    |100        |00:00:00.013189|2.05x        |7582.08/s |
|Get-Content -Raw           |100        |00:00:00.059935|9.32x        |1668.45/s |
|Get-Content                |100        |00:00:00.076875|11.96x       |1300.81/s |
