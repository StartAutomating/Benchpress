---
layout: Benchmark

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 56979
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.59479166666667e-08
      TotalHours: 1.58275e-06
      TotalMilliseconds: 5.6979
      TotalMinutes: 9.4965e-05
      TotalSeconds: 0.0056979
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 17550.3255585391
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 63402
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.33819444444444e-08
      TotalHours: 1.76116666666667e-06
      TotalMilliseconds: 6.3402
      TotalMinutes: 0.00010567
      TotalSeconds: 0.0063402
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  [Random]::new().Next()
              
    RelativeSpeed: 1.1127257410625
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 15772.3731112583
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 161470
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.86886574074074e-07
      TotalHours: 4.48527777777778e-06
      TotalMilliseconds: 16.147
      TotalMinutes: 0.000269116666666667
      TotalSeconds: 0.016147
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  Get-Random
              
    RelativeSpeed: 2.83385106793731
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 6193.10088561343
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 67550
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.81828703703704e-08
      TotalHours: 1.87638888888889e-06
      TotalMilliseconds: 6.755
      TotalMinutes: 0.000112583333333333
      TotalSeconds: 0.006755
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 14803.8490007402
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 90506
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04752314814815e-07
      TotalHours: 2.51405555555556e-06
      TotalMilliseconds: 9.0506
      TotalMinutes: 0.000150843333333333
      TotalSeconds: 0.0090506
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
    RelativeSpeed: 1.33983715766099
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 11048.991227101
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 177026
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.04891203703704e-07
      TotalHours: 4.91738888888889e-06
      TotalMilliseconds: 17.7026
      TotalMinutes: 0.000295043333333333
      TotalSeconds: 0.0177026
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
    RelativeSpeed: 2.62066617320503
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 5648.88773400517
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 12291
      Days: 0
      Hours: 0
      Milliseconds: 1
      Minutes: 0
      Seconds: 0
      TotalDays: 1.42256944444444e-08
      TotalHours: 3.41416666666667e-07
      TotalMilliseconds: 1.2291
      TotalMinutes: 2.0485e-05
      TotalSeconds: 0.0012291
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        GroupName: (Random Byte Buffer)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 8136.03449678627
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
      RepeatCount: 10
  - Technique: QuickRandom
    Time: 
      Ticks: 31280
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 3.62037037037037e-08
      TotalHours: 8.68888888888889e-07
      TotalMilliseconds: 3.128
      TotalMinutes: 5.21333333333333e-05
      TotalSeconds: 0.003128
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        GroupName: (Random Byte Buffer)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        RepeatCount: 10
    RelativeSpeed: 2.54495159059474
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 3196.93094629156
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
      RepeatCount: 10
  - Technique: GetRandom
    Time: 
      Ticks: 10587002
      Days: 0
      Hours: 0
      Milliseconds: 58
      Minutes: 0
      Seconds: 1
      TotalDays: 1.2253474537037e-05
      TotalHours: 0.000294083388888889
      TotalMilliseconds: 1058.7002
      TotalMinutes: 0.0176450033333333
      TotalSeconds: 1.0587002
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        GroupName: (Random Byte Buffer)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        RepeatCount: 10
    RelativeSpeed: 861.362134895452
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 9.44554464049407
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
      RepeatCount: 10
FileName: Random Number Generation
ClockSpeed: 2295
---
Random Number Generation
------------------------
> @2295 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.005697|1x           |17550.33/s|
|[Random]::New().Next()|00:00:00.006340|1.11x        |15772.37/s|
|GetRandom             |00:00:00.016147|2.83x        |6193.1/s  |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.006755|1x           |14803.85/s|
|QuickRandom           |00:00:00.009050|1.34x        |11048.99/s|
|GetRandom             |00:00:00.017702|2.62x        |5648.89/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.001229|1x           |8136.03/s |
|QuickRandom           |00:00:00.003128|2.54x        |3196.93/s |
|GetRandom             |00:00:01.058700|861.36x      |9.45/s    |
