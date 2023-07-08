---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 52508
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.07731481481481e-08
      TotalHours: 1.45855555555556e-06
      TotalMilliseconds: 5.2508
      TotalMinutes: 8.75133333333333e-05
      TotalSeconds: 0.0052508
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
    Throughput: 19044.7169955054
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: GetRandom
    Time: 
      Ticks: 93656
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08398148148148e-07
      TotalHours: 2.60155555555556e-06
      TotalMilliseconds: 9.3656
      TotalMinutes: 0.000156093333333333
      TotalSeconds: 0.0093656
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1.78365201493106
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 10677.3725121722
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 304534
      Days: 0
      Hours: 0
      Milliseconds: 30
      Minutes: 0
      Seconds: 0
      TotalDays: 3.52469907407407e-07
      TotalHours: 8.45927777777778e-06
      TotalMilliseconds: 30.4534
      TotalMinutes: 0.000507556666666667
      TotalSeconds: 0.0304534
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 5.79976384550926
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 3283.70559609108
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 44430
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.14236111111111e-08
      TotalHours: 1.23416666666667e-06
      TotalMilliseconds: 4.443
      TotalMinutes: 7.405e-05
      TotalSeconds: 0.004443
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
    Throughput: 22507.3148773351
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: QuickRandom
    Time: 
      Ticks: 64070
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.41550925925926e-08
      TotalHours: 1.77972222222222e-06
      TotalMilliseconds: 6.407
      TotalMinutes: 0.000106783333333333
      TotalSeconds: 0.006407
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 1.44204366419086
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 15607.9288278445
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: GetRandom
    Time: 
      Ticks: 109729
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.27001157407407e-07
      TotalHours: 3.04802777777778e-06
      TotalMilliseconds: 10.9729
      TotalMinutes: 0.000182881666666667
      TotalSeconds: 0.0109729
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 2.46970515417511
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 9113.36109870681
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 9716
      Days: 0
      Hours: 0
      Milliseconds: 0
      Minutes: 0
      Seconds: 0
      TotalDays: 1.12453703703704e-08
      TotalHours: 2.69888888888889e-07
      TotalMilliseconds: 0.9716
      TotalMinutes: 1.61933333333333e-05
      TotalSeconds: 0.0009716
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        RepeatCount: 10
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 10292.3013585838
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
  - Technique: QuickRandom
    Time: 
      Ticks: 24046
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.78310185185185e-08
      TotalHours: 6.67944444444444e-07
      TotalMilliseconds: 2.4046
      TotalMinutes: 4.00766666666667e-05
      TotalSeconds: 0.0024046
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        RepeatCount: 10
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 2.47488678468506
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 4158.69583298678
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
  - Technique: GetRandom
    Time: 
      Ticks: 6997997
      Days: 0
      Hours: 0
      Milliseconds: 699
      Minutes: 0
      Seconds: 0
      TotalDays: 8.09953356481481e-06
      TotalHours: 0.000194388805555556
      TotalMilliseconds: 699.7997
      TotalMinutes: 0.0116633283333333
      TotalSeconds: 0.6997997
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        RepeatCount: 10
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 720.254940304652
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 14.289803210833
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
FileName: Random Number Generation
ClockSpeed: 2594
---


### (AnyRandomNumber)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|QuickRandom           |100        |00:00:00.005250|1x           |19044.72/s|
|GetRandom             |100        |00:00:00.009365|1.78x        |10677.37/s|
|[Random]::New().Next()|100        |00:00:00.030453|5.8x         |3283.71/s |


### (Min and Max)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|100        |00:00:00.004443|1x           |22507.31/s|
|QuickRandom           |100        |00:00:00.006407|1.44x        |15607.93/s|
|GetRandom             |100        |00:00:00.010972|2.47x        |9113.36/s |


### (Random Byte Buffer)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|10         |00:00:00.000971|1x           |10292.3/s |
|QuickRandom           |10         |00:00:00.002404|2.47x        |4158.7/s  |
|GetRandom             |10         |00:00:00.699799|720.25x      |14.29/s   |
