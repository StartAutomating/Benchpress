---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 5141796
      Days: 0
      Hours: 0
      Milliseconds: 514
      Minutes: 0
      Seconds: 0
      TotalDays: 5.95115277777778e-06
      TotalHours: 0.000142827666666667
      TotalMilliseconds: 514.1796
      TotalMinutes: 0.00856966
      TotalSeconds: 0.5141796
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
    Throughput: 19915.2202848966
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
  - Technique: New-Object
    Time: 
      Ticks: 19542578
      Days: 0
      Hours: 0
      Milliseconds: 954
      Minutes: 0
      Seconds: 1
      TotalDays: 2.2618724537037e-05
      TotalHours: 0.000542849388888889
      TotalMilliseconds: 1954.2578
      TotalMinutes: 0.0325709633333333
      TotalSeconds: 1.9542578
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 3.80072993949974
    ClockSpeed: 2295
    FileName: How Much Faster Is The Static Constructor
    Throughput: 5239.84092579802
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2295
---
How Much Faster Is The Static Constructor
-----------------------------------------
> @2295 Mhz


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.514179|1x           |19915.22/s|
|New-Object       |00:00:01.954257|3.8x         |5239.84/s |
