---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: Foreach Statement
    Time: 
      Ticks: 66150
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.65625e-08
      TotalHours: 1.8375e-06
      TotalMilliseconds: 6.615
      TotalMinutes: 0.00011025
      TotalSeconds: 0.006615
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 15117.1579743008
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 72615
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.40451388888889e-08
      TotalHours: 2.01708333333333e-06
      TotalMilliseconds: 7.2615
      TotalMinutes: 0.000121025
      TotalSeconds: 0.0072615
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.09773242630385
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 13771.2593816705
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 72888
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.43611111111111e-08
      TotalHours: 2.02466666666667e-06
      TotalMilliseconds: 7.2888
      TotalMinutes: 0.00012148
      TotalSeconds: 0.0072888
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.10185941043084
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 13719.6795082867
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 75610
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.75115740740741e-08
      TotalHours: 2.10027777777778e-06
      TotalMilliseconds: 7.561
      TotalMinutes: 0.000126016666666667
      TotalSeconds: 0.007561
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.14300831443689
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 13225.7637878587
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 152558
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.76571759259259e-07
      TotalHours: 4.23772222222222e-06
      TotalMilliseconds: 15.2558
      TotalMinutes: 0.000254263333333333
      TotalSeconds: 0.0152558
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.30624338624339
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 6554.88404410126
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 772241
      Days: 0
      Hours: 0
      Milliseconds: 77
      Minutes: 0
      Seconds: 0
      TotalDays: 8.93797453703704e-07
      TotalHours: 2.14511388888889e-05
      TotalMilliseconds: 77.2241
      TotalMinutes: 0.00128706833333333
      TotalSeconds: 0.0772241
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 11.674089191232
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 1294.9325404893
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2095
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Foreach Statement  |100        |00:00:00.006615|1x           |15117.16/s|
|For _              |100        |00:00:00.007261|1.1x         |13771.26/s|
|For loop           |100        |00:00:00.007288|1.1x         |13719.68/s|
|Foreach _          |100        |00:00:00.007561|1.14x        |13225.76/s|
|Pipe to ScriptBlock|100        |00:00:00.015255|2.31x        |6554.88/s |
|Foreach-Object     |100        |00:00:00.077224|11.67x       |1294.93/s |
