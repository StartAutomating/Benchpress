---
layout: Benchmark

Data: 
  - Technique: Foreach Statement
    Time: 
      Ticks: 64022
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.4099537037037e-08
      TotalHours: 1.77838888888889e-06
      TotalMilliseconds: 6.4022
      TotalMinutes: 0.000106703333333333
      TotalSeconds: 0.0064022
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:  foreach ($n in 1..100) { $n }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 15619.630751929
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 68880
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.97222222222222e-08
      TotalHours: 1.91333333333333e-06
      TotalMilliseconds: 6.888
      TotalMinutes: 0.0001148
      TotalSeconds: 0.006888
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.07588016619287
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 14518.0023228804
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For loop
    Time: 
      Ticks: 69622
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 8.05810185185185e-08
      TotalHours: 1.93394444444444e-06
      TotalMilliseconds: 6.9622
      TotalMinutes: 0.000116036666666667
      TotalSeconds: 0.0069622
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.0874699322108
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 14363.2759759846
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 93300
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.07986111111111e-07
      TotalHours: 2.59166666666667e-06
      TotalMilliseconds: 9.33
      TotalMinutes: 0.0001555
      TotalSeconds: 0.00933
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: foreach ($_ in 1..100) { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 1.45731154915498
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 10718.1136120043
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 140164
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.62226851851852e-07
      TotalHours: 3.89344444444444e-06
      TotalMilliseconds: 14.0164
      TotalMinutes: 0.000233606666666667
      TotalSeconds: 0.0140164
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | . { process { $_ }}
        FileName: Different Ways To Iterate
    RelativeSpeed: 2.18930992471338
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 7134.49958619902
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 766252
      Days: 0
      Hours: 0
      Milliseconds: 76
      Minutes: 0
      Seconds: 0
      TotalDays: 8.86865740740741e-07
      TotalHours: 2.12847777777778e-05
      TotalMilliseconds: 76.6252
      TotalMinutes: 0.00127708666666667
      TotalSeconds: 0.0766252
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: 1..100 | ForEach-Object { $_ }
        FileName: Different Ways To Iterate
    RelativeSpeed: 11.9685733029271
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 1305.0536899088
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
|Foreach Statement  |00:00:00.006402|1x           |15619.63/s|
|For _              |00:00:00.006888|1.08x        |14518/s   |
|For loop           |00:00:00.006962|1.09x        |14363.28/s|
|Foreach _          |00:00:00.009330|1.46x        |10718.11/s|
|Pipe to ScriptBlock|00:00:00.014016|2.19x        |7134.5/s  |
|Foreach-Object     |00:00:00.076625|11.97x       |1305.05/s |
