---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 39151
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.53136574074074e-08
      TotalHours: 1.08752777777778e-06
      TotalMilliseconds: 3.9151
      TotalMinutes: 6.52516666666667e-05
      TotalSeconds: 0.0039151
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 25542.1317463155
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 41190
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.76736111111111e-08
      TotalHours: 1.14416666666667e-06
      TotalMilliseconds: 4.119
      TotalMinutes: 6.865e-05
      TotalSeconds: 0.004119
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 1.05208040663074
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 24277.7373148823
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 90552
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04805555555556e-07
      TotalHours: 2.51533333333333e-06
      TotalMilliseconds: 9.0552
      TotalMinutes: 0.00015092
      TotalSeconds: 0.0090552
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 2.31289111389237
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 11043.3783903172
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 39273
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.54548611111111e-08
      TotalHours: 1.09091666666667e-06
      TotalMilliseconds: 3.9273
      TotalMinutes: 6.5455e-05
      TotalSeconds: 0.0039273
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 25462.7861380592
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 60790
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.03587962962963e-08
      TotalHours: 1.68861111111111e-06
      TotalMilliseconds: 6.079
      TotalMinutes: 0.000101316666666667
      TotalSeconds: 0.006079
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 1.54788276933262
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 16450.0740253331
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 105353
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.21936342592593e-07
      TotalHours: 2.92647222222222e-06
      TotalMilliseconds: 10.5353
      TotalMinutes: 0.000175588333333333
      TotalSeconds: 0.0105353
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 2.68258090800295
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 9491.89866448986
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 7373
      Days: 0
      Hours: 0
      Milliseconds: 0
      Minutes: 0
      Seconds: 0
      TotalDays: 8.53356481481482e-09
      TotalHours: 2.04805555555556e-07
      TotalMilliseconds: 0.7373
      TotalMinutes: 1.22883333333333e-05
      TotalSeconds: 0.0007373
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
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 13563.00013563
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 21381
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.47465277777778e-08
      TotalHours: 5.93916666666667e-07
      TotalMilliseconds: 2.1381
      TotalMinutes: 3.5635e-05
      TotalSeconds: 0.0021381
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
    RelativeSpeed: 2.89990505899905
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 4677.04971703849
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 6107334
      Days: 0
      Hours: 0
      Milliseconds: 610
      Minutes: 0
      Seconds: 0
      TotalDays: 7.06867361111111e-06
      TotalHours: 0.000169648166666667
      TotalMilliseconds: 610.7334
      TotalMinutes: 0.01017889
      TotalSeconds: 0.6107334
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        RepeatCount: 10
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        GroupName: (Random Byte Buffer)
        FileName: Random Number Generation
    RelativeSpeed: 828.337718703377
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 16.3737565359943
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
FileName: Random Number Generation
ClockSpeed: 2793
---
Random Number Generation
------------------------
> @2793 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.003915|1x           |25542.13/s|
|[Random]::New().Next()|00:00:00.004119|1.05x        |24277.74/s|
|GetRandom             |00:00:00.009055|2.31x        |11043.38/s|


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.003927|1x           |25462.79/s|
|[Random]::New().Next()|00:00:00.006079|1.55x        |16450.07/s|
|GetRandom             |00:00:00.010535|2.68x        |9491.9/s  |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.000737|1x           |13563/s   |
|[Random]::New().Next()|00:00:00.002138|2.9x         |4677.05/s |
|GetRandom             |00:00:00.610733|828.34x      |16.37/s   |
