---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 5525373
      Days: 0
      Hours: 0
      Milliseconds: 552
      Minutes: 0
      Seconds: 0
      TotalDays: 6.39510763888889e-06
      TotalHours: 0.000153482583333333
      TotalMilliseconds: 552.5373
      TotalMinutes: 0.009208955
      TotalSeconds: 0.5525373
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
        RepeatCount: 10240
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 18532.6854856677
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
  - Technique: New-Object
    Time: 
      Ticks: 19968748
      Days: 0
      Hours: 0
      Milliseconds: 996
      Minutes: 0
      Seconds: 1
      TotalDays: 2.31119768518519e-05
      TotalHours: 0.000554687444444444
      TotalMilliseconds: 1996.8748
      TotalMinutes: 0.0332812466666667
      TotalSeconds: 1.9968748
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        RepeatCount: 10240
    RelativeSpeed: 3.6140090451812
    ClockSpeed: 2295
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 5128.01303316562
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2295
---




|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|StaticConstructor|10240      |00:00:00.552537|1x           |18532.69/s|
|New-Object       |10240      |00:00:01.996874|3.61x        |5128.01/s |
