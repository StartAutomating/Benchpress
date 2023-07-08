---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 4075925
      Days: 0
      Hours: 0
      Milliseconds: 407
      Minutes: 0
      Seconds: 0
      TotalDays: 4.71750578703704e-06
      TotalHours: 0.000113220138888889
      TotalMilliseconds: 407.5925
      TotalMinutes: 0.00679320833333333
      TotalSeconds: 0.4075925
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
    Throughput: 25123.1315590939
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
  - Technique: New-Object
    Time: 
      Ticks: 13175987
      Days: 0
      Hours: 0
      Milliseconds: 317
      Minutes: 0
      Seconds: 1
      TotalDays: 1.52499849537037e-05
      TotalHours: 0.000365999638888889
      TotalMilliseconds: 1317.5987
      TotalMinutes: 0.0219599783333333
      TotalSeconds: 1.3175987
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
    RelativeSpeed: 3.23263725412023
    ClockSpeed: 2095
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 7771.71380026407
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2095
---




|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|StaticConstructor|10240      |00:00:00.407592|1x           |25123.13/s|
|New-Object       |10240      |00:00:01.317598|3.23x        |7771.71/s |
