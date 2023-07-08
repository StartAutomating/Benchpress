---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: For loop
    Time: 
      Ticks: 62961
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.28715277777778e-08
      TotalHours: 1.74891666666667e-06
      TotalMilliseconds: 6.2961
      TotalMinutes: 0.000104935
      TotalSeconds: 0.0062961
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 15882.8481123235
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 65270
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.55439814814815e-08
      TotalHours: 1.81305555555556e-06
      TotalMilliseconds: 6.527
      TotalMinutes: 0.000108783333333333
      TotalSeconds: 0.006527
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.03667349629136
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 15320.9744139727
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach Statement
    Time: 
      Ticks: 65649
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.59826388888889e-08
      TotalHours: 1.82358333333333e-06
      TotalMilliseconds: 6.5649
      TotalMinutes: 0.000109415
      TotalSeconds: 0.0065649
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.04269309572593
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 15232.5244862831
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 78895
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.13136574074074e-08
      TotalHours: 2.19152777777778e-06
      TotalMilliseconds: 7.8895
      TotalMinutes: 0.000131491666666667
      TotalSeconds: 0.0078895
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.25307730182176
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 12675.0744660625
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 165496
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.91546296296296e-07
      TotalHours: 4.59711111111111e-06
      TotalMilliseconds: 16.5496
      TotalMinutes: 0.000275826666666667
      TotalSeconds: 0.0165496
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.62854783119709
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 6042.44211340455
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 810881
      Days: 0
      Hours: 0
      Milliseconds: 81
      Minutes: 0
      Seconds: 0
      TotalDays: 9.38519675925926e-07
      TotalHours: 2.25244722222222e-05
      TotalMilliseconds: 81.0881
      TotalMinutes: 0.00135146833333333
      TotalSeconds: 0.0810881
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 12.879099760169
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 1233.22657701932
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2594
---


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|For loop           |00:00:00.006296|1x           |15882.85/s|
|Foreach _          |00:00:00.006527|1.04x        |15320.97/s|
|Foreach Statement  |00:00:00.006564|1.04x        |15232.52/s|
|For _              |00:00:00.007889|1.25x        |12675.07/s|
|Pipe to ScriptBlock|00:00:00.016549|2.63x        |6042.44/s |
|Foreach-Object     |00:00:00.081088|12.88x       |1233.23/s |
