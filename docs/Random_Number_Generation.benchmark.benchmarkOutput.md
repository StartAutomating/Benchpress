---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 62402
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.2224537037037e-08
      TotalHours: 1.73338888888889e-06
      TotalMilliseconds: 6.2402
      TotalMinutes: 0.000104003333333333
      TotalSeconds: 0.0062402
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 16025.1273997628
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 69890
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 8.08912037037037e-08
      TotalHours: 1.94138888888889e-06
      TotalMilliseconds: 6.989
      TotalMinutes: 0.000116483333333333
      TotalSeconds: 0.006989
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  [Random]::new().Next()
              
    RelativeSpeed: 1.11999615396942
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 14308.1985977965
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: GetRandom
    Time: 
      Ticks: 149048
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.72509259259259e-07
      TotalHours: 4.14022222222222e-06
      TotalMilliseconds: 14.9048
      TotalMinutes: 0.000248413333333333
      TotalSeconds: 0.0149048
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  Get-Random
              
    RelativeSpeed: 2.38851318867985
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 6709.24802748108
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 66886
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.74143518518518e-08
      TotalHours: 1.85794444444444e-06
      TotalMilliseconds: 6.6886
      TotalMinutes: 0.000111476666666667
      TotalSeconds: 0.0066886
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 14950.8118290823
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: QuickRandom
    Time: 
      Ticks: 90192
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04388888888889e-07
      TotalHours: 2.50533333333333e-06
      TotalMilliseconds: 9.0192
      TotalMinutes: 0.00015032
      TotalSeconds: 0.0090192
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
    RelativeSpeed: 1.34844362048859
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 11087.4578676601
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: GetRandom
    Time: 
      Ticks: 177935
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.05943287037037e-07
      TotalHours: 4.94263888888889e-06
      TotalMilliseconds: 17.7935
      TotalMinutes: 0.000296558333333333
      TotalSeconds: 0.0177935
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
    RelativeSpeed: 2.66027270280776
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 5620.02978615787
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 10519
      Days: 0
      Hours: 0
      Milliseconds: 1
      Minutes: 0
      Seconds: 0
      TotalDays: 1.21747685185185e-08
      TotalHours: 2.92194444444444e-07
      TotalMilliseconds: 1.0519
      TotalMinutes: 1.75316666666667e-05
      TotalSeconds: 0.0010519
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (Random Byte Buffer)
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 9506.60709192889
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
  - Technique: QuickRandom
    Time: 
      Ticks: 33442
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 3.87060185185185e-08
      TotalHours: 9.28944444444444e-07
      TotalMilliseconds: 3.3442
      TotalMinutes: 5.57366666666667e-05
      TotalSeconds: 0.0033442
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (Random Byte Buffer)
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        RepeatCount: 10
    RelativeSpeed: 3.17919954368286
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 2990.25177919981
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
  - Technique: GetRandom
    Time: 
      Ticks: 10312430
      Days: 0
      Hours: 0
      Milliseconds: 31
      Minutes: 0
      Seconds: 1
      TotalDays: 1.19356828703704e-05
      TotalHours: 0.000286456388888889
      TotalMilliseconds: 1031.243
      TotalMinutes: 0.0171873833333333
      TotalSeconds: 1.031243
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (Random Byte Buffer)
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        RepeatCount: 10
    RelativeSpeed: 980.362201730202
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 9.6970355192714
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
FileName: Random Number Generation
ClockSpeed: 2295
---


### (AnyRandomNumber)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|QuickRandom           |100        |00:00:00.006240|1x           |16025.13/s|
|[Random]::New().Next()|100        |00:00:00.006989|1.12x        |14308.2/s |
|GetRandom             |100        |00:00:00.014904|2.39x        |6709.25/s |


### (Min and Max)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|100        |00:00:00.006688|1x           |14950.81/s|
|QuickRandom           |100        |00:00:00.009019|1.35x        |11087.46/s|
|GetRandom             |100        |00:00:00.017793|2.66x        |5620.03/s |


### (Random Byte Buffer)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|10         |00:00:00.001051|1x           |9506.61/s |
|QuickRandom           |10         |00:00:00.003344|3.18x        |2990.25/s |
|GetRandom             |10         |00:00:01.031243|980.36x      |9.7/s     |
