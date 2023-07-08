---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 3678291
      Days: 0
      Hours: 0
      Milliseconds: 367
      Minutes: 0
      Seconds: 0
      TotalDays: 4.25728125e-06
      TotalHours: 0.00010217475
      TotalMilliseconds: 367.8291
      TotalMinutes: 0.006130485
      TotalSeconds: 0.3678291
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
        RepeatCount: 10240
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 27839.015455819
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
  - Technique: New-Object
    Time: 
      Ticks: 12289596
      Days: 0
      Hours: 0
      Milliseconds: 228
      Minutes: 0
      Seconds: 1
      TotalDays: 1.42240694444444e-05
      TotalHours: 0.000341377666666667
      TotalMilliseconds: 1228.9596
      TotalMinutes: 0.02048266
      TotalSeconds: 1.2289596
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        RepeatCount: 10240
    RelativeSpeed: 3.34111575185324
    ClockSpeed: 2095
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 8332.25111712379
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2095
---




|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|StaticConstructor|10240      |00:00:00.367829|1x           |27839.02/s|
|New-Object       |10240      |00:00:01.228959|3.34x        |8332.25/s |
