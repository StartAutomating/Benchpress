---
layout: Benchmark

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 57554
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.66134259259259e-08
      TotalHours: 1.59872222222222e-06
      TotalMilliseconds: 5.7554
      TotalMinutes: 9.59233333333333e-05
      TotalSeconds: 0.0057554
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 17374.9869687598
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 63566
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.35717592592593e-08
      TotalHours: 1.76572222222222e-06
      TotalMilliseconds: 6.3566
      TotalMinutes: 0.000105943333333333
      TotalSeconds: 0.0063566
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1.10445842165618
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 15731.6804581065
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 141607
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.63896990740741e-07
      TotalHours: 3.93352777777778e-06
      TotalMilliseconds: 14.1607
      TotalMinutes: 0.000236011666666667
      TotalSeconds: 0.0141607
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 2.46041977968517
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 7061.79779248201
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 69281
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 8.01863425925926e-08
      TotalHours: 1.92447222222222e-06
      TotalMilliseconds: 6.9281
      TotalMinutes: 0.000115468333333333
      TotalSeconds: 0.0069281
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 14433.9717960191
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 84637
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.79594907407407e-08
      TotalHours: 2.35102777777778e-06
      TotalMilliseconds: 8.4637
      TotalMinutes: 0.000141061666666667
      TotalSeconds: 0.0084637
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 1.22164807089967
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 11815.1635809398
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 180323
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.08707175925926e-07
      TotalHours: 5.00897222222222e-06
      TotalMilliseconds: 18.0323
      TotalMinutes: 0.000300538333333333
      TotalSeconds: 0.0180323
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 2.60277709617355
    GroupName: (Min and Max)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 5545.60427677002
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 12394
      Days: 0
      Hours: 0
      Milliseconds: 1
      Minutes: 0
      Seconds: 0
      TotalDays: 1.43449074074074e-08
      TotalHours: 3.44277777777778e-07
      TotalMilliseconds: 1.2394
      TotalMinutes: 2.06566666666667e-05
      TotalSeconds: 0.0012394
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        FileName: Random Number Generation
        RepeatCount: 10
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 8068.42020332419
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 26568
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 3.075e-08
      TotalHours: 7.38e-07
      TotalMilliseconds: 2.6568
      TotalMinutes: 4.428e-05
      TotalSeconds: 0.0026568
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        FileName: Random Number Generation
        RepeatCount: 10
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 2.14361787961917
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 3763.92652815417
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 10261655
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 1
      TotalDays: 1.18769155092593e-05
      TotalHours: 0.000285045972222222
      TotalMilliseconds: 1026.1655
      TotalMinutes: 0.0171027583333333
      TotalSeconds: 1.0261655
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        FileName: Random Number Generation
        RepeatCount: 10
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 827.953445215427
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2295
    FileName: Random Number Generation
    Throughput: 9.74501676386509
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
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
|QuickRandom           |00:00:00.005755|1x           |17374.99/s|
|[Random]::New().Next()|00:00:00.006356|1.1x         |15731.68/s|
|GetRandom             |00:00:00.014160|2.46x        |7061.8/s  |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.006928|1x           |14433.97/s|
|QuickRandom           |00:00:00.008463|1.22x        |11815.16/s|
|GetRandom             |00:00:00.018032|2.6x         |5545.6/s  |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.001239|1x           |8068.42/s |
|QuickRandom           |00:00:00.002656|2.14x        |3763.93/s |
|GetRandom             |00:00:01.026165|827.95x      |9.75/s    |
