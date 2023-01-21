---
layout: Benchmark

Data: 
  - Technique: For loop
    Time: 
      Ticks: 61816
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.15462962962963e-08
      TotalHours: 1.71711111111111e-06
      TotalMilliseconds: 6.1816
      TotalMinutes: 0.000103026666666667
      TotalSeconds: 0.0061816
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 16177.0415426427
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach Statement
    Time: 
      Ticks: 63140
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.30787037037037e-08
      TotalHours: 1.75388888888889e-06
      TotalMilliseconds: 6.314
      TotalMinutes: 0.000105233333333333
      TotalSeconds: 0.006314
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.02141840300246
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 15837.8207158695
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 63319
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.32858796296296e-08
      TotalHours: 1.75886111111111e-06
      TotalMilliseconds: 6.3319
      TotalMinutes: 0.000105531666666667
      TotalSeconds: 0.0063319
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.02431409343859
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 15793.0479003143
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 75397
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.72650462962963e-08
      TotalHours: 2.09436111111111e-06
      TotalMilliseconds: 7.5397
      TotalMinutes: 0.000125661666666667
      TotalSeconds: 0.0075397
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.21970040119063
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 13263.1271801265
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 151072
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.74851851851852e-07
      TotalHours: 4.19644444444444e-06
      TotalMilliseconds: 15.1072
      TotalMinutes: 0.000251786666666667
      TotalSeconds: 0.0151072
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.44389801993012
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 6619.36030502012
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 788547
      Days: 0
      Hours: 0
      Milliseconds: 78
      Minutes: 0
      Seconds: 0
      TotalDays: 9.12670138888889e-07
      TotalHours: 2.19040833333333e-05
      TotalMilliseconds: 78.8547
      TotalMinutes: 0.001314245
      TotalSeconds: 0.0788547
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 12.7563575773263
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 1268.15522727244
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
|For loop           |00:00:00.006181|1x           |16177.04/s|
|Foreach Statement  |00:00:00.006314|1.02x        |15837.82/s|
|Foreach _          |00:00:00.006331|1.02x        |15793.05/s|
|For _              |00:00:00.007539|1.22x        |13263.13/s|
|Pipe to ScriptBlock|00:00:00.015107|2.44x        |6619.36/s |
|Foreach-Object     |00:00:00.078854|12.76x       |1268.16/s |
