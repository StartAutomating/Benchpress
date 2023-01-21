---
layout: Benchmark

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 82188
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.5125e-08
      TotalHours: 2.283e-06
      TotalMilliseconds: 8.2188
      TotalMinutes: 0.00013698
      TotalSeconds: 0.0082188
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 12167.2263590792
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 113942
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.31877314814815e-07
      TotalHours: 3.16505555555556e-06
      TotalMilliseconds: 11.3942
      TotalMinutes: 0.000189903333333333
      TotalSeconds: 0.0113942
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        FileName: Random Number Generation
    RelativeSpeed: 1.3863581058062
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 8776.39500798652
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 255376
      Days: 0
      Hours: 0
      Milliseconds: 25
      Minutes: 0
      Seconds: 0
      TotalDays: 2.95574074074074e-07
      TotalHours: 7.09377777777778e-06
      TotalMilliseconds: 25.5376
      TotalMinutes: 0.000425626666666667
      TotalSeconds: 0.0255376
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  Get-Random
              
        FileName: Random Number Generation
    RelativeSpeed: 3.10721759867621
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 3915.7947497024
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 84091
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.73275462962963e-08
      TotalHours: 2.33586111111111e-06
      TotalMilliseconds: 8.4091
      TotalMinutes: 0.000140151666666667
      TotalSeconds: 0.0084091
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 11891.8790358064
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 106328
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.23064814814815e-07
      TotalHours: 2.95355555555556e-06
      TotalMilliseconds: 10.6328
      TotalMinutes: 0.000177213333333333
      TotalSeconds: 0.0106328
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        FileName: Random Number Generation
    RelativeSpeed: 1.26443971411923
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 9404.86043187119
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 458941
      Days: 0
      Hours: 0
      Milliseconds: 45
      Minutes: 0
      Seconds: 0
      TotalDays: 5.31181712962963e-07
      TotalHours: 1.27483611111111e-05
      TotalMilliseconds: 45.8941
      TotalMinutes: 0.000764901666666667
      TotalSeconds: 0.0458941
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        FileName: Random Number Generation
    RelativeSpeed: 5.45767085657205
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 2178.92931771186
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 7834
      Days: 0
      Hours: 0
      Milliseconds: 0
      Minutes: 0
      Seconds: 0
      TotalDays: 9.06712962962963e-09
      TotalHours: 2.17611111111111e-07
      TotalMilliseconds: 0.7834
      TotalMinutes: 1.30566666666667e-05
      TotalSeconds: 0.0007834
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        GroupName: (Random Byte Buffer)
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        RepeatCount: 10
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 12764.8710748021
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 23450
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.71412037037037e-08
      TotalHours: 6.51388888888889e-07
      TotalMilliseconds: 2.345
      TotalMinutes: 3.90833333333333e-05
      TotalSeconds: 0.002345
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        GroupName: (Random Byte Buffer)
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        RepeatCount: 10
        FileName: Random Number Generation
    RelativeSpeed: 2.9933622670411
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 4264.39232409382
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 6387765
      Days: 0
      Hours: 0
      Milliseconds: 638
      Minutes: 0
      Seconds: 0
      TotalDays: 7.39324652777778e-06
      TotalHours: 0.000177437916666667
      TotalMilliseconds: 638.7765
      TotalMinutes: 0.010646275
      TotalSeconds: 0.6387765
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        GroupName: (Random Byte Buffer)
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        RepeatCount: 10
        FileName: Random Number Generation
    RelativeSpeed: 815.389966811335
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 15.6549278190416
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
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
|QuickRandom           |00:00:00.008218|1x           |12167.23/s|
|[Random]::New().Next()|00:00:00.011394|1.39x        |8776.4/s  |
|GetRandom             |00:00:00.025537|3.11x        |3915.79/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.008409|1x           |11891.88/s|
|QuickRandom           |00:00:00.010632|1.26x        |9404.86/s |
|GetRandom             |00:00:00.045894|5.46x        |2178.93/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.000783|1x           |12764.87/s|
|QuickRandom           |00:00:00.002345|2.99x        |4264.39/s |
|GetRandom             |00:00:00.638776|815.39x      |15.65/s   |
