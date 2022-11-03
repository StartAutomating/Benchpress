---
layout: Benchmark

Data: 
  - Technique: Foreach Statement
    Time: 
      Ticks: 85560
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.90277777777778e-08
      TotalHours: 2.37666666666667e-06
      TotalMilliseconds: 8.556
      TotalMinutes: 0.0001426
      TotalSeconds: 0.008556
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2394
    FileName: Different Ways To Iterate
    Throughput: 11687.7045348294
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 90771
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05059027777778e-07
      TotalHours: 2.52141666666667e-06
      TotalMilliseconds: 9.0771
      TotalMinutes: 0.000151285
      TotalSeconds: 0.0090771
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.060904628331
    ClockSpeed: 2394
    FileName: Different Ways To Iterate
    Throughput: 11016.7344195833
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 93050
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.07696759259259e-07
      TotalHours: 2.58472222222222e-06
      TotalMilliseconds: 9.305
      TotalMinutes: 0.000155083333333333
      TotalSeconds: 0.009305
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.08754090696587
    ClockSpeed: 2394
    FileName: Different Ways To Iterate
    Throughput: 10746.9102632993
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 96943
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.12202546296296e-07
      TotalHours: 2.69286111111111e-06
      TotalMilliseconds: 9.6943
      TotalMinutes: 0.000161571666666667
      TotalSeconds: 0.0096943
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.13304114071996
    ClockSpeed: 2394
    FileName: Different Ways To Iterate
    Throughput: 10315.3399420278
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 223298
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.58446759259259e-07
      TotalHours: 6.20272222222222e-06
      TotalMilliseconds: 22.3298
      TotalMinutes: 0.000372163333333333
      TotalSeconds: 0.0223298
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.60984104721833
    ClockSpeed: 2394
    FileName: Different Ways To Iterate
    Throughput: 4478.32045069817
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 917285
      Days: 0
      Hours: 0
      Milliseconds: 91
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0616724537037e-06
      TotalHours: 2.54801388888889e-05
      TotalMilliseconds: 91.7285
      TotalMinutes: 0.00152880833333333
      TotalSeconds: 0.0917285
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 10.7209560542309
    ClockSpeed: 2394
    FileName: Different Ways To Iterate
    Throughput: 1090.17371918215
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2394
---
Different Ways To Iterate
-------------------------
> @2394 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Foreach Statement  |00:00:00.008556|1x           |11687.7/s |
|Foreach _          |00:00:00.009077|1.06x        |11016.73/s|
|For _              |00:00:00.009305|1.09x        |10746.91/s|
|For loop           |00:00:00.009694|1.13x        |10315.34/s|
|Pipe to ScriptBlock|00:00:00.022329|2.61x        |4478.32/s |
|Foreach-Object     |00:00:00.091728|10.72x       |1090.17/s |
