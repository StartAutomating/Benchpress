---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: Foreach Statement
    Time: 
      Ticks: 72720
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.41666666666667e-08
      TotalHours: 2.02e-06
      TotalMilliseconds: 7.272
      TotalMinutes: 0.0001212
      TotalSeconds: 0.007272
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock:  foreach ($n in 1..100) { $n }
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 13751.3751375138
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 75100
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.69212962962963e-08
      TotalHours: 2.08611111111111e-06
      TotalMilliseconds: 7.51
      TotalMinutes: 0.000125166666666667
      TotalSeconds: 0.00751
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: foreach ($_ in 1..100) { $_ }
    RelativeSpeed: 1.03272827282728
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 13315.5792276964
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 81893
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.47835648148148e-08
      TotalHours: 2.27480555555556e-06
      TotalMilliseconds: 8.1893
      TotalMinutes: 0.000136488333333333
      TotalSeconds: 0.0081893
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
    RelativeSpeed: 1.12614136413641
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 12211.0558900028
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 93177
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0784375e-07
      TotalHours: 2.58825e-06
      TotalMilliseconds: 9.3177
      TotalMinutes: 0.000155295
      TotalSeconds: 0.0093177
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
    RelativeSpeed: 1.28131188118812
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 10732.2622535604
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 169780
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.9650462962963e-07
      TotalHours: 4.71611111111111e-06
      TotalMilliseconds: 16.978
      TotalMinutes: 0.000282966666666667
      TotalSeconds: 0.016978
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | . { process { $_ }}
    RelativeSpeed: 2.33470847084708
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 5889.9752621039
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 850135
      Days: 0
      Hours: 0
      Milliseconds: 85
      Minutes: 0
      Seconds: 0
      TotalDays: 9.83952546296296e-07
      TotalHours: 2.36148611111111e-05
      TotalMilliseconds: 85.0135
      TotalMinutes: 0.00141689166666667
      TotalSeconds: 0.0850135
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | ForEach-Object { $_ }
    RelativeSpeed: 11.6905253025303
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 1176.28376669588
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2095
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Foreach Statement  |100        |00:00:00.007272|1x           |13751.38/s|
|Foreach _          |100        |00:00:00.007510|1.03x        |13315.58/s|
|For loop           |100        |00:00:00.008189|1.13x        |12211.06/s|
|For _              |100        |00:00:00.009317|1.28x        |10732.26/s|
|Pipe to ScriptBlock|100        |00:00:00.016978|2.33x        |5889.98/s |
|Foreach-Object     |100        |00:00:00.085013|11.69x       |1176.28/s |
