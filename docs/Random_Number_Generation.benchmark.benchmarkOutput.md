---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 36520
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.22685185185185e-08
      TotalHours: 1.01444444444444e-06
      TotalMilliseconds: 3.652
      TotalMinutes: 6.08666666666667e-05
      TotalSeconds: 0.003652
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 27382.2562979189
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 36695
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.24710648148148e-08
      TotalHours: 1.01930555555556e-06
      TotalMilliseconds: 3.6695
      TotalMinutes: 6.11583333333333e-05
      TotalSeconds: 0.0036695
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1.00479189485214
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 27251.6691647363
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: GetRandom
    Time: 
      Ticks: 81059
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.3818287037037e-08
      TotalHours: 2.25163888888889e-06
      TotalMilliseconds: 8.1059
      TotalMinutes: 0.000135098333333333
      TotalSeconds: 0.0081059
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 2.21957831325301
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 12336.6930260674
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 38077
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.40706018518518e-08
      TotalHours: 1.05769444444444e-06
      TotalMilliseconds: 3.8077
      TotalMinutes: 6.34616666666667e-05
      TotalSeconds: 0.0038077
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
    Throughput: 26262.5732069228
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: QuickRandom
    Time: 
      Ticks: 57912
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.70277777777778e-08
      TotalHours: 1.60866666666667e-06
      TotalMilliseconds: 5.7912
      TotalMinutes: 9.652e-05
      TotalSeconds: 0.0057912
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        GroupName: (Min and Max)
    RelativeSpeed: 1.52091813955931
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 17267.5783948059
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: GetRandom
    Time: 
      Ticks: 324444
      Days: 0
      Hours: 0
      Milliseconds: 32
      Minutes: 0
      Seconds: 0
      TotalDays: 3.75513888888889e-07
      TotalHours: 9.01233333333333e-06
      TotalMilliseconds: 32.4444
      TotalMinutes: 0.00054074
      TotalSeconds: 0.0324444
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        GroupName: (Min and Max)
    RelativeSpeed: 8.52073430154687
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 3082.19600300822
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Min and Max)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 9067
      Days: 0
      Hours: 0
      Milliseconds: 0
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0494212962963e-08
      TotalHours: 2.51861111111111e-07
      TotalMilliseconds: 0.9067
      TotalMinutes: 1.51116666666667e-05
      TotalSeconds: 0.0009067
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
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 11029.0062865336
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
  - Technique: QuickRandom
    Time: 
      Ticks: 24507
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.83645833333333e-08
      TotalHours: 6.8075e-07
      TotalMilliseconds: 2.4507
      TotalMinutes: 4.0845e-05
      TotalSeconds: 0.0024507
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
    RelativeSpeed: 2.70287857064079
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 4080.46680540254
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
  - Technique: GetRandom
    Time: 
      Ticks: 6465007
      Days: 0
      Hours: 0
      Milliseconds: 646
      Minutes: 0
      Seconds: 0
      TotalDays: 7.48264699074074e-06
      TotalHours: 0.000179583527777778
      TotalMilliseconds: 646.5007
      TotalMinutes: 0.0107750116666667
      TotalSeconds: 0.6465007
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
    RelativeSpeed: 713.026028454836
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 15.4678873510887
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
|QuickRandom           |100        |00:00:00.003652|1x           |27382.26/s|
|[Random]::New().Next()|100        |00:00:00.003669|1x           |27251.67/s|
|GetRandom             |100        |00:00:00.008105|2.22x        |12336.69/s|


### (Min and Max)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|100        |00:00:00.003807|1x           |26262.57/s|
|QuickRandom           |100        |00:00:00.005791|1.52x        |17267.58/s|
|GetRandom             |100        |00:00:00.032444|8.52x        |3082.2/s  |


### (Random Byte Buffer)


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::New().Next()|10         |00:00:00.000906|1x           |11029.01/s|
|QuickRandom           |10         |00:00:00.002450|2.7x         |4080.47/s |
|GetRandom             |10         |00:00:00.646500|713.03x      |15.47/s   |
