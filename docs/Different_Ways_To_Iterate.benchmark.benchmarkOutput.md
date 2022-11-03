---
layout: Benchmark

Data: 
  - Technique: Foreach _
    Time: 
      Ticks: 86500
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.00115740740741e-07
      TotalHours: 2.40277777777778e-06
      TotalMilliseconds: 8.65
      TotalMinutes: 0.000144166666666667
      TotalSeconds: 0.00865
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: foreach ($_ in 1..100) { $_ }
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 11560.6936416185
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 90019
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04188657407407e-07
      TotalHours: 2.50052777777778e-06
      TotalMilliseconds: 9.0019
      TotalMinutes: 0.000150031666666667
      TotalSeconds: 0.0090019
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
    RelativeSpeed: 1.04068208092486
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 11108.7659271931
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 97355
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.12679398148148e-07
      TotalHours: 2.70430555555556e-06
      TotalMilliseconds: 9.7355
      TotalMinutes: 0.000162258333333333
      TotalSeconds: 0.0097355
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
    RelativeSpeed: 1.12549132947977
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 10271.6860972729
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach Statement
    Time: 
      Ticks: 103256
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.19509259259259e-07
      TotalHours: 2.86822222222222e-06
      TotalMilliseconds: 10.3256
      TotalMinutes: 0.000172093333333333
      TotalSeconds: 0.0103256
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock:  foreach ($n in 1..100) { $n }
    RelativeSpeed: 1.19371098265896
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 9684.66723483381
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 317750
      Days: 0
      Hours: 0
      Milliseconds: 31
      Minutes: 0
      Seconds: 0
      TotalDays: 3.67766203703704e-07
      TotalHours: 8.82638888888889e-06
      TotalMilliseconds: 31.775
      TotalMinutes: 0.000529583333333333
      TotalSeconds: 0.031775
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | . { process { $_ }}
    RelativeSpeed: 3.67341040462428
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 3147.128245476
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 970533
      Days: 0
      Hours: 0
      Milliseconds: 97
      Minutes: 0
      Seconds: 0
      TotalDays: 1.12330208333333e-06
      TotalHours: 2.695925e-05
      TotalMilliseconds: 97.0533
      TotalMinutes: 0.001617555
      TotalSeconds: 0.0970533
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | ForEach-Object { $_ }
    RelativeSpeed: 11.2200346820809
    ClockSpeed: 2295
    FileName: Different Ways To Iterate
    Throughput: 1030.36166724882
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
|Foreach _          |00:00:00.008650|1x           |11560.69/s|
|For loop           |00:00:00.009001|1.04x        |11108.77/s|
|For _              |00:00:00.009735|1.13x        |10271.69/s|
|Foreach Statement  |00:00:00.010325|1.19x        |9684.67/s |
|Pipe to ScriptBlock|00:00:00.031775|3.67x        |3147.13/s |
|Foreach-Object     |00:00:00.097053|11.22x       |1030.36/s |
