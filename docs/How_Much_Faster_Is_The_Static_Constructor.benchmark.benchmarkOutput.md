---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 3323576
      Days: 0
      Hours: 0
      Milliseconds: 332
      Minutes: 0
      Seconds: 0
      TotalDays: 3.84673148148148e-06
      TotalHours: 9.23215555555556e-05
      TotalMilliseconds: 332.3576
      TotalMinutes: 0.00553929333333333
      TotalSeconds: 0.3323576
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
    Throughput: 30810.1875810874
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
  - Technique: New-Object
    Time: 
      Ticks: 11410867
      Days: 0
      Hours: 0
      Milliseconds: 141
      Minutes: 0
      Seconds: 1
      TotalDays: 1.32070219907407e-05
      TotalHours: 0.000316968527777778
      TotalMilliseconds: 1141.0867
      TotalMinutes: 0.0190181116666667
      TotalSeconds: 1.1410867
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 3.43331008528164
    ClockSpeed: 2793
    FileName: How Much Faster Is The Static Constructor
    Throughput: 8973.9018078118
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2793
---
How Much Faster Is The Static Constructor
-----------------------------------------
> @2793 Mhz


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.332357|1x           |30810.19/s|
|New-Object       |00:00:01.141086|3.43x        |8973.9/s  |
