---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: Foreach Statement
    Time: 
      Ticks: 62084
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.18564814814815e-08
      TotalHours: 1.72455555555556e-06
      TotalMilliseconds: 6.2084
      TotalMinutes: 0.000103473333333333
      TotalSeconds: 0.0062084
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 16107.2095870111
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 64682
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.48634259259259e-08
      TotalHours: 1.79672222222222e-06
      TotalMilliseconds: 6.4682
      TotalMinutes: 0.000107803333333333
      TotalSeconds: 0.0064682
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.04184653050706
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 15460.2516928976
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 67625
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.82696759259259e-08
      TotalHours: 1.87847222222222e-06
      TotalMilliseconds: 6.7625
      TotalMinutes: 0.000112708333333333
      TotalSeconds: 0.0067625
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.08925004832163
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 14787.4306839187
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 68564
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.93564814814815e-08
      TotalHours: 1.90455555555556e-06
      TotalMilliseconds: 6.8564
      TotalMinutes: 0.000114273333333333
      TotalSeconds: 0.0068564
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.10437471812383
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 14584.9133656146
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 183668
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.12578703703704e-07
      TotalHours: 5.10188888888889e-06
      TotalMilliseconds: 18.3668
      TotalMinutes: 0.000306113333333333
      TotalSeconds: 0.0183668
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.95837897042716
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 5444.60657272906
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 792502
      Days: 0
      Hours: 0
      Milliseconds: 79
      Minutes: 0
      Seconds: 0
      TotalDays: 9.17247685185185e-07
      TotalHours: 2.20139444444444e-05
      TotalMilliseconds: 79.2502
      TotalMinutes: 0.00132083666666667
      TotalSeconds: 0.0792502
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 12.7649958121255
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 1261.82646857674
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2793
---


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Foreach Statement  |00:00:00.006208|1x           |16107.21/s|
|Foreach _          |00:00:00.006468|1.04x        |15460.25/s|
|For _              |00:00:00.006762|1.09x        |14787.43/s|
|For loop           |00:00:00.006856|1.1x         |14584.91/s|
|Pipe to ScriptBlock|00:00:00.018366|2.96x        |5444.61/s |
|Foreach-Object     |00:00:00.079250|12.76x       |1261.83/s |
