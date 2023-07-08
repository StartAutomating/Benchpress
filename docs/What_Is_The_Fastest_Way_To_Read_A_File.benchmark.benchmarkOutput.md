---
layout: Benchmark
title: What Is The Fastest Way To Read A File

Data: 
  - Technique: [IO.File]::ReadAllText
    Time: 
      Ticks: 60226
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 6.97060185185185e-08
      TotalHours: 1.67294444444444e-06
      TotalMilliseconds: 6.0226
      TotalMinutes: 0.000100376666666667
      TotalSeconds: 0.0060226
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllText($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 16604.124464517
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.StreamReader].ReadToEnd
    Time: 
      Ticks: 105604
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.22226851851852e-07
      TotalHours: 2.93344444444444e-06
      TotalMilliseconds: 10.5604
      TotalMinutes: 0.000176006666666667
      TotalSeconds: 0.0105604
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $stream = [IO.File]::OpenRead($filePath)
                  [IO.StreamReader]::new($stream).ReadToEnd()
                  $stream.Close()
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 1.75346195995085
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 9469.33828264081
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: [IO.File]::ReadAllBytes
    Time: 
      Ticks: 122264
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.41509259259259e-07
      TotalHours: 3.39622222222222e-06
      TotalMilliseconds: 12.2264
      TotalMinutes: 0.000203773333333333
      TotalSeconds: 0.0122264
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.File]::ReadAllBytes($filePath)
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 2.0300866735297
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 8179.02244323758
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content -Raw
    Time: 
      Ticks: 572474
      Days: 0
      Hours: 0
      Milliseconds: 57
      Minutes: 0
      Seconds: 0
      TotalDays: 6.62585648148148e-07
      TotalHours: 1.59020555555556e-05
      TotalMilliseconds: 57.2474
      TotalMinutes: 0.000954123333333333
      TotalSeconds: 0.0572474
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath -Raw
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 9.5054295486999
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 1746.80422167644
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
  - Technique: Get-Content
    Time: 
      Ticks: 741133
      Days: 0
      Hours: 0
      Milliseconds: 74
      Minutes: 0
      Seconds: 0
      TotalDays: 8.57792824074074e-07
      TotalHours: 2.05870277777778e-05
      TotalMilliseconds: 74.1133
      TotalMinutes: 0.00123522166666667
      TotalSeconds: 0.0741133
      FileName: What Is The Fastest Way To Read A File
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Content -Path $filePath
              
        FileName: What Is The Fastest Way To Read A File
    RelativeSpeed: 12.3058645767609
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Read A File
    Throughput: 1349.28548587096
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Read A File
FileName: What Is The Fastest Way To Read A File
ClockSpeed: 2793
---


### 


|Technique                  |Time           |RelativeSpeed|Throughput|
|---------------------------|---------------|-------------|----------|
|[IO.File]::ReadAllText     |00:00:00.006022|1x           |16604.12/s|
|[IO.StreamReader].ReadToEnd|00:00:00.010560|1.75x        |9469.34/s |
|[IO.File]::ReadAllBytes    |00:00:00.012226|2.03x        |8179.02/s |
|Get-Content -Raw           |00:00:00.057247|9.51x        |1746.8/s  |
|Get-Content                |00:00:00.074113|12.31x       |1349.29/s |
