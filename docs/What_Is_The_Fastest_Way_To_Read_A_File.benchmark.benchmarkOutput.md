---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 59333
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.86724537037037e-08
      TotalHours: 1.64813888888889e-06
      TotalMilliseconds: 5.9333
      TotalMinutes: 9.88883333333333e-05
      TotalSeconds: 0.0059333
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 16854.0272698161
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 103790
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.20127314814815e-07
      TotalHours: 2.88305555555556e-06
      TotalMilliseconds: 10.379
      TotalMinutes: 0.000172983333333333
      TotalSeconds: 0.010379
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.74927949033422
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 9634.839579921
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 123124
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.4250462962963e-07
      TotalHours: 3.42011111111111e-06
      TotalMilliseconds: 12.3124
      TotalMinutes: 0.000205206666666667
      TotalSeconds: 0.0123124
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 2.07513525356884
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 8121.89337578376
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 423052
      Days: 0
      Hours: 0
      Milliseconds: 42
      Minutes: 0
      Seconds: 0
      TotalDays: 4.89643518518519e-07
      TotalHours: 1.17514444444444e-05
      TotalMilliseconds: 42.3052
      TotalMinutes: 0.000705086666666667
      TotalSeconds: 0.0423052
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 7.13012994455025
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 2363.77561150875
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 667978
      Days: 0
      Hours: 0
      Milliseconds: 66
      Minutes: 0
      Seconds: 0
      TotalDays: 7.73122685185185e-07
      TotalHours: 1.85549444444444e-05
      TotalMilliseconds: 66.7978
      TotalMinutes: 0.00111329666666667
      TotalSeconds: 0.0667978
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 11.2581194276372
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 1497.05529224016
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2793
---
What Is The Fastest Way To Read A File
--------------------------------------
> @2793 Mhz


### 


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |00:00:00.005933|1x           |16854.03/s|
|[IO.StreamReader].ReadToEnd|00:00:00.010379|1.75x        |9634.84/s |
|[IO.File]::ReadAllBytes    |00:00:00.012312|2.08x        |8121.89/s |
|Get-Content                |00:00:00.042305|7.13x        |2363.78/s |
|Get-Content -Raw           |00:00:00.066797|11.26x       |1497.06/s |
