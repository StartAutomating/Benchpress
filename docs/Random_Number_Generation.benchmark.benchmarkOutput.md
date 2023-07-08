---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 63979
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.40497685185185e-08
      TotalHours: 1.77719444444444e-06
      TotalMilliseconds: 6.3979
      TotalMinutes: 0.000106631666666667
      TotalSeconds: 0.0063979
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 15630.1286359587
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 74063
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.57210648148148e-08
      TotalHours: 2.05730555555556e-06
      TotalMilliseconds: 7.4063
      TotalMinutes: 0.000123438333333333
      TotalSeconds: 0.0074063
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 1.15761421716501
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 13502.0185517735
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: GetRandom
    Time: 
      Ticks: 162133
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.87653935185185e-07
      TotalHours: 4.50369444444444e-06
      TotalMilliseconds: 16.2133
      TotalMinutes: 0.000270221666666667
      TotalSeconds: 0.0162133
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 2.53415964613389
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 6167.77583835493
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 69997
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 8.10150462962963e-08
      TotalHours: 1.94436111111111e-06
      TotalMilliseconds: 6.9997
      TotalMinutes: 0.000116661666666667
      TotalSeconds: 0.0069997
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 14286.3265568524
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: QuickRandom
    Time: 
      Ticks: 93360
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08055555555556e-07
      TotalHours: 2.59333333333333e-06
      TotalMilliseconds: 9.336
      TotalMinutes: 0.0001556
      TotalSeconds: 0.009336
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 1.33377144734774
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 10711.2253641817
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: GetRandom
    Time: 
      Ticks: 492893
      Days: 0
      Hours: 0
      Milliseconds: 49
      Minutes: 0
      Seconds: 0
      TotalDays: 5.70478009259259e-07
      TotalHours: 1.36914722222222e-05
      TotalMilliseconds: 49.2893
      TotalMinutes: 0.000821488333333333
      TotalSeconds: 0.0492893
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 7.04163035558667
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 2028.83790193815
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 12040
      Days: 0
      Hours: 0
      Milliseconds: 1
      Minutes: 0
      Seconds: 0
      TotalDays: 1.39351851851852e-08
      TotalHours: 3.34444444444444e-07
      TotalMilliseconds: 1.204
      TotalMinutes: 2.00666666666667e-05
      TotalSeconds: 0.001204
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 8305.64784053156
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 33570
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 3.88541666666667e-08
      TotalHours: 9.325e-07
      TotalMilliseconds: 3.357
      TotalMinutes: 5.595e-05
      TotalSeconds: 0.003357
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
        FileName: Random Number Generation
    RelativeSpeed: 2.78820598006645
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 2978.85016383676
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 10487135
      Days: 0
      Hours: 0
      Milliseconds: 48
      Minutes: 0
      Seconds: 1
      TotalDays: 1.21378877314815e-05
      TotalHours: 0.000291309305555556
      TotalMilliseconds: 1048.7135
      TotalMinutes: 0.0174785583333333
      TotalSeconds: 1.0487135
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
        FileName: Random Number Generation
    RelativeSpeed: 871.02450166113
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 9.53549277281164
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
FileName: Random Number Generation
ClockSpeed: 2295
---


### (AnyRandomNumber)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|QuickRandom           |100        |00:00:00.006397|1x           |15630.13/s|
|[Random]::New().Next()|100        |00:00:00.007406|1.16x        |13502.02/s|
|GetRandom             |100        |00:00:00.016213|2.53x        |6167.78/s |


### (Min and Max)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|100        |00:00:00.006999|1x           |14286.33/s|
|QuickRandom           |100        |00:00:00.009336|1.33x        |10711.23/s|
|GetRandom             |100        |00:00:00.049289|7.04x        |2028.84/s |


### (Random Byte Buffer)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|10         |00:00:00.001204|1x           |8305.65/s |
|QuickRandom           |10         |00:00:00.003357|2.79x        |2978.85/s |
|GetRandom             |10         |00:00:01.048713|871.02x      |9.54/s    |
