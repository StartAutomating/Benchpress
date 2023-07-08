---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 3456961
      Days: 0
      Hours: 0
      Milliseconds: 345
      Minutes: 0
      Seconds: 0
      TotalDays: 4.00111226851852e-06
      TotalHours: 9.60266944444444e-05
      TotalMilliseconds: 345.6961
      TotalMinutes: 0.00576160166666667
      TotalSeconds: 0.3456961
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
        RepeatCount: 10240
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    Throughput: 29621.392893932
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
  - Technique: New-Object
    Time: 
      Ticks: 11465451
      Days: 0
      Hours: 0
      Milliseconds: 146
      Minutes: 0
      Seconds: 1
      TotalDays: 1.32701979166667e-05
      TotalHours: 0.00031848475
      TotalMilliseconds: 1146.5451
      TotalMinutes: 0.019109085
      TotalSeconds: 1.1465451
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        RepeatCount: 10240
    RelativeSpeed: 3.31662723415161
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    Throughput: 8931.17941893433
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2594
---


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.345696|1x           |29621.39/s|
|New-Object       |00:00:01.146545|3.32x        |8931.18/s |
