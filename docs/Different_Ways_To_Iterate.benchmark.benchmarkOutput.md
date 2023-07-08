---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: For loop
    Time: 
      Ticks: 63005
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.29224537037037e-08
      TotalHours: 1.75013888888889e-06
      TotalMilliseconds: 6.3005
      TotalMinutes: 0.000105008333333333
      TotalSeconds: 0.0063005
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 15871.7562098246
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 63414
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.33958333333333e-08
      TotalHours: 1.7615e-06
      TotalMilliseconds: 6.3414
      TotalMinutes: 0.00010569
      TotalSeconds: 0.0063414
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: foreach ($_ in 1..100) { $_ }
    RelativeSpeed: 1.00649154828982
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 15769.3884631154
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach Statement
    Time: 
      Ticks: 66076
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.64768518518519e-08
      TotalHours: 1.83544444444444e-06
      TotalMilliseconds: 6.6076
      TotalMinutes: 0.000110126666666667
      TotalSeconds: 0.0066076
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock:  foreach ($n in 1..100) { $n }
    RelativeSpeed: 1.04874216332037
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 15134.0880198559
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 74878
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.66643518518519e-08
      TotalHours: 2.07994444444444e-06
      TotalMilliseconds: 7.4878
      TotalMinutes: 0.000124796666666667
      TotalSeconds: 0.0074878
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
    RelativeSpeed: 1.18844536147925
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 13355.0575602981
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 169530
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.96215277777778e-07
      TotalHours: 4.70916666666667e-06
      TotalMilliseconds: 16.953
      TotalMinutes: 0.00028255
      TotalSeconds: 0.016953
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | . { process { $_ }}
    RelativeSpeed: 2.69073883025157
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 5898.6610039521
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 797882
      Days: 0
      Hours: 0
      Milliseconds: 79
      Minutes: 0
      Seconds: 0
      TotalDays: 9.23474537037037e-07
      TotalHours: 2.21633888888889e-05
      TotalMilliseconds: 79.7882
      TotalMinutes: 0.00132980333333333
      TotalSeconds: 0.0797882
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | ForEach-Object { $_ }
    RelativeSpeed: 12.6637885882073
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 1253.31815982814
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2594
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|For loop           |100        |00:00:00.006300|1x           |15871.76/s|
|Foreach _          |100        |00:00:00.006341|1.01x        |15769.39/s|
|Foreach Statement  |100        |00:00:00.006607|1.05x        |15134.09/s|
|For _              |100        |00:00:00.007487|1.19x        |13355.06/s|
|Pipe to ScriptBlock|100        |00:00:00.016953|2.69x        |5898.66/s |
|Foreach-Object     |100        |00:00:00.079788|12.66x       |1253.32/s |
