---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 56039
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.48599537037037e-08
      TotalHours: 1.55663888888889e-06
      TotalMilliseconds: 5.6039
      TotalMinutes: 9.33983333333333e-05
      TotalSeconds: 0.0056039
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 17844.7152875676
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 64647
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.48229166666667e-08
      TotalHours: 1.79575e-06
      TotalMilliseconds: 6.4647
      TotalMinutes: 0.000107745
      TotalSeconds: 0.0064647
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 1.15360730919538
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 15468.6219004749
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 164409
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.90288194444444e-07
      TotalHours: 4.56691666666667e-06
      TotalMilliseconds: 16.4409
      TotalMinutes: 0.000274015
      TotalSeconds: 0.0164409
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 2.9338317957137
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 6082.39208315846
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 70059
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.10868055555556e-08
      TotalHours: 1.94608333333333e-06
      TotalMilliseconds: 7.0059
      TotalMinutes: 0.000116765
      TotalSeconds: 0.0070059
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 14273.6836095291
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 87632
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01425925925926e-07
      TotalHours: 2.43422222222222e-06
      TotalMilliseconds: 8.7632
      TotalMinutes: 0.000146053333333333
      TotalSeconds: 0.0087632
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 1.25083144207026
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 11411.3565820705
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 177744
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.05722222222222e-07
      TotalHours: 4.93733333333333e-06
      TotalMilliseconds: 17.7744
      TotalMinutes: 0.00029624
      TotalSeconds: 0.0177744
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 2.53706161949214
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 5626.06895310109
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 13058
      Days: 0
      Hours: 0
      Milliseconds: 1
      Minutes: 0
      Seconds: 0
      TotalDays: 1.51134259259259e-08
      TotalHours: 3.62722222222222e-07
      TotalMilliseconds: 1.3058
      TotalMinutes: 2.17633333333333e-05
      TotalSeconds: 0.0013058
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        RepeatCount: 10
        GroupName: (Random Byte Buffer)
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 7658.14060346148
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 36800
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.25925925925926e-08
      TotalHours: 1.02222222222222e-06
      TotalMilliseconds: 3.68
      TotalMinutes: 6.13333333333333e-05
      TotalSeconds: 0.00368
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        RepeatCount: 10
        GroupName: (Random Byte Buffer)
        FileName: Random Number Generation
    RelativeSpeed: 2.81819574207382
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 2717.39130434783
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 10632964
      Days: 0
      Hours: 0
      Milliseconds: 63
      Minutes: 0
      Seconds: 1
      TotalDays: 1.23066712962963e-05
      TotalHours: 0.000295360111111111
      TotalMilliseconds: 1063.2964
      TotalMinutes: 0.0177216066666667
      TotalSeconds: 1.0632964
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        RepeatCount: 10
        GroupName: (Random Byte Buffer)
        FileName: Random Number Generation
    RelativeSpeed: 814.287333435442
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 9.40471537381298
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
FileName: Random Number Generation
ClockSpeed: 2295
---
Random Number Generation
------------------------
> @2295 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.005603|1x           |17844.72/s|
|[Random]::New().Next()|00:00:00.006464|1.15x        |15468.62/s|
|GetRandom             |00:00:00.016440|2.93x        |6082.39/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.007005|1x           |14273.68/s|
|QuickRandom           |00:00:00.008763|1.25x        |11411.36/s|
|GetRandom             |00:00:00.017774|2.54x        |5626.07/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.001305|1x           |7658.14/s |
|QuickRandom           |00:00:00.003680|2.82x        |2717.39/s |
|GetRandom             |00:00:01.063296|814.29x      |9.4/s     |
