---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 3561553
      Days: 0
      Hours: 0
      Milliseconds: 356
      Minutes: 0
      Seconds: 0
      TotalDays: 4.12216782407407e-06
      TotalHours: 9.89320277777778e-05
      TotalMilliseconds: 356.1553
      TotalMinutes: 0.00593592166666667
      TotalSeconds: 0.3561553
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 28751.5025046658
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
  - Technique: New-Object
    Time: 
      Ticks: 11486202
      Days: 0
      Hours: 0
      Milliseconds: 148
      Minutes: 0
      Seconds: 1
      TotalDays: 1.32942152777778e-05
      TotalHours: 0.000319061166666667
      TotalMilliseconds: 1148.6202
      TotalMinutes: 0.01914367
      TotalSeconds: 1.1486202
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
    RelativeSpeed: 3.22505435129001
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 8915.04432883907
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2594
---




|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|StaticConstructor|10240      |00:00:00.356155|1x           |28751.5/s |
|New-Object       |10240      |00:00:01.148620|3.23x        |8915.04/s |
