---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 4120344
      Days: 0
      Hours: 0
      Milliseconds: 412
      Minutes: 0
      Seconds: 0
      TotalDays: 4.76891666666667e-06
      TotalHours: 0.000114454
      TotalMilliseconds: 412.0344
      TotalMinutes: 0.00686724
      TotalSeconds: 0.4120344
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 24852.2938861415
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
  - Technique: New-Object
    Time: 
      Ticks: 13716829
      Days: 0
      Hours: 0
      Milliseconds: 371
      Minutes: 0
      Seconds: 1
      TotalDays: 1.58759594907407e-05
      TotalHours: 0.000381023027777778
      TotalMilliseconds: 1371.6829
      TotalMinutes: 0.0228613816666667
      TotalSeconds: 1.3716829
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
    RelativeSpeed: 3.32904946771435
    ClockSpeed: 2095
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 7465.28224562689
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2095
---




|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|StaticConstructor|10240      |00:00:00.412034|1x           |24852.29/s|
|New-Object       |10240      |00:00:01.371682|3.33x        |7465.28/s |
