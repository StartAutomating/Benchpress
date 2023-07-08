---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 103426
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.19706018518519e-07
      TotalHours: 2.87294444444444e-06
      TotalMilliseconds: 10.3426
      TotalMinutes: 0.000172376666666667
      TotalSeconds: 0.0103426
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    Throughput: 9668.74867054706
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 181452
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.10013888888889e-07
      TotalHours: 5.04033333333333e-06
      TotalMilliseconds: 18.1452
      TotalMinutes: 0.00030242
      TotalSeconds: 0.0181452
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.7544137837681
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    Throughput: 5511.09935409916
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 183572
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.12467592592593e-07
      TotalHours: 5.09922222222222e-06
      TotalMilliseconds: 18.3572
      TotalMinutes: 0.000305953333333333
      TotalSeconds: 0.0183572
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.77491153094966
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    Throughput: 5447.45386006581
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 604823
      Days: 0
      Hours: 0
      Milliseconds: 60
      Minutes: 0
      Seconds: 0
      TotalDays: 7.0002662037037e-07
      TotalHours: 1.68006388888889e-05
      TotalMilliseconds: 60.4823
      TotalMinutes: 0.00100803833333333
      TotalSeconds: 0.0604823
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 5.84788157716628
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    Throughput: 1653.3762770265
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 879954
      Days: 0
      Hours: 0
      Milliseconds: 87
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01846527777778e-06
      TotalHours: 2.44431666666667e-05
      TotalMilliseconds: 87.9954
      TotalMinutes: 0.00146659
      TotalSeconds: 0.0879954
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 8.50805406764257
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    Throughput: 1136.42304029529
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2295
---
What Is The Fastest Way To Read A File
--------------------------------------
> @2295 Mhz


### 


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |00:00:00.010342|1x           |9668.75/s |
|[IO.File]::ReadAllBytes    |00:00:00.018145|1.75x        |5511.1/s  |
|[IO.StreamReader].ReadToEnd|00:00:00.018357|1.77x        |5447.45/s |
|Get-Content                |00:00:00.060482|5.85x        |1653.38/s |
|Get-Content -Raw           |00:00:00.087995|8.51x        |1136.42/s |
