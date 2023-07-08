---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 41363
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.78738425925926e-08
      TotalHours: 1.14897222222222e-06
      TotalMilliseconds: 4.1363
      TotalMinutes: 6.89383333333333e-05
      TotalSeconds: 0.0041363
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 24176.1961173029
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 43635
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.05034722222222e-08
      TotalHours: 1.21208333333333e-06
      TotalMilliseconds: 4.3635
      TotalMinutes: 7.2725e-05
      TotalSeconds: 0.0043635
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1.05492831757851
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 22917.3828348803
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 443145
      Days: 0
      Hours: 0
      Milliseconds: 44
      Minutes: 0
      Seconds: 0
      TotalDays: 5.12899305555556e-07
      TotalHours: 1.23095833333333e-05
      TotalMilliseconds: 44.3145
      TotalMinutes: 0.000738575
      TotalSeconds: 0.0443145
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 10.7135604284022
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 2256.59772760609
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 41292
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.77916666666667e-08
      TotalHours: 1.147e-06
      TotalMilliseconds: 4.1292
      TotalMinutes: 6.882e-05
      TotalSeconds: 0.0041292
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        GroupName: (Min and Max)
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 24217.76615325
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 65017
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.52511574074074e-08
      TotalHours: 1.80602777777778e-06
      TotalMilliseconds: 6.5017
      TotalMinutes: 0.000108361666666667
      TotalSeconds: 0.0065017
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        GroupName: (Min and Max)
    RelativeSpeed: 1.57456650198586
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 15380.5927680453
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 110032
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.27351851851852e-07
      TotalHours: 3.05644444444444e-06
      TotalMilliseconds: 11.0032
      TotalMinutes: 0.000183386666666667
      TotalSeconds: 0.0110032
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        GroupName: (Min and Max)
    RelativeSpeed: 2.66472924537441
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 9088.26523193253
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 9157
      Days: 0
      Hours: 0
      Milliseconds: 0
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05983796296296e-08
      TotalHours: 2.54361111111111e-07
      TotalMilliseconds: 0.9157
      TotalMinutes: 1.52616666666667e-05
      TotalSeconds: 0.0009157
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
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 10920.6071857595
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 22968
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.65833333333333e-08
      TotalHours: 6.38e-07
      TotalMilliseconds: 2.2968
      TotalMinutes: 3.828e-05
      TotalSeconds: 0.0022968
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
    RelativeSpeed: 2.50824505842525
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 4353.88366422849
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
  - Technique: GetRandom
    Time: 
      Ticks: 6117174
      Days: 0
      Hours: 0
      Milliseconds: 611
      Minutes: 0
      Seconds: 0
      TotalDays: 7.0800625e-06
      TotalHours: 0.0001699215
      TotalMilliseconds: 611.7174
      TotalMinutes: 0.01019529
      TotalSeconds: 0.6117174
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        RepeatCount: 10
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 668.032543409414
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 16.3474179416835
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
FileName: Random Number Generation
ClockSpeed: 2793
---


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004136|1x           |24176.2/s |
|[Random]::New().Next()|00:00:00.004363|1.05x        |22917.38/s|
|GetRandom             |00:00:00.044314|10.71x       |2256.6/s  |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004129|1x           |24217.77/s|
|[Random]::New().Next()|00:00:00.006501|1.57x        |15380.59/s|
|GetRandom             |00:00:00.011003|2.66x        |9088.27/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.000915|1x           |10920.61/s|
|[Random]::New().Next()|00:00:00.002296|2.51x        |4353.88/s |
|GetRandom             |00:00:00.611717|668.03x      |16.35/s   |
