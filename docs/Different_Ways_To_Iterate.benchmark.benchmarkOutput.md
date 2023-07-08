---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: Foreach Statement
    Time: 
      Ticks: 91623
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.06045138888889e-07
      TotalHours: 2.54508333333333e-06
      TotalMilliseconds: 9.1623
      TotalMinutes: 0.000152705
      TotalSeconds: 0.0091623
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 10914.2900800017
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 92724
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.07319444444444e-07
      TotalHours: 2.57566666666667e-06
      TotalMilliseconds: 9.2724
      TotalMinutes: 0.00015454
      TotalSeconds: 0.0092724
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.01201663337808
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 10784.6943617618
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 102778
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.18956018518519e-07
      TotalHours: 2.85494444444444e-06
      TotalMilliseconds: 10.2778
      TotalMinutes: 0.000171296666666667
      TotalSeconds: 0.0102778
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.12174890584242
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 9729.70869252175
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 110683
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.28105324074074e-07
      TotalHours: 3.07452777777778e-06
      TotalMilliseconds: 11.0683
      TotalMinutes: 0.000184471666666667
      TotalSeconds: 0.0110683
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.20802636892483
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 9034.81112727338
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 229169
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.65241898148148e-07
      TotalHours: 6.36580555555556e-06
      TotalMilliseconds: 22.9169
      TotalMinutes: 0.000381948333333333
      TotalSeconds: 0.0229169
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.50121694334392
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 4363.59193433667
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 1126913
      Days: 0
      Hours: 0
      Milliseconds: 112
      Minutes: 0
      Seconds: 0
      TotalDays: 1.3042974537037e-06
      TotalHours: 3.13031388888889e-05
      TotalMilliseconds: 112.6913
      TotalMinutes: 0.00187818833333333
      TotalSeconds: 0.1126913
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 12.299455376925
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 887.379948585206
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2295
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Foreach Statement  |100        |00:00:00.009162|1x           |10914.29/s|
|Foreach _          |100        |00:00:00.009272|1.01x        |10784.69/s|
|For loop           |100        |00:00:00.010277|1.12x        |9729.71/s |
|For _              |100        |00:00:00.011068|1.21x        |9034.81/s |
|Pipe to ScriptBlock|100        |00:00:00.022916|2.5x         |4363.59/s |
|Foreach-Object     |100        |00:00:00.112691|12.3x        |887.38/s  |
