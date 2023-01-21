---
layout: Benchmark

Data: 
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 47611
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.51053240740741e-08
      TotalHours: 1.32252777777778e-06
      TotalMilliseconds: 4.7611
      TotalMinutes: 7.93516666666667e-05
      TotalSeconds: 0.0047611
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  [Random]::new().Next()
              
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 21003.5495998824
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 107269
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.24153935185185e-07
      TotalHours: 2.97969444444444e-06
      TotalMilliseconds: 10.7269
      TotalMinutes: 0.000178781666666667
      TotalSeconds: 0.0107269
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  Get-Random
              
    RelativeSpeed: 2.25302976202978
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 9322.35781073749
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 417506
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.83224537037037e-07
      TotalHours: 1.15973888888889e-05
      TotalMilliseconds: 41.7506
      TotalMinutes: 0.000695843333333333
      TotalSeconds: 0.0417506
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
    RelativeSpeed: 8.76910797924849
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 2395.17515915939
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 50072
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.79537037037037e-08
      TotalHours: 1.39088888888889e-06
      TotalMilliseconds: 5.0072
      TotalMinutes: 8.34533333333333e-05
      TotalSeconds: 0.0050072
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 19971.2414123662
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 70109
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.11446759259259e-08
      TotalHours: 1.94747222222222e-06
      TotalMilliseconds: 7.0109
      TotalMinutes: 0.000116848333333333
      TotalSeconds: 0.0070109
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
    RelativeSpeed: 1.40016376417958
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 14263.5039723859
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 124330
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.43900462962963e-07
      TotalHours: 3.45361111111111e-06
      TotalMilliseconds: 12.433
      TotalMinutes: 0.000207216666666667
      TotalSeconds: 0.012433
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        FileName: Random Number Generation
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
    RelativeSpeed: 2.48302444479949
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 8043.11107536395
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 10586
      Days: 0
      Hours: 0
      Milliseconds: 1
      Minutes: 0
      Seconds: 0
      TotalDays: 1.22523148148148e-08
      TotalHours: 2.94055555555556e-07
      TotalMilliseconds: 1.0586
      TotalMinutes: 1.76433333333333e-05
      TotalSeconds: 0.0010586
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        RepeatCount: 10
        FileName: Random Number Generation
        GroupName: (Random Byte Buffer)
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 9446.43869261288
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 26047
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 3.01469907407407e-08
      TotalHours: 7.23527777777778e-07
      TotalMilliseconds: 2.6047
      TotalMinutes: 4.34116666666667e-05
      TotalSeconds: 0.0026047
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        RepeatCount: 10
        FileName: Random Number Generation
        GroupName: (Random Byte Buffer)
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
    RelativeSpeed: 2.46051388626488
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 3839.21372902829
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 8301496
      Days: 0
      Hours: 0
      Milliseconds: 830
      Minutes: 0
      Seconds: 0
      TotalDays: 9.60821296296296e-06
      TotalHours: 0.000230597111111111
      TotalMilliseconds: 830.1496
      TotalMinutes: 0.0138358266666667
      TotalSeconds: 0.8301496
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        RepeatCount: 10
        FileName: Random Number Generation
        GroupName: (Random Byte Buffer)
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
    RelativeSpeed: 784.195730209711
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 12.0460215845433
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
FileName: Random Number Generation
ClockSpeed: 2095
---
Random Number Generation
------------------------
> @2095 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.004761|1x           |21003.55/s|
|GetRandom             |00:00:00.010726|2.25x        |9322.36/s |
|QuickRandom           |00:00:00.041750|8.77x        |2395.18/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.005007|1x           |19971.24/s|
|QuickRandom           |00:00:00.007010|1.4x         |14263.5/s |
|GetRandom             |00:00:00.012433|2.48x        |8043.11/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.001058|1x           |9446.44/s |
|QuickRandom           |00:00:00.002604|2.46x        |3839.21/s |
|GetRandom             |00:00:00.830149|784.2x       |12.05/s   |
