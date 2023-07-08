---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 5537362
      Days: 0
      Hours: 0
      Milliseconds: 553
      Minutes: 0
      Seconds: 0
      TotalDays: 6.4089837962963e-06
      TotalHours: 0.000153815611111111
      TotalMilliseconds: 553.7362
      TotalMinutes: 0.00922893666666667
      TotalSeconds: 0.5537362
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 1
    ClockSpeed: 2397
    FileName: How Much Faster Is The Static Constructor
    Throughput: 18492.560175766
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
  - Technique: New-Object
    Time: 
      Ticks: 19483700
      Days: 0
      Hours: 0
      Milliseconds: 948
      Minutes: 0
      Seconds: 1
      TotalDays: 2.25505787037037e-05
      TotalHours: 0.000541213888888889
      TotalMilliseconds: 1948.37
      TotalMinutes: 0.0324728333333333
      TotalSeconds: 1.94837
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 3.51858881539621
    ClockSpeed: 2397
    FileName: How Much Faster Is The Static Constructor
    Throughput: 5255.67525675308
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2397
---


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.553736|1x           |18492.56/s|
|New-Object       |00:00:01.948370|3.52x        |5255.68/s |
