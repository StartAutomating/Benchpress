---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 3344803
      Days: 0
      Hours: 0
      Milliseconds: 334
      Minutes: 0
      Seconds: 0
      TotalDays: 3.87129976851852e-06
      TotalHours: 9.29111944444444e-05
      TotalMilliseconds: 334.4803
      TotalMinutes: 0.00557467166666667
      TotalSeconds: 0.3344803
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
        FileName: How Much Faster Is The Static Constructor
        RepeatCount: 10240
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 30614.6580232079
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
  - Technique: New-Object
    Time: 
      Ticks: 11443608
      Days: 0
      Hours: 0
      Milliseconds: 144
      Minutes: 0
      Seconds: 1
      TotalDays: 1.32449166666667e-05
      TotalHours: 0.000317878
      TotalMilliseconds: 1144.3608
      TotalMinutes: 0.01907268
      TotalSeconds: 1.1443608
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        FileName: How Much Faster Is The Static Constructor
        RepeatCount: 10240
    RelativeSpeed: 3.42131001437155
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 8948.22681797559
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2594
---


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.334480|1x           |30614.66/s|
|New-Object       |00:00:01.144360|3.42x        |8948.23/s |
