---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: Foreach _
    Time: 
      Ticks: 91720
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.06157407407407e-07
      TotalHours: 2.54777777777778e-06
      TotalMilliseconds: 9.172
      TotalMinutes: 0.000152866666666667
      TotalSeconds: 0.009172
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2397
    FileName: Different Ways To Iterate
    Throughput: 10902.7474923681
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach Statement
    Time: 
      Ticks: 94663
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.09563657407407e-07
      TotalHours: 2.62952777777778e-06
      TotalMilliseconds: 9.4663
      TotalMinutes: 0.000157771666666667
      TotalSeconds: 0.0094663
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.03208678587004
    ClockSpeed: 2397
    FileName: Different Ways To Iterate
    Throughput: 10563.7894425488
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 108503
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.25582175925926e-07
      TotalHours: 3.01397222222222e-06
      TotalMilliseconds: 10.8503
      TotalMinutes: 0.000180838333333333
      TotalSeconds: 0.0108503
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.18298081116441
    ClockSpeed: 2397
    FileName: Different Ways To Iterate
    Throughput: 9216.33503221109
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 136912
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.58462962962963e-07
      TotalHours: 3.80311111111111e-06
      TotalMilliseconds: 13.6912
      TotalMinutes: 0.000228186666666667
      TotalSeconds: 0.0136912
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.4927169646751
    ClockSpeed: 2397
    FileName: Different Ways To Iterate
    Throughput: 7303.96166880916
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 203949
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.36052083333333e-07
      TotalHours: 5.66525e-06
      TotalMilliseconds: 20.3949
      TotalMinutes: 0.000339915
      TotalSeconds: 0.0203949
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.22360444832098
    ClockSpeed: 2397
    FileName: Different Ways To Iterate
    Throughput: 4903.18658095897
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 948240
      Days: 0
      Hours: 0
      Milliseconds: 94
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0975e-06
      TotalHours: 2.634e-05
      TotalMilliseconds: 94.824
      TotalMinutes: 0.0015804
      TotalSeconds: 0.094824
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 10.3384212821631
    ClockSpeed: 2397
    FileName: Different Ways To Iterate
    Throughput: 1054.58533704547
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2397
---


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Foreach _          |00:00:00.009172|1x           |10902.75/s|
|Foreach Statement  |00:00:00.009466|1.03x        |10563.79/s|
|For _              |00:00:00.010850|1.18x        |9216.34/s |
|For loop           |00:00:00.013691|1.49x        |7303.96/s |
|Pipe to ScriptBlock|00:00:00.020394|2.22x        |4903.19/s |
|Foreach-Object     |00:00:00.094824|10.34x       |1054.59/s |
