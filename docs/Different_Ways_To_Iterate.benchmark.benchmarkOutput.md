---
layout: Benchmark

Data: 
  - Technique: Foreach Statement
    Time: 
      Ticks: 60517
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.00428240740741e-08
      TotalHours: 1.68102777777778e-06
      TotalMilliseconds: 6.0517
      TotalMinutes: 0.000100861666666667
      TotalSeconds: 0.0060517
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock:  foreach ($n in 1..100) { $n }
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 16524.2824330353
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 65963
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.63460648148148e-08
      TotalHours: 1.83230555555556e-06
      TotalMilliseconds: 6.5963
      TotalMinutes: 0.000109938333333333
      TotalSeconds: 0.0065963
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: foreach ($_ in 1..100) { $_ }
    RelativeSpeed: 1.08999124213031
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 15160.0139472128
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 69046
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.99143518518518e-08
      TotalHours: 1.91794444444444e-06
      TotalMilliseconds: 6.9046
      TotalMinutes: 0.000115076666666667
      TotalSeconds: 0.0069046
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
    RelativeSpeed: 1.14093560487136
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 14483.0982243722
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 78473
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.08252314814815e-08
      TotalHours: 2.17980555555556e-06
      TotalMilliseconds: 7.8473
      TotalMinutes: 0.000130788333333333
      TotalSeconds: 0.0078473
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
    RelativeSpeed: 1.29671001536758
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 12743.2365272132
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 155494
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.79969907407407e-07
      TotalHours: 4.31927777777778e-06
      TotalMilliseconds: 15.5494
      TotalMinutes: 0.000259156666666667
      TotalSeconds: 0.0155494
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | . { process { $_ }}
    RelativeSpeed: 2.5694267726424
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 6431.11631316964
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 760756
      Days: 0
      Hours: 0
      Milliseconds: 76
      Minutes: 0
      Seconds: 0
      TotalDays: 8.8050462962963e-07
      TotalHours: 2.11321111111111e-05
      TotalMilliseconds: 76.0756
      TotalMinutes: 0.00126792666666667
      TotalSeconds: 0.0760756
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | ForEach-Object { $_ }
    RelativeSpeed: 12.5709470066262
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 1314.48191009995
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2793
---
Different Ways To Iterate
-------------------------
> @2793 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Foreach Statement  |00:00:00.006051|1x           |16524.28/s|
|Foreach _          |00:00:00.006596|1.09x        |15160.01/s|
|For _              |00:00:00.006904|1.14x        |14483.1/s |
|For loop           |00:00:00.007847|1.3x         |12743.24/s|
|Pipe to ScriptBlock|00:00:00.015549|2.57x        |6431.12/s |
|Foreach-Object     |00:00:00.076075|12.57x       |1314.48/s |
