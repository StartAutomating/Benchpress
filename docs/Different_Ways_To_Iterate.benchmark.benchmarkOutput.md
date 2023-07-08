---
layout: Benchmark
title: Different Ways To Iterate

Data: 
  - Technique: For loop
    Time: 
      Ticks: 57916
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.70324074074074e-08
      TotalHours: 1.60877777777778e-06
      TotalMilliseconds: 5.7916
      TotalMinutes: 9.65266666666667e-05
      TotalSeconds: 0.0057916
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $i =1; $i -le 100; $i++) { $i } 
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 17266.3858001243
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach _
    Time: 
      Ticks: 62150
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.19328703703704e-08
      TotalHours: 1.72638888888889e-06
      TotalMilliseconds: 6.215
      TotalMinutes: 0.000103583333333333
      TotalSeconds: 0.006215
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: foreach ($_ in 1..100) { $_ }
    RelativeSpeed: 1.07310587747773
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 16090.1045856798
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: For _
    Time: 
      Ticks: 63749
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.37835648148148e-08
      TotalHours: 1.77080555555556e-06
      TotalMilliseconds: 6.3749
      TotalMinutes: 0.000106248333333333
      TotalSeconds: 0.0063749
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: for ( $_ =1; $_ -le 100; $_++) { $_ } 
    RelativeSpeed: 1.10071482837213
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 15686.5205728717
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Pipe to ScriptBlock
    Time: 
      Ticks: 135876
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.57263888888889e-07
      TotalHours: 3.77433333333333e-06
      TotalMilliseconds: 13.5876
      TotalMinutes: 0.00022646
      TotalSeconds: 0.0135876
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | . { process { $_ }}
    RelativeSpeed: 2.34608743697769
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 7359.65144690747
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach Statement
    Time: 
      Ticks: 146190
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.69201388888889e-07
      TotalHours: 4.06083333333333e-06
      TotalMilliseconds: 14.619
      TotalMinutes: 0.00024365
      TotalSeconds: 0.014619
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock:  foreach ($n in 1..100) { $n }
    RelativeSpeed: 2.52417294012017
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 6840.41316095492
    BenchmarkInput: 
      FileName: Different Ways To Iterate
  - Technique: Foreach-Object
    Time: 
      Ticks: 679704
      Days: 0
      Hours: 0
      Milliseconds: 67
      Minutes: 0
      Seconds: 0
      TotalDays: 7.86694444444444e-07
      TotalHours: 1.88806666666667e-05
      TotalMilliseconds: 67.9704
      TotalMinutes: 0.00113284
      TotalSeconds: 0.0679704
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Iterate
        ScriptBlock: 1..100 | ForEach-Object { $_ }
    RelativeSpeed: 11.7360314938877
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    RepeatCount: 100
    Throughput: 1471.22865247225
    BenchmarkInput: 
      FileName: Different Ways To Iterate
FileName: Different Ways To Iterate
ClockSpeed: 2095
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|For loop           |100        |00:00:00.005791|1x           |17266.39/s|
|Foreach _          |100        |00:00:00.006215|1.07x        |16090.1/s |
|For _              |100        |00:00:00.006374|1.1x         |15686.52/s|
|Pipe to ScriptBlock|100        |00:00:00.013587|2.35x        |7359.65/s |
|Foreach Statement  |100        |00:00:00.014619|2.52x        |6840.41/s |
|Foreach-Object     |100        |00:00:00.067970|11.74x       |1471.23/s |
