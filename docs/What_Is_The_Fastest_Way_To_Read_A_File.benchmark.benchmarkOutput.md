---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 110823
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.28267361111111e-07
      TotalHours: 3.07841666666667e-06
      TotalMilliseconds: 11.0823
      TotalMinutes: 0.000184705
      TotalSeconds: 0.0110823
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Read A File
    Throughput: 9023.39767015872
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 160910
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.86238425925926e-07
      TotalHours: 4.46972222222222e-06
      TotalMilliseconds: 16.091
      TotalMinutes: 0.000268183333333333
      TotalSeconds: 0.016091
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.45195491910524
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Read A File
    Throughput: 6214.6541544963
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 188619
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.18309027777778e-07
      TotalHours: 5.23941666666667e-06
      TotalMilliseconds: 18.8619
      TotalMinutes: 0.000314365
      TotalSeconds: 0.0188619
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.70198424514767
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Read A File
    Throughput: 5301.69283052078
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 771068
      Days: 0
      Hours: 0
      Milliseconds: 77
      Minutes: 0
      Seconds: 0
      TotalDays: 8.92439814814815e-07
      TotalHours: 2.14185555555556e-05
      TotalMilliseconds: 77.1068
      TotalMinutes: 0.00128511333333333
      TotalSeconds: 0.0771068
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 6.95765319473395
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Read A File
    Throughput: 1296.90247812126
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 790690
      Days: 0
      Hours: 0
      Milliseconds: 79
      Minutes: 0
      Seconds: 0
      TotalDays: 9.15150462962963e-07
      TotalHours: 2.19636111111111e-05
      TotalMilliseconds: 79.069
      TotalMinutes: 0.00131781666666667
      TotalSeconds: 0.079069
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 7.1347103038178
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Read A File
    Throughput: 1264.71815755859
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2397
---


### 


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |00:00:00.011082|1x           |9023.4/s  |
|[IO.StreamReader].ReadToEnd|00:00:00.016091|1.45x        |6214.65/s |
|[IO.File]::ReadAllBytes    |00:00:00.018861|1.7x         |5301.69/s |
|Get-Content                |00:00:00.077106|6.96x        |1296.9/s  |
|Get-Content -Raw           |00:00:00.079069|7.13x        |1264.72/s |
