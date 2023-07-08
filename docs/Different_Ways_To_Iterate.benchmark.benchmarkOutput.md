---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: Foreach Statement
    Time: 
      Ticks: 63646
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.36643518518519e-08
      TotalHours: 1.76794444444444e-06
      TotalMilliseconds: 6.3646
      TotalMinutes: 0.000106076666666667
      TotalSeconds: 0.0063646
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock:  foreach ($n in 1..100) { $n }
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 15711.9064827326
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 63842
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.38912037037037e-08
      TotalHours: 1.77338888888889e-06
      TotalMilliseconds: 6.3842
      TotalMinutes: 0.000106403333333333
      TotalSeconds: 0.0063842
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
    RelativeSpeed: 1.00307953367062
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 15663.6696845337
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 63920
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.39814814814815e-08
      TotalHours: 1.77555555555556e-06
      TotalMilliseconds: 6.392
      TotalMinutes: 0.000106533333333333
      TotalSeconds: 0.006392
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: foreach ($_ in 1..100) { $_ }
    RelativeSpeed: 1.00430506237627
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 15644.5556946183
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 80991
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.37395833333333e-08
      TotalHours: 2.24975e-06
      TotalMilliseconds: 8.0991
      TotalMinutes: 0.000134985
      TotalSeconds: 0.0080991
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
    RelativeSpeed: 1.272523017943
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 12347.0509068909
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 157646
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.82460648148148e-07
      TotalHours: 4.37905555555556e-06
      TotalMilliseconds: 15.7646
      TotalMinutes: 0.000262743333333333
      TotalSeconds: 0.0157646
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | . { process { $_ }}
    RelativeSpeed: 2.47691920937687
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 6343.32618651916
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 796382
      Days: 0
      Hours: 0
      Milliseconds: 79
      Minutes: 0
      Seconds: 0
      TotalDays: 9.21738425925926e-07
      TotalHours: 2.21217222222222e-05
      TotalMilliseconds: 79.6382
      TotalMinutes: 0.00132730333333333
      TotalSeconds: 0.0796382
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | ForEach-Object { $_ }
    RelativeSpeed: 12.5126795085316
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 1255.6788074065
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2594
---


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Foreach Statement  |00:00:00.006364|1x           |15711.91/s|
|For loop           |00:00:00.006384|1x           |15663.67/s|
|Foreach _          |00:00:00.006392|1x           |15644.56/s|
|For _              |00:00:00.008099|1.27x        |12347.05/s|
|Pipe to ScriptBlock|00:00:00.015764|2.48x        |6343.33/s |
|Foreach-Object     |00:00:00.079638|12.51x       |1255.68/s |
