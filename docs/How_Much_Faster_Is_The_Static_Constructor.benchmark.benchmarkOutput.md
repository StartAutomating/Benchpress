---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 3202419
      Days: 0
      Hours: 0
      Milliseconds: 320
      Minutes: 0
      Seconds: 0
      TotalDays: 3.70650347222222e-06
      TotalHours: 8.89560833333333e-05
      TotalMilliseconds: 320.2419
      TotalMinutes: 0.005337365
      TotalSeconds: 0.3202419
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 31975.8282723154
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
  - Technique: New-Object
    Time: 
      Ticks: 11132382
      Days: 0
      Hours: 0
      Milliseconds: 113
      Minutes: 0
      Seconds: 1
      TotalDays: 1.28847013888889e-05
      TotalHours: 0.000309232833333333
      TotalMilliseconds: 1113.2382
      TotalMinutes: 0.01855397
      TotalSeconds: 1.1132382
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 3.47624155365054
    ClockSpeed: 2793
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 9198.39078464968
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2793
---


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.320241|1x           |31975.83/s|
|New-Object       |00:00:01.113238|3.48x        |9198.39/s |
