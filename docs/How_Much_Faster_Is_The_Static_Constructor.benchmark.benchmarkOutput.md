---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 3328821
      Days: 0
      Hours: 0
      Milliseconds: 332
      Minutes: 0
      Seconds: 0
      TotalDays: 3.85280208333333e-06
      TotalHours: 9.246725e-05
      TotalMilliseconds: 332.8821
      TotalMinutes: 0.005548035
      TotalSeconds: 0.3328821
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: How Much Faster Is The Static Constructor
    Throughput: 30761.6420348225
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
  - Technique: New-Object
    Time: 
      Ticks: 11608320
      Days: 0
      Hours: 0
      Milliseconds: 160
      Minutes: 0
      Seconds: 1
      TotalDays: 1.34355555555556e-05
      TotalHours: 0.000322453333333333
      TotalMilliseconds: 1160.832
      TotalMinutes: 0.0193472
      TotalSeconds: 1.160832
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
    RelativeSpeed: 3.48721664517257
    ClockSpeed: 2793
    FileName: How Much Faster Is The Static Constructor
    Throughput: 8821.25923475576
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2793
---


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.332882|1x           |30761.64/s|
|New-Object       |00:00:01.160832|3.49x        |8821.26/s |
