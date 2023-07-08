---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: Foreach Statement
    Time: 
      Ticks: 87665
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0146412037037e-07
      TotalHours: 2.43513888888889e-06
      TotalMilliseconds: 8.7665
      TotalMinutes: 0.000146108333333333
      TotalSeconds: 0.0087665
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 11407.0609707409
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 94173
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08996527777778e-07
      TotalHours: 2.61591666666667e-06
      TotalMilliseconds: 9.4173
      TotalMinutes: 0.000156955
      TotalSeconds: 0.0094173
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.07423715279758
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 10618.7548448069
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 133832
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.54898148148148e-07
      TotalHours: 3.71755555555556e-06
      TotalMilliseconds: 13.3832
      TotalMinutes: 0.000223053333333333
      TotalSeconds: 0.0133832
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.52662978383619
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 7472.05451610975
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 163843
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.89633101851852e-07
      TotalHours: 4.55119444444444e-06
      TotalMilliseconds: 16.3843
      TotalMinutes: 0.000273071666666667
      TotalSeconds: 0.0163843
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.8689670906291
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 6103.40386833737
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 214187
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.4790162037037e-07
      TotalHours: 5.94963888888889e-06
      TotalMilliseconds: 21.4187
      TotalMinutes: 0.000356978333333333
      TotalSeconds: 0.0214187
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.44324416814008
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 4668.81743523183
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 883014
      Days: 0
      Hours: 0
      Milliseconds: 88
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02200694444444e-06
      TotalHours: 2.45281666666667e-05
      TotalMilliseconds: 88.3014
      TotalMinutes: 0.00147169
      TotalSeconds: 0.0883014
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 10.0725945360178
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 1132.48487566449
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2295
---
Different Ways To Iterate
-------------------------
> @2295 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Foreach Statement  |00:00:00.008766|1x           |11407.06/s|
|Foreach _          |00:00:00.009417|1.07x        |10618.75/s|
|For loop           |00:00:00.013383|1.53x        |7472.05/s |
|For _              |00:00:00.016384|1.87x        |6103.4/s  |
|Pipe to ScriptBlock|00:00:00.021418|2.44x        |4668.82/s |
|Foreach-Object     |00:00:00.088301|10.07x       |1132.48/s |
