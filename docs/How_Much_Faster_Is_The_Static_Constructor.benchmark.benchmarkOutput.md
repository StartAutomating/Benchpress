---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 3019492
      Days: 0
      Hours: 0
      Milliseconds: 301
      Minutes: 0
      Seconds: 0
      TotalDays: 3.49478240740741e-06
      TotalHours: 8.38747777777778e-05
      TotalMilliseconds: 301.9492
      TotalMinutes: 0.00503248666666667
      TotalSeconds: 0.3019492
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
    Throughput: 33912.9893372793
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
  - Technique: New-Object
    Time: 
      Ticks: 10226827
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 1
      TotalDays: 1.18366053240741e-05
      TotalHours: 0.000284078527777778
      TotalMilliseconds: 1022.6827
      TotalMinutes: 0.0170447116666667
      TotalSeconds: 1.0226827
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        RepeatCount: 10240
    RelativeSpeed: 3.38693627934765
    ClockSpeed: 2095
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 10012.8808280418
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2095
---




|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|StaticConstructor|10240      |00:00:00.301949|1x           |33912.99/s|
|New-Object       |10240      |00:00:01.022682|3.39x        |10012.88/s|
