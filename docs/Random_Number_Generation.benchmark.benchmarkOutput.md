---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 33421
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 3.8681712962963e-08
      TotalHours: 9.28361111111111e-07
      TotalMilliseconds: 3.3421
      TotalMinutes: 5.57016666666667e-05
      TotalSeconds: 0.0033421
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 29921.3069626881
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 42283
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.89386574074074e-08
      TotalHours: 1.17452777777778e-06
      TotalMilliseconds: 4.2283
      TotalMinutes: 7.04716666666667e-05
      TotalSeconds: 0.0042283
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  [Random]::new().Next()
              
    RelativeSpeed: 1.26516262230334
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 23650.1667336755
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 104258
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.20668981481481e-07
      TotalHours: 2.89605555555556e-06
      TotalMilliseconds: 10.4258
      TotalMinutes: 0.000173763333333333
      TotalSeconds: 0.0104258
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  Get-Random
              
    RelativeSpeed: 3.11953562131594
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 9591.59009380575
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 40125
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.64409722222222e-08
      TotalHours: 1.11458333333333e-06
      TotalMilliseconds: 4.0125
      TotalMinutes: 6.6875e-05
      TotalSeconds: 0.0040125
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 24922.1183800623
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 65368
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.56574074074074e-08
      TotalHours: 1.81577777777778e-06
      TotalMilliseconds: 6.5368
      TotalMinutes: 0.000108946666666667
      TotalSeconds: 0.0065368
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
    RelativeSpeed: 1.62910903426791
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 15298.0051401297
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 107595
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.2453125e-07
      TotalHours: 2.98875e-06
      TotalMilliseconds: 10.7595
      TotalMinutes: 0.000179325
      TotalSeconds: 0.0107595
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
    RelativeSpeed: 2.6814953271028
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 9294.11217993401
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 7427
      Days: 0
      Hours: 0
      Milliseconds: 0
      Minutes: 0
      Seconds: 0
      TotalDays: 8.59606481481482e-09
      TotalHours: 2.06305555555556e-07
      TotalMilliseconds: 0.7427
      TotalMinutes: 1.23783333333333e-05
      TotalSeconds: 0.0007427
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 13464.3866971859
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 24078
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.78680555555556e-08
      TotalHours: 6.68833333333333e-07
      TotalMilliseconds: 2.4078
      TotalMinutes: 4.013e-05
      TotalSeconds: 0.0024078
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
    RelativeSpeed: 3.24195502894843
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 4153.16886784617
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
  - Technique: GetRandom
    Time: 
      Ticks: 6718776
      Days: 0
      Hours: 0
      Milliseconds: 671
      Minutes: 0
      Seconds: 0
      TotalDays: 7.77636111111111e-06
      TotalHours: 0.000186632666666667
      TotalMilliseconds: 671.8776
      TotalMinutes: 0.01119796
      TotalSeconds: 0.6718776
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
    RelativeSpeed: 904.641981957722
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 14.8836633339168
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
FileName: Random Number Generation
ClockSpeed: 2095
---


### (AnyRandomNumber)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|QuickRandom           |100        |00:00:00.003342|1x           |29921.31/s|
|[Random]::New().Next()|100        |00:00:00.004228|1.27x        |23650.17/s|
|GetRandom             |100        |00:00:00.010425|3.12x        |9591.59/s |


### (Min and Max)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|QuickRandom           |100        |00:00:00.004012|1x           |24922.12/s|
|[Random]::New().Next()|100        |00:00:00.006536|1.63x        |15298.01/s|
|GetRandom             |100        |00:00:00.010759|2.68x        |9294.11/s |


### (Random Byte Buffer)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|QuickRandom           |10         |00:00:00.000742|1x           |13464.39/s|
|[Random]::New().Next()|10         |00:00:00.002407|3.24x        |4153.17/s |
|GetRandom             |10         |00:00:00.671877|904.64x      |14.88/s   |
