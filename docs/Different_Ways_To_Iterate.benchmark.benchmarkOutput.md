---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: Foreach Statement
    Time: 
      Ticks: 90604
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04865740740741e-07
      TotalHours: 2.51677777777778e-06
      TotalMilliseconds: 9.0604
      TotalMinutes: 0.000151006666666667
      TotalSeconds: 0.0090604
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock:  foreach ($n in 1..100) { $n }
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 11037.0403072712
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 107588
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.24523148148148e-07
      TotalHours: 2.98855555555556e-06
      TotalMilliseconds: 10.7588
      TotalMinutes: 0.000179313333333333
      TotalSeconds: 0.0107588
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
    RelativeSpeed: 1.18745309257869
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 9294.71688292375
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 110651
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.28068287037037e-07
      TotalHours: 3.07363888888889e-06
      TotalMilliseconds: 11.0651
      TotalMinutes: 0.000184418333333333
      TotalSeconds: 0.0110651
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
    RelativeSpeed: 1.22125954703987
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 9037.42397267083
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 140585
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.6271412037037e-07
      TotalHours: 3.90513888888889e-06
      TotalMilliseconds: 14.0585
      TotalMinutes: 0.000234308333333333
      TotalSeconds: 0.0140585
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: foreach ($_ in 1..100) { $_ }
    RelativeSpeed: 1.55164231159772
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 7113.13440267454
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 214772
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.48578703703704e-07
      TotalHours: 5.96588888888889e-06
      TotalMilliseconds: 21.4772
      TotalMinutes: 0.000357953333333333
      TotalSeconds: 0.0214772
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | . { process { $_ }}
    RelativeSpeed: 2.37044722087325
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 4656.10042277392
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 1094918
      Days: 0
      Hours: 0
      Milliseconds: 109
      Minutes: 0
      Seconds: 0
      TotalDays: 1.2672662037037e-06
      TotalHours: 3.04143888888889e-05
      TotalMilliseconds: 109.4918
      TotalMinutes: 0.00182486333333333
      TotalSeconds: 0.1094918
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | ForEach-Object { $_ }
    RelativeSpeed: 12.0846540991568
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 913.310403153478
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2295
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Foreach Statement  |100        |00:00:00.009060|1x           |11037.04/s|
|For _              |100        |00:00:00.010758|1.19x        |9294.72/s |
|For loop           |100        |00:00:00.011065|1.22x        |9037.42/s |
|Foreach _          |100        |00:00:00.014058|1.55x        |7113.13/s |
|Pipe to ScriptBlock|100        |00:00:00.021477|2.37x        |4656.1/s  |
|Foreach-Object     |100        |00:00:00.109491|12.08x       |913.31/s  |
