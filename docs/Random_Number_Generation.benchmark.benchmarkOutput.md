---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 39910
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.61921296296296e-08
      TotalHours: 1.10861111111111e-06
      TotalMilliseconds: 3.991
      TotalMinutes: 6.65166666666667e-05
      TotalSeconds: 0.003991
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 25056.3768479078
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 89179
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.03216435185185e-07
      TotalHours: 2.47719444444444e-06
      TotalMilliseconds: 8.9179
      TotalMinutes: 0.000148631666666667
      TotalSeconds: 0.0089179
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 2.23450263091957
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 11213.4022583792
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 391947
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.53642361111111e-07
      TotalHours: 1.08874166666667e-05
      TotalMilliseconds: 39.1947
      TotalMinutes: 0.000653245
      TotalSeconds: 0.0391947
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 9.82077173640691
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 2551.3653631741
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 39761
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.60196759259259e-08
      TotalHours: 1.10447222222222e-06
      TotalMilliseconds: 3.9761
      TotalMinutes: 6.62683333333333e-05
      TotalSeconds: 0.0039761
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 25150.2728804608
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 58483
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.76886574074074e-08
      TotalHours: 1.62452777777778e-06
      TotalMilliseconds: 5.8483
      TotalMinutes: 9.74716666666667e-05
      TotalSeconds: 0.0058483
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 1.47086340886799
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 17098.9860301284
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 104453
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.20894675925926e-07
      TotalHours: 2.90147222222222e-06
      TotalMilliseconds: 10.4453
      TotalMinutes: 0.000174088333333333
      TotalSeconds: 0.0104453
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 2.62702145318277
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    RepeatCount: 100
    Throughput: 9573.68385781165
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 8773
      Days: 0
      Hours: 0
      Milliseconds: 0
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01539351851852e-08
      TotalHours: 2.43694444444444e-07
      TotalMilliseconds: 0.8773
      TotalMinutes: 1.46216666666667e-05
      TotalSeconds: 0.0008773
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        GroupName: (Random Byte Buffer)
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 11398.6093696569
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 21746
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.51689814814815e-08
      TotalHours: 6.04055555555556e-07
      TotalMilliseconds: 2.1746
      TotalMinutes: 3.62433333333333e-05
      TotalSeconds: 0.0021746
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        GroupName: (Random Byte Buffer)
        FileName: Random Number Generation
    RelativeSpeed: 2.47874159352559
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 4598.5468591925
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 6297580
      Days: 0
      Hours: 0
      Milliseconds: 629
      Minutes: 0
      Seconds: 0
      TotalDays: 7.28886574074074e-06
      TotalHours: 0.000174932777777778
      TotalMilliseconds: 629.758
      TotalMinutes: 0.0104959666666667
      TotalSeconds: 0.629758
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        GroupName: (Random Byte Buffer)
        FileName: Random Number Generation
    RelativeSpeed: 717.836543941639
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    RepeatCount: 10
    Throughput: 15.8791154697519
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
FileName: Random Number Generation
ClockSpeed: 2793
---


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.003991|1x           |25056.38/s|
|GetRandom             |00:00:00.008917|2.23x        |11213.4/s |
|QuickRandom           |00:00:00.039194|9.82x        |2551.37/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.003976|1x           |25150.27/s|
|QuickRandom           |00:00:00.005848|1.47x        |17098.99/s|
|GetRandom             |00:00:00.010445|2.63x        |9573.68/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.000877|1x           |11398.61/s|
|QuickRandom           |00:00:00.002174|2.48x        |4598.55/s |
|GetRandom             |00:00:00.629758|717.84x      |15.88/s   |
