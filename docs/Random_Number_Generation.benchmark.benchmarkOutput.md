---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 41587
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.81331018518519e-08
      TotalHours: 1.15519444444444e-06
      TotalMilliseconds: 4.1587
      TotalMinutes: 6.93116666666667e-05
      TotalSeconds: 0.0041587
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 24045.9759059321
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 93263
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.07943287037037e-07
      TotalHours: 2.59063888888889e-06
      TotalMilliseconds: 9.3263
      TotalMinutes: 0.000155438333333333
      TotalSeconds: 0.0093263
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  Get-Random
              
    RelativeSpeed: 2.24259985091495
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 10722.3657827863
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 293649
      Days: 0
      Hours: 0
      Milliseconds: 29
      Minutes: 0
      Seconds: 0
      TotalDays: 3.39871527777778e-07
      TotalHours: 8.15691666666667e-06
      TotalMilliseconds: 29.3649
      TotalMinutes: 0.000489415
      TotalSeconds: 0.0293649
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  [Random]::new().Next()
              
    RelativeSpeed: 7.06107677880107
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 3405.42620611683
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 43453
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.02928240740741e-08
      TotalHours: 1.20702777777778e-06
      TotalMilliseconds: 4.3453
      TotalMinutes: 7.24216666666667e-05
      TotalSeconds: 0.0043453
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 23013.3707684165
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 63032
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.29537037037037e-08
      TotalHours: 1.75088888888889e-06
      TotalMilliseconds: 6.3032
      TotalMinutes: 0.000105053333333333
      TotalSeconds: 0.0063032
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
    RelativeSpeed: 1.45057878627483
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 15864.9574819139
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 107706
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.24659722222222e-07
      TotalHours: 2.99183333333333e-06
      TotalMilliseconds: 10.7706
      TotalMinutes: 0.00017951
      TotalSeconds: 0.0107706
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
    RelativeSpeed: 2.47867811198306
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 9284.53382355672
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 8247
      Days: 0
      Hours: 0
      Milliseconds: 0
      Minutes: 0
      Seconds: 0
      TotalDays: 9.54513888888889e-09
      TotalHours: 2.29083333333333e-07
      TotalMilliseconds: 0.8247
      TotalMinutes: 1.3745e-05
      TotalSeconds: 0.0008247
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
              
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 12125.6214380987
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 24023
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.78043981481481e-08
      TotalHours: 6.67305555555556e-07
      TotalMilliseconds: 2.4023
      TotalMinutes: 4.00383333333333e-05
      TotalSeconds: 0.0024023
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
              
    RelativeSpeed: 2.91293803807445
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 4162.67743412563
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 6908029
      Days: 0
      Hours: 0
      Milliseconds: 690
      Minutes: 0
      Seconds: 0
      TotalDays: 7.99540393518519e-06
      TotalHours: 0.000191889694444444
      TotalMilliseconds: 690.8029
      TotalMinutes: 0.0115133816666667
      TotalSeconds: 0.6908029
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
    RelativeSpeed: 837.641445374075
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 14.4759091196635
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
FileName: Random Number Generation
ClockSpeed: 2594
---


### (AnyRandomNumber)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|QuickRandom           |100        |00:00:00.004158|1x           |24045.98/s|
|GetRandom             |100        |00:00:00.009326|2.24x        |10722.37/s|
|[Random]::New().Next()|100        |00:00:00.029364|7.06x        |3405.43/s |


### (Min and Max)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|100        |00:00:00.004345|1x           |23013.37/s|
|QuickRandom           |100        |00:00:00.006303|1.45x        |15864.96/s|
|GetRandom             |100        |00:00:00.010770|2.48x        |9284.53/s |


### (Random Byte Buffer)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|10         |00:00:00.000824|1x           |12125.62/s|
|QuickRandom           |10         |00:00:00.002402|2.91x        |4162.68/s |
|GetRandom             |10         |00:00:00.690802|837.64x      |14.48/s   |
