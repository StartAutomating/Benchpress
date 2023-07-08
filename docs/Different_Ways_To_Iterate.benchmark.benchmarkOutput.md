---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: Foreach Statement
    Time: 
      Ticks: 77205
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.93576388888889e-08
      TotalHours: 2.14458333333333e-06
      TotalMilliseconds: 7.7205
      TotalMinutes: 0.000128675
      TotalSeconds: 0.0077205
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 12952.5289812836
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 82261
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.52094907407407e-08
      TotalHours: 2.28502777777778e-06
      TotalMilliseconds: 8.2261
      TotalMinutes: 0.000137101666666667
      TotalSeconds: 0.0082261
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.06548798652937
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 12156.4289274383
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 85286
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.87106481481482e-08
      TotalHours: 2.36905555555556e-06
      TotalMilliseconds: 8.5286
      TotalMinutes: 0.000142143333333333
      TotalSeconds: 0.0085286
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.10466938669775
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 11725.2538517459
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 99587
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.15262731481481e-07
      TotalHours: 2.76630555555556e-06
      TotalMilliseconds: 9.9587
      TotalMinutes: 0.000165978333333333
      TotalSeconds: 0.0099587
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.28990350365909
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 10041.4712763714
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 170718
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 1.97590277777778e-07
      TotalHours: 4.74216666666667e-06
      TotalMilliseconds: 17.0718
      TotalMinutes: 0.00028453
      TotalSeconds: 0.0170718
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.21122984262677
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 5857.61313979779
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 897276
      Days: 0
      Hours: 0
      Milliseconds: 89
      Minutes: 0
      Seconds: 0
      TotalDays: 1.03851388888889e-06
      TotalHours: 2.49243333333333e-05
      TotalMilliseconds: 89.7276
      TotalMinutes: 0.00149546
      TotalSeconds: 0.0897276
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 11.6219933942102
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 1114.48428354263
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2095
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Foreach Statement  |100        |00:00:00.007720|1x           |12952.53/s|
|For _              |100        |00:00:00.008226|1.07x        |12156.43/s|
|For loop           |100        |00:00:00.008528|1.1x         |11725.25/s|
|Foreach _          |100        |00:00:00.009958|1.29x        |10041.47/s|
|Pipe to ScriptBlock|100        |00:00:00.017071|2.21x        |5857.61/s |
|Foreach-Object     |100        |00:00:00.089727|11.62x       |1114.48/s |
