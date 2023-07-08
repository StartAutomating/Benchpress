---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 48219
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.58090277777778e-08
      TotalHours: 1.33941666666667e-06
      TotalMilliseconds: 4.8219
      TotalMinutes: 8.0365e-05
      TotalSeconds: 0.0048219
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 20738.712955474
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 57007
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.59803240740741e-08
      TotalHours: 1.58352777777778e-06
      TotalMilliseconds: 5.7007
      TotalMinutes: 9.50116666666667e-05
      TotalSeconds: 0.0057007
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1.18225180945271
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 17541.7054045994
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 101242
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.17178240740741e-07
      TotalHours: 2.81227777777778e-06
      TotalMilliseconds: 10.1242
      TotalMinutes: 0.000168736666666667
      TotalSeconds: 0.0101242
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 2.0996287770381
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 9877.3236403864
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 51522
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.96319444444444e-08
      TotalHours: 1.43116666666667e-06
      TotalMilliseconds: 5.1522
      TotalMinutes: 8.587e-05
      TotalSeconds: 0.0051522
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        GroupName: (Min and Max)
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 19409.1844260704
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 68089
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.8806712962963e-08
      TotalHours: 1.89136111111111e-06
      TotalMilliseconds: 6.8089
      TotalMinutes: 0.000113481666666667
      TotalSeconds: 0.0068089
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        GroupName: (Min and Max)
    RelativeSpeed: 1.32155195838671
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 14686.6601066252
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 118807
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.37508101851852e-07
      TotalHours: 3.30019444444444e-06
      TotalMilliseconds: 11.8807
      TotalMinutes: 0.000198011666666667
      TotalSeconds: 0.0118807
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        GroupName: (Min and Max)
    RelativeSpeed: 2.30594697410815
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 8417.01246559546
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 10293
      Days: 0
      Hours: 0
      Milliseconds: 1
      Minutes: 0
      Seconds: 0
      TotalDays: 1.19131944444444e-08
      TotalHours: 2.85916666666667e-07
      TotalMilliseconds: 1.0293
      TotalMinutes: 1.7155e-05
      TotalSeconds: 0.0010293
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
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 9715.34052268532
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
  - Technique: QuickRandom
    Time: 
      Ticks: 24364
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.81990740740741e-08
      TotalHours: 6.76777777777778e-07
      TotalMilliseconds: 2.4364
      TotalMinutes: 4.06066666666667e-05
      TotalSeconds: 0.0024364
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
    RelativeSpeed: 2.36704556494705
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 4104.41635199475
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
  - Technique: GetRandom
    Time: 
      Ticks: 7870536
      Days: 0
      Hours: 0
      Milliseconds: 787
      Minutes: 0
      Seconds: 0
      TotalDays: 9.10941666666667e-06
      TotalHours: 0.000218626
      TotalMilliseconds: 787.0536
      TotalMinutes: 0.01311756
      TotalSeconds: 0.7870536
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        RepeatCount: 10
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 764.649373360536
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 12.7056149670111
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
FileName: Random Number Generation
ClockSpeed: 2095
---


### (AnyRandomNumber)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|100        |00:00:00.004821|1x           |20738.71/s|
|QuickRandom           |100        |00:00:00.005700|1.18x        |17541.71/s|
|GetRandom             |100        |00:00:00.010124|2.1x         |9877.32/s |


### (Min and Max)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|100        |00:00:00.005152|1x           |19409.18/s|
|QuickRandom           |100        |00:00:00.006808|1.32x        |14686.66/s|
|GetRandom             |100        |00:00:00.011880|2.31x        |8417.01/s |


### (Random Byte Buffer)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|10         |00:00:00.001029|1x           |9715.34/s |
|QuickRandom           |10         |00:00:00.002436|2.37x        |4104.42/s |
|GetRandom             |10         |00:00:00.787053|764.65x      |12.71/s   |
