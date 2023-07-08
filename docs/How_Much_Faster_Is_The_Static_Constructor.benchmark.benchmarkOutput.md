---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 4604708
      Days: 0
      Hours: 0
      Milliseconds: 460
      Minutes: 0
      Seconds: 0
      TotalDays: 5.32952314814815e-06
      TotalHours: 0.000127908555555556
      TotalMilliseconds: 460.4708
      TotalMinutes: 0.00767451333333333
      TotalSeconds: 0.4604708
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
    Throughput: 22238.1093437412
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
  - Technique: New-Object
    Time: 
      Ticks: 17489365
      Days: 0
      Hours: 0
      Milliseconds: 748
      Minutes: 0
      Seconds: 1
      TotalDays: 2.02423206018519e-05
      TotalHours: 0.000485815694444444
      TotalMilliseconds: 1748.9365
      TotalMinutes: 0.0291489416666667
      TotalSeconds: 1.7489365
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 3.79814854709571
    ClockSpeed: 2295
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 5854.98673050737
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2295
---




|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|StaticConstructor|10240      |00:00:00.460470|1x           |22238.11/s|
|New-Object       |10240      |00:00:01.748936|3.8x         |5854.99/s |
