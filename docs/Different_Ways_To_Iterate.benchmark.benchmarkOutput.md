---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: Foreach _
    Time: 
      Ticks: 60514
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.00393518518518e-08
      TotalHours: 1.68094444444444e-06
      TotalMilliseconds: 6.0514
      TotalMinutes: 0.000100856666666667
      TotalSeconds: 0.0060514
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: foreach ($_ in 1..100) { $_ }
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 16525.101629375
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach Statement
    Time: 
      Ticks: 62126
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.19050925925926e-08
      TotalHours: 1.72572222222222e-06
      TotalMilliseconds: 6.2126
      TotalMinutes: 0.000103543333333333
      TotalSeconds: 0.0062126
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock:  foreach ($n in 1..100) { $n }
    RelativeSpeed: 1.02663846382655
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 16096.3203811609
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 62157
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.19409722222222e-08
      TotalHours: 1.72658333333333e-06
      TotalMilliseconds: 6.2157
      TotalMinutes: 0.000103595
      TotalSeconds: 0.0062157
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
    RelativeSpeed: 1.02715074197706
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 16088.2925495117
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 71709
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.29965277777778e-08
      TotalHours: 1.99191666666667e-06
      TotalMilliseconds: 7.1709
      TotalMinutes: 0.000119515
      TotalSeconds: 0.0071709
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
    RelativeSpeed: 1.18499851274085
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 13945.2509447908
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 144010
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.66678240740741e-07
      TotalHours: 4.00027777777778e-06
      TotalMilliseconds: 14.401
      TotalMinutes: 0.000240016666666667
      TotalSeconds: 0.014401
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | . { process { $_ }}
    RelativeSpeed: 2.3797798856463
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 6943.9622248455
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 760079
      Days: 0
      Hours: 0
      Milliseconds: 76
      Minutes: 0
      Seconds: 0
      TotalDays: 8.79721064814815e-07
      TotalHours: 2.11133055555556e-05
      TotalMilliseconds: 76.0079
      TotalMinutes: 0.00126679833333333
      TotalSeconds: 0.0760079
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | ForEach-Object { $_ }
    RelativeSpeed: 12.5603827213537
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 1315.65271504673
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2793
---


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Foreach _          |00:00:00.006051|1x           |16525.1/s |
|Foreach Statement  |00:00:00.006212|1.03x        |16096.32/s|
|For loop           |00:00:00.006215|1.03x        |16088.29/s|
|For _              |00:00:00.007170|1.18x        |13945.25/s|
|Pipe to ScriptBlock|00:00:00.014401|2.38x        |6943.96/s |
|Foreach-Object     |00:00:00.076007|12.56x       |1315.65/s |
