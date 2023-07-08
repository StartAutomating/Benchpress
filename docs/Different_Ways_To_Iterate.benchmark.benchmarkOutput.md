---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: Foreach Statement
    Time: 
      Ticks: 66828
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.73472222222222e-08
      TotalHours: 1.85633333333333e-06
      TotalMilliseconds: 6.6828
      TotalMinutes: 0.00011138
      TotalSeconds: 0.0066828
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 14963.7876339259
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 71439
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.26840277777778e-08
      TotalHours: 1.98441666666667e-06
      TotalMilliseconds: 7.1439
      TotalMinutes: 0.000119065
      TotalSeconds: 0.0071439
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.06899802478003
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 13997.9562983804
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 73322
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.48634259259259e-08
      TotalHours: 2.03672222222222e-06
      TotalMilliseconds: 7.3322
      TotalMinutes: 0.000122203333333333
      TotalSeconds: 0.0073322
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.09717483689471
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 13638.4714001255
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 100792
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.16657407407407e-07
      TotalHours: 2.79977777777778e-06
      TotalMilliseconds: 10.0792
      TotalMinutes: 0.000167986666666667
      TotalSeconds: 0.0100792
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.50823008319866
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 9921.42233510596
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 148848
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.72277777777778e-07
      TotalHours: 4.13466666666667e-06
      TotalMilliseconds: 14.8848
      TotalMinutes: 0.00024808
      TotalSeconds: 0.0148848
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.2273298617346
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 6718.26292593787
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 772028
      Days: 0
      Hours: 0
      Milliseconds: 77
      Minutes: 0
      Seconds: 0
      TotalDays: 8.93550925925926e-07
      TotalHours: 2.14452222222222e-05
      TotalMilliseconds: 77.2028
      TotalMinutes: 0.00128671333333333
      TotalSeconds: 0.0772028
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 11.5524630394445
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 1295.28980814167
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2594
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Foreach Statement  |100        |00:00:00.006682|1x           |14963.79/s|
|For loop           |100        |00:00:00.007143|1.07x        |13997.96/s|
|For _              |100        |00:00:00.007332|1.1x         |13638.47/s|
|Foreach _          |100        |00:00:00.010079|1.51x        |9921.42/s |
|Pipe to ScriptBlock|100        |00:00:00.014884|2.23x        |6718.26/s |
|Foreach-Object     |100        |00:00:00.077202|11.55x       |1295.29/s |
