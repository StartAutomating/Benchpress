---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 101155
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.17077546296296e-07
      TotalHours: 2.80986111111111e-06
      TotalMilliseconds: 10.1155
      TotalMinutes: 0.000168591666666667
      TotalSeconds: 0.0101155
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 9885.81879294153
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 155211
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.79642361111111e-07
      TotalHours: 4.31141666666667e-06
      TotalMilliseconds: 15.5211
      TotalMinutes: 0.000258685
      TotalSeconds: 0.0155211
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
    RelativeSpeed: 1.53438782067125
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 6442.8423243198
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 170333
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 1.97144675925926e-07
      TotalHours: 4.73147222222222e-06
      TotalMilliseconds: 17.0333
      TotalMinutes: 0.000283888333333333
      TotalSeconds: 0.0170333
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
    RelativeSpeed: 1.68388117245811
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 5870.85297622892
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 581425
      Days: 0
      Hours: 0
      Milliseconds: 58
      Minutes: 0
      Seconds: 0
      TotalDays: 6.72945601851852e-07
      TotalHours: 1.61506944444444e-05
      TotalMilliseconds: 58.1425
      TotalMinutes: 0.000969041666666667
      TotalSeconds: 0.0581425
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
    RelativeSpeed: 5.74786219168603
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1719.91228447349
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 792286
      Days: 0
      Hours: 0
      Milliseconds: 79
      Minutes: 0
      Seconds: 0
      TotalDays: 9.16997685185185e-07
      TotalHours: 2.20079444444444e-05
      TotalMilliseconds: 79.2286
      TotalMinutes: 0.00132047666666667
      TotalSeconds: 0.0792286
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Read A File
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
    RelativeSpeed: 7.83239582818447
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Read A File
    RepeatCount: 100
    Throughput: 1262.17047884224
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2295
---




|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |100        |00:00:00.010115|1x           |9885.82/s |
|[IO.StreamReader].ReadToEnd|100        |00:00:00.015521|1.53x        |6442.84/s |
|[IO.File]::ReadAllBytes    |100        |00:00:00.017033|1.68x        |5870.85/s |
|Get-Content                |100        |00:00:00.058142|5.75x        |1719.91/s |
|Get-Content -Raw           |100        |00:00:00.079228|7.83x        |1262.17/s |
