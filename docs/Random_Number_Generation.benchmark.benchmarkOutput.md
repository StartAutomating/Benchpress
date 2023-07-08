---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 49698
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.75208333333333e-08
      TotalHours: 1.3805e-06
      TotalMilliseconds: 4.9698
      TotalMinutes: 8.283e-05
      TotalSeconds: 0.0049698
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 20121.5340657572
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 110757
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.28190972222222e-07
      TotalHours: 3.07658333333333e-06
      TotalMilliseconds: 11.0757
      TotalMinutes: 0.000184595
      TotalSeconds: 0.0110757
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  Get-Random
              
        FileName: Random Number Generation
    RelativeSpeed: 2.22860074852107
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 9028.77470498479
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 341387
      Days: 0
      Hours: 0
      Milliseconds: 34
      Minutes: 0
      Seconds: 0
      TotalDays: 3.95123842592593e-07
      TotalHours: 9.48297222222222e-06
      TotalMilliseconds: 34.1387
      TotalMinutes: 0.000568978333333333
      TotalSeconds: 0.0341387
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        FileName: Random Number Generation
    RelativeSpeed: 6.86923015010664
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 2929.22694771623
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 52571
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.08460648148148e-08
      TotalHours: 1.46030555555556e-06
      TotalMilliseconds: 5.2571
      TotalMinutes: 8.76183333333333e-05
      TotalSeconds: 0.0052571
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 19021.8942002245
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 75748
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.76712962962963e-08
      TotalHours: 2.10411111111111e-06
      TotalMilliseconds: 7.5748
      TotalMinutes: 0.000126246666666667
      TotalSeconds: 0.0075748
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        FileName: Random Number Generation
    RelativeSpeed: 1.4408704418786
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 13201.6686909225
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 129894
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.50340277777778e-07
      TotalHours: 3.60816666666667e-06
      TotalMilliseconds: 12.9894
      TotalMinutes: 0.00021649
      TotalSeconds: 0.0129894
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        FileName: Random Number Generation
    RelativeSpeed: 2.47082992524396
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 7698.58500007699
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 11028
      Days: 0
      Hours: 0
      Milliseconds: 1
      Minutes: 0
      Seconds: 0
      TotalDays: 1.27638888888889e-08
      TotalHours: 3.06333333333333e-07
      TotalMilliseconds: 1.1028
      TotalMinutes: 1.838e-05
      TotalSeconds: 0.0011028
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: (Random Byte Buffer)
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 9067.82734856728
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 27059
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 3.1318287037037e-08
      TotalHours: 7.51638888888889e-07
      TotalMilliseconds: 2.7059
      TotalMinutes: 4.50983333333333e-05
      TotalSeconds: 0.0027059
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: (Random Byte Buffer)
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        FileName: Random Number Generation
    RelativeSpeed: 2.45366340224882
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 3695.62807199083
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 7982985
      Days: 0
      Hours: 0
      Milliseconds: 798
      Minutes: 0
      Seconds: 0
      TotalDays: 9.23956597222222e-06
      TotalHours: 0.000221749583333333
      TotalMilliseconds: 798.2985
      TotalMinutes: 0.013304975
      TotalSeconds: 0.7982985
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        RepeatCount: 10
        GroupName: (Random Byte Buffer)
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        FileName: Random Number Generation
    RelativeSpeed: 723.883297062024
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 12.5266426029862
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
FileName: Random Number Generation
ClockSpeed: 2095
---


### (AnyRandomNumber)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|QuickRandom           |100        |00:00:00.004969|1x           |20121.53/s|
|GetRandom             |100        |00:00:00.011075|2.23x        |9028.77/s |
|[Random]::New().Next()|100        |00:00:00.034138|6.87x        |2929.23/s |


### (Min and Max)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|100        |00:00:00.005257|1x           |19021.89/s|
|QuickRandom           |100        |00:00:00.007574|1.44x        |13201.67/s|
|GetRandom             |100        |00:00:00.012989|2.47x        |7698.59/s |


### (Random Byte Buffer)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|10         |00:00:00.001102|1x           |9067.83/s |
|QuickRandom           |10         |00:00:00.002705|2.45x        |3695.63/s |
|GetRandom             |10         |00:00:00.798298|723.88x      |12.53/s   |
