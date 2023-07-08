---
layout: Benchmark

Data: 
  - Technique: Foreach Statement
    Time: 
      Ticks: 85834
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.93449074074074e-08
      TotalHours: 2.38427777777778e-06
      TotalMilliseconds: 8.5834
      TotalMinutes: 0.000143056666666667
      TotalSeconds: 0.0085834
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 11650.3949483887
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 89530
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.03622685185185e-07
      TotalHours: 2.48694444444444e-06
      TotalMilliseconds: 8.953
      TotalMinutes: 0.000149216666666667
      TotalSeconds: 0.008953
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.04305985972924
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 11169.4404110354
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 92463
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.07017361111111e-07
      TotalHours: 2.56841666666667e-06
      TotalMilliseconds: 9.2463
      TotalMinutes: 0.000154105
      TotalSeconds: 0.0092463
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.07723046811287
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 10815.136865557
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 116482
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.3481712962963e-07
      TotalHours: 3.23561111111111e-06
      TotalMilliseconds: 11.6482
      TotalMinutes: 0.000194136666666667
      TotalSeconds: 0.0116482
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.35706130437822
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 8585.01742758538
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 185056
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.14185185185185e-07
      TotalHours: 5.14044444444444e-06
      TotalMilliseconds: 18.5056
      TotalMinutes: 0.000308426666666667
      TotalSeconds: 0.0185056
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.15597548756903
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 5403.7696697216
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 1024571
      Days: 0
      Hours: 0
      Milliseconds: 102
      Minutes: 0
      Seconds: 0
      TotalDays: 1.18584606481481e-06
      TotalHours: 2.84603055555556e-05
      TotalMilliseconds: 102.4571
      TotalMinutes: 0.00170761833333333
      TotalSeconds: 0.1024571
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 11.9366568026656
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 976.01825544545
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
|Foreach Statement  |00:00:00.008583|1x           |11650.39/s|
|Foreach _          |00:00:00.008953|1.04x        |11169.44/s|
|For loop           |00:00:00.009246|1.08x        |10815.14/s|
|For _              |00:00:00.011648|1.36x        |8585.02/s |
|Pipe to ScriptBlock|00:00:00.018505|2.16x        |5403.77/s |
|Foreach-Object     |00:00:00.102457|11.94x       |976.02/s  |
