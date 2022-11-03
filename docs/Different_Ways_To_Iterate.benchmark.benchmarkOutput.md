---
layout: Benchmark

Data: 
  - Technique: Foreach _
    Time: 
      Ticks: 64224
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.43333333333333e-08
      TotalHours: 1.784e-06
      TotalMilliseconds: 6.4224
      TotalMinutes: 0.00010704
      TotalSeconds: 0.0064224
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 15570.5032386647
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 69706
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 8.06782407407407e-08
      TotalHours: 1.93627777777778e-06
      TotalMilliseconds: 6.9706
      TotalMinutes: 0.000116176666666667
      TotalSeconds: 0.0069706
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.08535749875436
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 14345.9673485783
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 75728
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.76481481481482e-08
      TotalHours: 2.10355555555556e-06
      TotalMilliseconds: 7.5728
      TotalMinutes: 0.000126213333333333
      TotalSeconds: 0.0075728
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.1791230692576
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 13205.1552926262
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach Statement
    Time: 
      Ticks: 115148
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.33273148148148e-07
      TotalHours: 3.19855555555556e-06
      TotalMilliseconds: 11.5148
      TotalMinutes: 0.000191913333333333
      TotalSeconds: 0.0115148
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.79291230692576
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 8684.47563136138
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 170046
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 1.968125e-07
      TotalHours: 4.7235e-06
      TotalMilliseconds: 17.0046
      TotalMinutes: 0.00028341
      TotalSeconds: 0.0170046
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.64770179372197
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 5880.76167625231
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 770490
      Days: 0
      Hours: 0
      Milliseconds: 77
      Minutes: 0
      Seconds: 0
      TotalDays: 8.91770833333333e-07
      TotalHours: 2.14025e-05
      TotalMilliseconds: 77.049
      TotalMinutes: 0.00128415
      TotalSeconds: 0.077049
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 11.9969170403587
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 1297.8753780062
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2594
---
Different Ways To Iterate
-------------------------
> @2594 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Foreach _          |00:00:00.006422|1x           |15570.5/s |
|For loop           |00:00:00.006970|1.09x        |14345.97/s|
|For _              |00:00:00.007572|1.18x        |13205.16/s|
|Foreach Statement  |00:00:00.011514|1.79x        |8684.48/s |
|Pipe to ScriptBlock|00:00:00.017004|2.65x        |5880.76/s |
|Foreach-Object     |00:00:00.077049|12x          |1297.88/s |
