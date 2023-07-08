---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: Foreach Statement
    Time: 
      Ticks: 62791
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.26747685185185e-08
      TotalHours: 1.74419444444444e-06
      TotalMilliseconds: 6.2791
      TotalMinutes: 0.000104651666666667
      TotalSeconds: 0.0062791
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 15925.849245911
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 65676
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.60138888888889e-08
      TotalHours: 1.82433333333333e-06
      TotalMilliseconds: 6.5676
      TotalMinutes: 0.00010946
      TotalSeconds: 0.0065676
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.04594607507445
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 15226.2622571411
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 75814
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.77476851851852e-08
      TotalHours: 2.10594444444444e-06
      TotalMilliseconds: 7.5814
      TotalMinutes: 0.000126356666666667
      TotalSeconds: 0.0075814
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.2074023347295
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 13190.1759569473
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 94107
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08920138888889e-07
      TotalHours: 2.61408333333333e-06
      TotalMilliseconds: 9.4107
      TotalMinutes: 0.000156845
      TotalSeconds: 0.0094107
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.49873389498495
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 10626.2020891113
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 146475
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.6953125e-07
      TotalHours: 4.06875e-06
      TotalMilliseconds: 14.6475
      TotalMinutes: 0.000244125
      TotalSeconds: 0.0146475
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.33273876829482
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 6827.10360129715
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 769136
      Days: 0
      Hours: 0
      Milliseconds: 76
      Minutes: 0
      Seconds: 0
      TotalDays: 8.90203703703704e-07
      TotalHours: 2.13648888888889e-05
      TotalMilliseconds: 76.9136
      TotalMinutes: 0.00128189333333333
      TotalSeconds: 0.0769136
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 12.249143985603
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 1300.16017973414
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2594
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Foreach Statement  |100        |00:00:00.006279|1x           |15925.85/s|
|Foreach _          |100        |00:00:00.006567|1.05x        |15226.26/s|
|For loop           |100        |00:00:00.007581|1.21x        |13190.18/s|
|For _              |100        |00:00:00.009410|1.5x         |10626.2/s |
|Pipe to ScriptBlock|100        |00:00:00.014647|2.33x        |6827.1/s  |
|Foreach-Object     |100        |00:00:00.076913|12.25x       |1300.16/s |
