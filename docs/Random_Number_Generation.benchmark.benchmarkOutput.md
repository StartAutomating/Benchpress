---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 59253
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.85798611111111e-08
      TotalHours: 1.64591666666667e-06
      TotalMilliseconds: 5.9253
      TotalMinutes: 9.8755e-05
      TotalSeconds: 0.0059253
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 16876.7826101632
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: QuickRandom
    Time: 
      Ticks: 63773
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.38113425925926e-08
      TotalHours: 1.77147222222222e-06
      TotalMilliseconds: 6.3773
      TotalMinutes: 0.000106288333333333
      TotalSeconds: 0.0063773
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1.07628305739794
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 15680.6171890926
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: GetRandom
    Time: 
      Ticks: 154284
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.78569444444444e-07
      TotalHours: 4.28566666666667e-06
      TotalMilliseconds: 15.4284
      TotalMinutes: 0.00025714
      TotalSeconds: 0.0154284
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 2.60381752822642
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 6481.55349874258
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: QuickRandom
    Time: 
      Ticks: 60330
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 6.98263888888889e-08
      TotalHours: 1.67583333333333e-06
      TotalMilliseconds: 6.033
      TotalMinutes: 0.00010055
      TotalSeconds: 0.006033
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 16575.5014089176
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 85601
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.90752314814815e-08
      TotalHours: 2.37780555555556e-06
      TotalMilliseconds: 8.5601
      TotalMinutes: 0.000142668333333333
      TotalSeconds: 0.0085601
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 1.41887949610476
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 11682.1065174472
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: GetRandom
    Time: 
      Ticks: 157682
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.82502314814815e-07
      TotalHours: 4.38005555555556e-06
      TotalMilliseconds: 15.7682
      TotalMinutes: 0.000262803333333333
      TotalSeconds: 0.0157682
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 2.61365821316095
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 6341.8779569006
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: QuickRandom
    Time: 
      Ticks: 10391
      Days: 0
      Hours: 0
      Milliseconds: 1
      Minutes: 0
      Seconds: 0
      TotalDays: 1.20266203703704e-08
      TotalHours: 2.88638888888889e-07
      TotalMilliseconds: 1.0391
      TotalMinutes: 1.73183333333333e-05
      TotalSeconds: 0.0010391
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        RepeatCount: 10
        FileName: Random Number Generation
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 9623.7128284092
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 25061
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.9005787037037e-08
      TotalHours: 6.96138888888889e-07
      TotalMilliseconds: 2.5061
      TotalMinutes: 4.17683333333333e-05
      TotalSeconds: 0.0025061
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        RepeatCount: 10
        FileName: Random Number Generation
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 2.41179867192763
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 3990.2637564343
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
  - Technique: GetRandom
    Time: 
      Ticks: 9490741
      Days: 0
      Hours: 0
      Milliseconds: 949
      Minutes: 0
      Seconds: 0
      TotalDays: 1.09846539351852e-05
      TotalHours: 0.000263631694444444
      TotalMilliseconds: 949.0741
      TotalMinutes: 0.0158179016666667
      TotalSeconds: 0.9490741
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        RepeatCount: 10
        FileName: Random Number Generation
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 913.361659128092
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 10.536585078025
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
FileName: Random Number Generation
ClockSpeed: 2295
---


### (AnyRandomNumber)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|100        |00:00:00.005925|1x           |16876.78/s|
|QuickRandom           |100        |00:00:00.006377|1.08x        |15680.62/s|
|GetRandom             |100        |00:00:00.015428|2.6x         |6481.55/s |


### (Min and Max)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|QuickRandom           |100        |00:00:00.006033|1x           |16575.5/s |
|[Random]::New().Next()|100        |00:00:00.008560|1.42x        |11682.11/s|
|GetRandom             |100        |00:00:00.015768|2.61x        |6341.88/s |


### (Random Byte Buffer)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|QuickRandom           |10         |00:00:00.001039|1x           |9623.71/s |
|[Random]::New().Next()|10         |00:00:00.002506|2.41x        |3990.26/s |
|GetRandom             |10         |00:00:00.949074|913.36x      |10.54/s   |
