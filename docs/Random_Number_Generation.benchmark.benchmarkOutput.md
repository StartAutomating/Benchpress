---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 44625
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.16493055555556e-08
      TotalHours: 1.23958333333333e-06
      TotalMilliseconds: 4.4625
      TotalMinutes: 7.4375e-05
      TotalSeconds: 0.0044625
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 22408.9635854342
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 53826
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.22986111111111e-08
      TotalHours: 1.49516666666667e-06
      TotalMilliseconds: 5.3826
      TotalMinutes: 8.971e-05
      TotalSeconds: 0.0053826
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 1.20618487394958
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 18578.3821944785
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 96215
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.11359953703704e-07
      TotalHours: 2.67263888888889e-06
      TotalMilliseconds: 9.6215
      TotalMinutes: 0.000160358333333333
      TotalSeconds: 0.0096215
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 2.15607843137255
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 10393.3898040846
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 43909
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.08206018518519e-08
      TotalHours: 1.21969444444444e-06
      TotalMilliseconds: 4.3909
      TotalMinutes: 7.31816666666667e-05
      TotalSeconds: 0.0043909
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 22774.3742740668
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 60651
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.01979166666667e-08
      TotalHours: 1.68475e-06
      TotalMilliseconds: 6.0651
      TotalMinutes: 0.000101085
      TotalSeconds: 0.0060651
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 1.38128857409643
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 16487.7743153452
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 105783
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.22434027777778e-07
      TotalHours: 2.93841666666667e-06
      TotalMilliseconds: 10.5783
      TotalMinutes: 0.000176305
      TotalSeconds: 0.0105783
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 2.40914163383361
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 9453.31480483631
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 7896
      Days: 0
      Hours: 0
      Milliseconds: 0
      Minutes: 0
      Seconds: 0
      TotalDays: 9.13888888888889e-09
      TotalHours: 2.19333333333333e-07
      TotalMilliseconds: 0.7896
      TotalMinutes: 1.316e-05
      TotalSeconds: 0.0007896
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        GroupName: (Random Byte Buffer)
        FileName: Random Number Generation
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 12664.6403242148
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
      RepeatCount: 10
  - Technique: QuickRandom
    Time: 
      Ticks: 22459
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.5994212962963e-08
      TotalHours: 6.23861111111111e-07
      TotalMilliseconds: 2.2459
      TotalMinutes: 3.74316666666667e-05
      TotalSeconds: 0.0022459
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        GroupName: (Random Byte Buffer)
        FileName: Random Number Generation
        RepeatCount: 10
    RelativeSpeed: 2.8443515704154
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 4452.55799456788
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
      RepeatCount: 10
  - Technique: GetRandom
    Time: 
      Ticks: 6762772
      Days: 0
      Hours: 0
      Milliseconds: 676
      Minutes: 0
      Seconds: 0
      TotalDays: 7.82728240740741e-06
      TotalHours: 0.000187854777777778
      TotalMilliseconds: 676.2772
      TotalMinutes: 0.0112712866666667
      TotalSeconds: 0.6762772
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        GroupName: (Random Byte Buffer)
        FileName: Random Number Generation
        RepeatCount: 10
    RelativeSpeed: 856.480749746707
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 14.7868359305918
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
      RepeatCount: 10
FileName: Random Number Generation
ClockSpeed: 2594
---


### (AnyRandomNumber)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|100        |00:00:00.004462|1x           |22408.96/s|
|QuickRandom           |100        |00:00:00.005382|1.21x        |18578.38/s|
|GetRandom             |100        |00:00:00.009621|2.16x        |10393.39/s|


### (Min and Max)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|100        |00:00:00.004390|1x           |22774.37/s|
|QuickRandom           |100        |00:00:00.006065|1.38x        |16487.77/s|
|GetRandom             |100        |00:00:00.010578|2.41x        |9453.31/s |


### (Random Byte Buffer)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|10         |00:00:00.000789|1x           |12664.64/s|
|QuickRandom           |10         |00:00:00.002245|2.84x        |4452.56/s |
|GetRandom             |10         |00:00:00.676277|856.48x      |14.79/s   |
