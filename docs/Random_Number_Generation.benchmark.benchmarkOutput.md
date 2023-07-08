---
layout: Benchmark

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 39994
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.62893518518519e-08
      TotalHours: 1.11094444444444e-06
      TotalMilliseconds: 3.9994
      TotalMinutes: 6.66566666666667e-05
      TotalSeconds: 0.0039994
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 25003.7505625844
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 50300
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.82175925925926e-08
      TotalHours: 1.39722222222222e-06
      TotalMilliseconds: 5.03
      TotalMinutes: 8.38333333333333e-05
      TotalSeconds: 0.00503
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        FileName: Random Number Generation
    RelativeSpeed: 1.25768865329799
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 19880.7157057654
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 89407
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.03480324074074e-07
      TotalHours: 2.48352777777778e-06
      TotalMilliseconds: 8.9407
      TotalMinutes: 0.000149011666666667
      TotalSeconds: 0.0089407
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  Get-Random
              
        FileName: Random Number Generation
    RelativeSpeed: 2.23551032654898
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 11184.8065587706
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 39598
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.58310185185185e-08
      TotalHours: 1.09994444444444e-06
      TotalMilliseconds: 3.9598
      TotalMinutes: 6.59966666666667e-05
      TotalSeconds: 0.0039598
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 25253.8006970049
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 60165
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 6.96354166666667e-08
      TotalHours: 1.67125e-06
      TotalMilliseconds: 6.0165
      TotalMinutes: 0.000100275
      TotalSeconds: 0.0060165
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        FileName: Random Number Generation
    RelativeSpeed: 1.5193949189353
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 16620.959029336
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 105868
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.22532407407407e-07
      TotalHours: 2.94077777777778e-06
      TotalMilliseconds: 10.5868
      TotalMinutes: 0.000176446666666667
      TotalSeconds: 0.0105868
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        FileName: Random Number Generation
    RelativeSpeed: 2.67356937219051
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 9445.72486492613
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 7692
      Days: 0
      Hours: 0
      Milliseconds: 0
      Minutes: 0
      Seconds: 0
      TotalDays: 8.90277777777778e-09
      TotalHours: 2.13666666666667e-07
      TotalMilliseconds: 0.7692
      TotalMinutes: 1.282e-05
      TotalSeconds: 0.0007692
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
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 13000.5200208008
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 407102
      Days: 0
      Hours: 0
      Milliseconds: 40
      Minutes: 0
      Seconds: 0
      TotalDays: 4.7118287037037e-07
      TotalHours: 1.13083888888889e-05
      TotalMilliseconds: 40.7102
      TotalMinutes: 0.000678503333333333
      TotalSeconds: 0.0407102
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
    RelativeSpeed: 52.9253770150806
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 245.638685145246
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 6482233
      Days: 0
      Hours: 0
      Milliseconds: 648
      Minutes: 0
      Seconds: 0
      TotalDays: 7.50258449074074e-06
      TotalHours: 0.000180062027777778
      TotalMilliseconds: 648.2233
      TotalMinutes: 0.0108037216666667
      TotalSeconds: 0.6482233
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        GroupName: (Random Byte Buffer)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        RepeatCount: 10
    RelativeSpeed: 842.723998959958
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 15.4267827151539
    BenchmarkInput: 
      RepeatCount: 10
      GroupName: (Random Byte Buffer)
      FileName: Random Number Generation
FileName: Random Number Generation
ClockSpeed: 2594
---
Random Number Generation
------------------------
> @2594 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.003999|1x           |25003.75/s|
|[Random]::New().Next()|00:00:00.005030|1.26x        |19880.72/s|
|GetRandom             |00:00:00.008940|2.24x        |11184.81/s|


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.003959|1x           |25253.8/s |
|[Random]::New().Next()|00:00:00.006016|1.52x        |16620.96/s|
|GetRandom             |00:00:00.010586|2.67x        |9445.72/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.000769|1x           |13000.52/s|
|[Random]::New().Next()|00:00:00.040710|52.93x       |245.64/s  |
|GetRandom             |00:00:00.648223|842.72x      |15.43/s   |
