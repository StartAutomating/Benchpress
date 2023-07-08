---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: Foreach _
    Time: 
      Ticks: 83425
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.6556712962963e-08
      TotalHours: 2.31736111111111e-06
      TotalMilliseconds: 8.3425
      TotalMinutes: 0.000139041666666667
      TotalSeconds: 0.0083425
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: foreach ($_ in 1..100) { $_ }
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 11986.8145040456
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 83966
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.71828703703704e-08
      TotalHours: 2.33238888888889e-06
      TotalMilliseconds: 8.3966
      TotalMinutes: 0.000139943333333333
      TotalSeconds: 0.0083966
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
    RelativeSpeed: 1.00648486664669
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 11909.5824500393
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 97320
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.12638888888889e-07
      TotalHours: 2.70333333333333e-06
      TotalMilliseconds: 9.732
      TotalMinutes: 0.0001622
      TotalSeconds: 0.009732
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
    RelativeSpeed: 1.16655678753371
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 10275.380189067
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach Statement
    Time: 
      Ticks: 101829
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.17857638888889e-07
      TotalHours: 2.82858333333333e-06
      TotalMilliseconds: 10.1829
      TotalMinutes: 0.000169715
      TotalSeconds: 0.0101829
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock:  foreach ($n in 1..100) { $n }
    RelativeSpeed: 1.22060533413245
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 9820.3851555058
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 190204
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.20143518518519e-07
      TotalHours: 5.28344444444444e-06
      TotalMilliseconds: 19.0204
      TotalMinutes: 0.000317006666666667
      TotalSeconds: 0.0190204
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | . { process { $_ }}
    RelativeSpeed: 2.27994006592748
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 5257.51298605708
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 1072559
      Days: 0
      Hours: 0
      Milliseconds: 107
      Minutes: 0
      Seconds: 0
      TotalDays: 1.24138773148148e-06
      TotalHours: 2.97933055555556e-05
      TotalMilliseconds: 107.2559
      TotalMinutes: 0.00178759833333333
      TotalSeconds: 0.1072559
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | ForEach-Object { $_ }
    RelativeSpeed: 12.8565657776446
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 932.34964230406
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2295
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Foreach _          |100        |00:00:00.008342|1x           |11986.81/s|
|For loop           |100        |00:00:00.008396|1.01x        |11909.58/s|
|For _              |100        |00:00:00.009732|1.17x        |10275.38/s|
|Foreach Statement  |100        |00:00:00.010182|1.22x        |9820.39/s |
|Pipe to ScriptBlock|100        |00:00:00.019020|2.28x        |5257.51/s |
|Foreach-Object     |100        |00:00:00.107255|12.86x       |932.35/s  |
