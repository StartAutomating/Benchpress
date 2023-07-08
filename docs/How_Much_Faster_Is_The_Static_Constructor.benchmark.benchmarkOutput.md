---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 5697727
      Days: 0
      Hours: 0
      Milliseconds: 569
      Minutes: 0
      Seconds: 0
      TotalDays: 6.59459143518519e-06
      TotalHours: 0.000158270194444444
      TotalMilliseconds: 569.7727
      TotalMinutes: 0.00949621166666667
      TotalSeconds: 0.5697727
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 17972.079041344
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
  - Technique: New-Object
    Time: 
      Ticks: 19176592
      Days: 0
      Hours: 0
      Milliseconds: 917
      Minutes: 0
      Seconds: 1
      TotalDays: 2.21951296296296e-05
      TotalHours: 0.000532683111111111
      TotalMilliseconds: 1917.6592
      TotalMinutes: 0.0319609866666667
      TotalSeconds: 1.9176592
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 3.36565651530865
    ClockSpeed: 2295
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 5339.84349252464
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2295
---




|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|StaticConstructor|10240      |00:00:00.569772|1x           |17972.08/s|
|New-Object       |10240      |00:00:01.917659|3.37x        |5339.84/s |
