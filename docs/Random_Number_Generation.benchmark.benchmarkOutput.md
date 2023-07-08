---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 42208
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.88518518518519e-08
      TotalHours: 1.17244444444444e-06
      TotalMilliseconds: 4.2208
      TotalMinutes: 7.03466666666667e-05
      TotalSeconds: 0.0042208
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 23692.1910538287
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 43416
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.025e-08
      TotalHours: 1.206e-06
      TotalMilliseconds: 4.3416
      TotalMinutes: 7.236e-05
      TotalSeconds: 0.0043416
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1.02862016679303
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 23032.9832319882
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: GetRandom
    Time: 
      Ticks: 472278
      Days: 0
      Hours: 0
      Milliseconds: 47
      Minutes: 0
      Seconds: 0
      TotalDays: 5.46618055555556e-07
      TotalHours: 1.31188333333333e-05
      TotalMilliseconds: 47.2278
      TotalMinutes: 0.00078713
      TotalSeconds: 0.0472278
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 11.1893006065201
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 2117.39695687709
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 44079
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.10173611111111e-08
      TotalHours: 1.22441666666667e-06
      TotalMilliseconds: 4.4079
      TotalMinutes: 7.3465e-05
      TotalSeconds: 0.0044079
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 22686.540075773
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: QuickRandom
    Time: 
      Ticks: 65527
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.58414351851852e-08
      TotalHours: 1.82019444444444e-06
      TotalMilliseconds: 6.5527
      TotalMinutes: 0.000109211666666667
      TotalSeconds: 0.0065527
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 1.48658091154518
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 15260.8848261022
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: GetRandom
    Time: 
      Ticks: 111300
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.28819444444444e-07
      TotalHours: 3.09166666666667e-06
      TotalMilliseconds: 11.13
      TotalMinutes: 0.0001855
      TotalSeconds: 0.01113
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 2.52501191043354
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 8984.72596585804
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 8521
      Days: 0
      Hours: 0
      Milliseconds: 0
      Minutes: 0
      Seconds: 0
      TotalDays: 9.86226851851852e-09
      TotalHours: 2.36694444444444e-07
      TotalMilliseconds: 0.8521
      TotalMinutes: 1.42016666666667e-05
      TotalSeconds: 0.0008521
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        FileName: Random Number Generation
        RepeatCount: 10
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 11735.7117709189
    BenchmarkInput: 
      FileName: Random Number Generation
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
  - Technique: QuickRandom
    Time: 
      Ticks: 25979
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 3.0068287037037e-08
      TotalHours: 7.21638888888889e-07
      TotalMilliseconds: 2.5979
      TotalMinutes: 4.32983333333333e-05
      TotalSeconds: 0.0025979
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        FileName: Random Number Generation
        RepeatCount: 10
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 3.04882056096702
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 3849.26286616113
    BenchmarkInput: 
      FileName: Random Number Generation
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
  - Technique: GetRandom
    Time: 
      Ticks: 7217312
      Days: 0
      Hours: 0
      Milliseconds: 721
      Minutes: 0
      Seconds: 0
      TotalDays: 8.35337037037037e-06
      TotalHours: 0.000200480888888889
      TotalMilliseconds: 721.7312
      TotalMinutes: 0.0120288533333333
      TotalSeconds: 0.7217312
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        FileName: Random Number Generation
        RepeatCount: 10
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 847.002933927943
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 13.8555739311256
    BenchmarkInput: 
      FileName: Random Number Generation
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
FileName: Random Number Generation
ClockSpeed: 2594
---


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004220|1x           |23692.19/s|
|[Random]::New().Next()|00:00:00.004341|1.03x        |23032.98/s|
|GetRandom             |00:00:00.047227|11.19x       |2117.4/s  |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.004407|1x           |22686.54/s|
|QuickRandom           |00:00:00.006552|1.49x        |15260.88/s|
|GetRandom             |00:00:00.011130|2.53x        |8984.73/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.000852|1x           |11735.71/s|
|QuickRandom           |00:00:00.002597|3.05x        |3849.26/s |
|GetRandom             |00:00:00.721731|847x         |13.86/s   |
