---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 3410427
      Days: 0
      Hours: 0
      Milliseconds: 341
      Minutes: 0
      Seconds: 0
      TotalDays: 3.94725347222222e-06
      TotalHours: 9.47340833333333e-05
      TotalMilliseconds: 341.0427
      TotalMinutes: 0.005684045
      TotalSeconds: 0.3410427
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
        RepeatCount: 10240
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 30025.5657136189
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
  - Technique: New-Object
    Time: 
      Ticks: 11356992
      Days: 0
      Hours: 0
      Milliseconds: 135
      Minutes: 0
      Seconds: 1
      TotalDays: 1.31446666666667e-05
      TotalHours: 0.000315472
      TotalMilliseconds: 1135.6992
      TotalMinutes: 0.01892832
      TotalSeconds: 1.1356992
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        RepeatCount: 10240
    RelativeSpeed: 3.33007919536175
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 9016.47196722512
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2594
---




|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|StaticConstructor|10240      |00:00:00.341042|1x           |30025.57/s|
|New-Object       |10240      |00:00:01.135699|3.33x        |9016.47/s |
