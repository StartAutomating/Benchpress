---
layout: Benchmark

Data: 
  - Technique: Foreach Statement
    Time: 
      Ticks: 73935
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.55729166666667e-08
      TotalHours: 2.05375e-06
      TotalMilliseconds: 7.3935
      TotalMinutes: 0.000123225
      TotalSeconds: 0.0073935
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    Throughput: 13525.3939270981
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 77013
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.91354166666667e-08
      TotalHours: 2.13925e-06
      TotalMilliseconds: 7.7013
      TotalMinutes: 0.000128355
      TotalSeconds: 0.0077013
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.04163116250761
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    Throughput: 12984.8207445496
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 81202
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.39837962962963e-08
      TotalHours: 2.25561111111111e-06
      TotalMilliseconds: 8.1202
      TotalMinutes: 0.000135336666666667
      TotalSeconds: 0.0081202
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.09828903766822
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    Throughput: 12314.9676116352
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 88152
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02027777777778e-07
      TotalHours: 2.44866666666667e-06
      TotalMilliseconds: 8.8152
      TotalMinutes: 0.00014692
      TotalSeconds: 0.0088152
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.19229052546155
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    Throughput: 11344.0421090843
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 215754
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.49715277777778e-07
      TotalHours: 5.99316666666667e-06
      TotalMilliseconds: 21.5754
      TotalMinutes: 0.00035959
      TotalSeconds: 0.0215754
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.91815784134713
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    Throughput: 4634.90827516523
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 877030
      Days: 0
      Hours: 0
      Milliseconds: 87
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01508101851852e-06
      TotalHours: 2.43619444444444e-05
      TotalMilliseconds: 87.703
      TotalMinutes: 0.00146171666666667
      TotalSeconds: 0.087703
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 11.8621762358829
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    Throughput: 1140.21185136198
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2095
---
Different Ways To Iterate
-------------------------
> @2095 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Foreach Statement  |00:00:00.007393|1x           |13525.39/s|
|Foreach _          |00:00:00.007701|1.04x        |12984.82/s|
|For loop           |00:00:00.008120|1.1x         |12314.97/s|
|For _              |00:00:00.008815|1.19x        |11344.04/s|
|Pipe to ScriptBlock|00:00:00.021575|2.92x        |4634.91/s |
|Foreach-Object     |00:00:00.087703|11.86x       |1140.21/s |
