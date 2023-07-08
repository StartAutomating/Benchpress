---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: For loop
    Time: 
      Ticks: 61980
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.17361111111111e-08
      TotalHours: 1.72166666666667e-06
      TotalMilliseconds: 6.198
      TotalMinutes: 0.0001033
      TotalSeconds: 0.006198
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 16134.236850597
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 62341
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.21539351851852e-08
      TotalHours: 1.73169444444444e-06
      TotalMilliseconds: 6.2341
      TotalMinutes: 0.000103901666666667
      TotalSeconds: 0.0062341
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.00582445950307
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 16040.8078150816
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 72389
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.37835648148148e-08
      TotalHours: 2.01080555555556e-06
      TotalMilliseconds: 7.2389
      TotalMinutes: 0.000120648333333333
      TotalSeconds: 0.0072389
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.16794127137786
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 13814.2535468096
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 150311
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.73971064814815e-07
      TotalHours: 4.17530555555556e-06
      TotalMilliseconds: 15.0311
      TotalMinutes: 0.000250518333333333
      TotalSeconds: 0.0150311
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.42515327525008
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 6652.87304322372
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach Statement
    Time: 
      Ticks: 152359
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.76341435185185e-07
      TotalHours: 4.23219444444444e-06
      TotalMilliseconds: 15.2359
      TotalMinutes: 0.000253931666666667
      TotalSeconds: 0.0152359
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.4581961923201
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 6563.44554637402
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 691525
      Days: 0
      Hours: 0
      Milliseconds: 69
      Minutes: 0
      Seconds: 0
      TotalDays: 8.00376157407407e-07
      TotalHours: 1.92090277777778e-05
      TotalMilliseconds: 69.1525
      TotalMinutes: 0.00115254166666667
      TotalSeconds: 0.0691525
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 11.1572281381091
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 1446.07931745056
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2793
---
Different Ways To Iterate
-------------------------
> @2793 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|For loop           |00:00:00.006198|1x           |16134.24/s|
|Foreach _          |00:00:00.006234|1.01x        |16040.81/s|
|For _              |00:00:00.007238|1.17x        |13814.25/s|
|Pipe to ScriptBlock|00:00:00.015031|2.43x        |6652.87/s |
|Foreach Statement  |00:00:00.015235|2.46x        |6563.45/s |
|Foreach-Object     |00:00:00.069152|11.16x       |1446.08/s |
