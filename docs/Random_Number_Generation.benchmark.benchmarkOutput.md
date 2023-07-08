---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 62236
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.20324074074074e-08
      TotalHours: 1.72877777777778e-06
      TotalMilliseconds: 6.2236
      TotalMinutes: 0.000103726666666667
      TotalSeconds: 0.0062236
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2397
    FileName: Random Number Generation
    Throughput: 16067.8706857767
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 70240
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.12962962962963e-08
      TotalHours: 1.95111111111111e-06
      TotalMilliseconds: 7.024
      TotalMinutes: 0.000117066666666667
      TotalSeconds: 0.007024
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1.12860723696896
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2397
    FileName: Random Number Generation
    Throughput: 14236.9020501139
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 445030
      Days: 0
      Hours: 0
      Milliseconds: 44
      Minutes: 0
      Seconds: 0
      TotalDays: 5.15081018518519e-07
      TotalHours: 1.23619444444444e-05
      TotalMilliseconds: 44.503
      TotalMinutes: 0.000741716666666667
      TotalSeconds: 0.044503
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 7.15068449129121
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2397
    FileName: Random Number Generation
    Throughput: 2247.03952542525
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 68247
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.89895833333333e-08
      TotalHours: 1.89575e-06
      TotalMilliseconds: 6.8247
      TotalMinutes: 0.000113745
      TotalSeconds: 0.0068247
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2397
    FileName: Random Number Generation
    Throughput: 14652.6587249256
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 85102
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.84976851851852e-08
      TotalHours: 2.36394444444444e-06
      TotalMilliseconds: 8.5102
      TotalMinutes: 0.000141836666666667
      TotalSeconds: 0.0085102
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 1.24697056280862
    GroupName: (Min and Max)
    ClockSpeed: 2397
    FileName: Random Number Generation
    Throughput: 11750.6051561655
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 181293
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.09829861111111e-07
      TotalHours: 5.03591666666667e-06
      TotalMilliseconds: 18.1293
      TotalMinutes: 0.000302155
      TotalSeconds: 0.0181293
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 2.65642445821794
    GroupName: (Min and Max)
    ClockSpeed: 2397
    FileName: Random Number Generation
    Throughput: 5515.93277181138
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 14111
      Days: 0
      Hours: 0
      Milliseconds: 1
      Minutes: 0
      Seconds: 0
      TotalDays: 1.63321759259259e-08
      TotalHours: 3.91972222222222e-07
      TotalMilliseconds: 1.4111
      TotalMinutes: 2.35183333333333e-05
      TotalSeconds: 0.0014111
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
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2397
    FileName: Random Number Generation
    Throughput: 7086.66997377932
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
  - Technique: QuickRandom
    Time: 
      Ticks: 30646
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 3.54699074074074e-08
      TotalHours: 8.51277777777778e-07
      TotalMilliseconds: 3.0646
      TotalMinutes: 5.10766666666667e-05
      TotalSeconds: 0.0030646
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
    RelativeSpeed: 2.17178088016441
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2397
    FileName: Random Number Generation
    Throughput: 3263.06858970176
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
  - Technique: GetRandom
    Time: 
      Ticks: 11297776
      Days: 0
      Hours: 0
      Milliseconds: 129
      Minutes: 0
      Seconds: 1
      TotalDays: 1.30761296296296e-05
      TotalHours: 0.000313827111111111
      TotalMilliseconds: 1129.7776
      TotalMinutes: 0.0188296266666667
      TotalSeconds: 1.1297776
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        RepeatCount: 10
        FileName: Random Number Generation
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 800.636099496846
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2397
    FileName: Random Number Generation
    Throughput: 8.85129958321001
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
FileName: Random Number Generation
ClockSpeed: 2397
---


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.006223|1x           |16067.87/s|
|[Random]::New().Next()|00:00:00.007024|1.13x        |14236.9/s |
|GetRandom             |00:00:00.044503|7.15x        |2247.04/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.006824|1x           |14652.66/s|
|QuickRandom           |00:00:00.008510|1.25x        |11750.61/s|
|GetRandom             |00:00:00.018129|2.66x        |5515.93/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.001411|1x           |7086.67/s |
|QuickRandom           |00:00:00.003064|2.17x        |3263.07/s |
|GetRandom             |00:00:01.129777|800.64x      |8.85/s    |
