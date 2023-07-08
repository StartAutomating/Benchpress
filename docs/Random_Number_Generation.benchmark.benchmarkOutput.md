---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 59138
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.84467592592593e-08
      TotalHours: 1.64272222222222e-06
      TotalMilliseconds: 5.9138
      TotalMinutes: 9.85633333333333e-05
      TotalSeconds: 0.0059138
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 16909.601271602
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 67947
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.86423611111111e-08
      TotalHours: 1.88741666666667e-06
      TotalMilliseconds: 6.7947
      TotalMinutes: 0.000113245
      TotalSeconds: 0.0067947
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  [Random]::new().Next()
              
    RelativeSpeed: 1.14895667760154
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 14717.3532311949
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: GetRandom
    Time: 
      Ticks: 130186
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.50678240740741e-07
      TotalHours: 3.61627777777778e-06
      TotalMilliseconds: 13.0186
      TotalMinutes: 0.000216976666666667
      TotalSeconds: 0.0130186
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  Get-Random
              
    RelativeSpeed: 2.20139335114478
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 7681.31749957753
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: QuickRandom
    Time: 
      Ticks: 49187
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.69293981481481e-08
      TotalHours: 1.36630555555556e-06
      TotalMilliseconds: 4.9187
      TotalMinutes: 8.19783333333333e-05
      TotalSeconds: 0.0049187
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 20330.5751519711
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 77368
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.95462962962963e-08
      TotalHours: 2.14911111111111e-06
      TotalMilliseconds: 7.7368
      TotalMinutes: 0.000128946666666667
      TotalSeconds: 0.0077368
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
    RelativeSpeed: 1.5729359383577
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 12925.2404094716
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: GetRandom
    Time: 
      Ticks: 131226
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.51881944444444e-07
      TotalHours: 3.64516666666667e-06
      TotalMilliseconds: 13.1226
      TotalMinutes: 0.00021871
      TotalSeconds: 0.0131226
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
    RelativeSpeed: 2.66790005489255
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 7620.4410711292
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: QuickRandom
    Time: 
      Ticks: 10830
      Days: 0
      Hours: 0
      Milliseconds: 1
      Minutes: 0
      Seconds: 0
      TotalDays: 1.25347222222222e-08
      TotalHours: 3.00833333333333e-07
      TotalMilliseconds: 1.083
      TotalMinutes: 1.805e-05
      TotalSeconds: 0.001083
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 9233.61034164358
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 29162
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 3.37523148148148e-08
      TotalHours: 8.10055555555556e-07
      TotalMilliseconds: 2.9162
      TotalMinutes: 4.86033333333333e-05
      TotalSeconds: 0.0029162
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
    RelativeSpeed: 2.6927054478301
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 3429.12008778547
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 8396604
      Days: 0
      Hours: 0
      Milliseconds: 839
      Minutes: 0
      Seconds: 0
      TotalDays: 9.71829166666667e-06
      TotalHours: 0.000233239
      TotalMilliseconds: 839.6604
      TotalMinutes: 0.01399434
      TotalSeconds: 0.8396604
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
    RelativeSpeed: 775.309695290859
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 11.9095767765158
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
FileName: Random Number Generation
ClockSpeed: 2095
---


### (AnyRandomNumber)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|QuickRandom           |100        |00:00:00.005913|1x           |16909.6/s |
|[Random]::New().Next()|100        |00:00:00.006794|1.15x        |14717.35/s|
|GetRandom             |100        |00:00:00.013018|2.2x         |7681.32/s |


### (Min and Max)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|QuickRandom           |100        |00:00:00.004918|1x           |20330.58/s|
|[Random]::New().Next()|100        |00:00:00.007736|1.57x        |12925.24/s|
|GetRandom             |100        |00:00:00.013122|2.67x        |7620.44/s |


### (Random Byte Buffer)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|QuickRandom           |10         |00:00:00.001083|1x           |9233.61/s |
|[Random]::New().Next()|10         |00:00:00.002916|2.69x        |3429.12/s |
|GetRandom             |10         |00:00:00.839660|775.31x      |11.91/s   |
