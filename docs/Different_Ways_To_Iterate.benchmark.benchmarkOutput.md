---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: Foreach _
    Time: 
      Ticks: 78088
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.03796296296296e-08
      TotalHours: 2.16911111111111e-06
      TotalMilliseconds: 7.8088
      TotalMinutes: 0.000130146666666667
      TotalSeconds: 0.0078088
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: foreach ($_ in 1..100) { $_ }
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 12806.0649523614
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 83308
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.64212962962963e-08
      TotalHours: 2.31411111111111e-06
      TotalMilliseconds: 8.3308
      TotalMinutes: 0.000138846666666667
      TotalSeconds: 0.0083308
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
    RelativeSpeed: 1.06684765905133
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 12003.6491093292
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 83381
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.6505787037037e-08
      TotalHours: 2.31613888888889e-06
      TotalMilliseconds: 8.3381
      TotalMinutes: 0.000138968333333333
      TotalSeconds: 0.0083381
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
    RelativeSpeed: 1.06778250179285
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 11993.1399239635
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach Statement
    Time: 
      Ticks: 87045
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.00746527777778e-07
      TotalHours: 2.41791666666667e-06
      TotalMilliseconds: 8.7045
      TotalMinutes: 0.000145075
      TotalSeconds: 0.0087045
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock:  foreach ($n in 1..100) { $n }
    RelativeSpeed: 1.1147039237783
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 11488.3106439198
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 175533
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.03163194444444e-07
      TotalHours: 4.87591666666667e-06
      TotalMilliseconds: 17.5533
      TotalMinutes: 0.000292555
      TotalSeconds: 0.0175533
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | . { process { $_ }}
    RelativeSpeed: 2.24788699928286
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 5696.93447955655
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 919199
      Days: 0
      Hours: 0
      Milliseconds: 91
      Minutes: 0
      Seconds: 0
      TotalDays: 1.06388773148148e-06
      TotalHours: 2.55333055555556e-05
      TotalMilliseconds: 91.9199
      TotalMinutes: 0.00153199833333333
      TotalSeconds: 0.0919199
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | ForEach-Object { $_ }
    RelativeSpeed: 11.7713220981457
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 1087.90370746704
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2095
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Foreach _          |100        |00:00:00.007808|1x           |12806.06/s|
|For _              |100        |00:00:00.008330|1.07x        |12003.65/s|
|For loop           |100        |00:00:00.008338|1.07x        |11993.14/s|
|Foreach Statement  |100        |00:00:00.008704|1.11x        |11488.31/s|
|Pipe to ScriptBlock|100        |00:00:00.017553|2.25x        |5696.93/s |
|Foreach-Object     |100        |00:00:00.091919|11.77x       |1087.9/s  |
