---
layout: Benchmark

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 41250
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.77430555555556e-08
      TotalHours: 1.14583333333333e-06
      TotalMilliseconds: 4.125
      TotalMinutes: 6.875e-05
      TotalSeconds: 0.004125
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 24242.4242424242
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 42869
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.96168981481481e-08
      TotalHours: 1.19080555555556e-06
      TotalMilliseconds: 4.2869
      TotalMinutes: 7.14483333333333e-05
      TotalSeconds: 0.0042869
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1.03924848484848
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 23326.8795633208
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 93044
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.07689814814815e-07
      TotalHours: 2.58455555555556e-06
      TotalMilliseconds: 9.3044
      TotalMinutes: 0.000155073333333333
      TotalSeconds: 0.0093044
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        FileName: Random Number Generation
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 2.25561212121212
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 10747.6032844676
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 42520
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.9212962962963e-08
      TotalHours: 1.18111111111111e-06
      TotalMilliseconds: 4.252
      TotalMinutes: 7.08666666666667e-05
      TotalSeconds: 0.004252
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 23518.3443085607
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 61336
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.09907407407407e-08
      TotalHours: 1.70377777777778e-06
      TotalMilliseconds: 6.1336
      TotalMinutes: 0.000102226666666667
      TotalSeconds: 0.0061336
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 1.44252116650988
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 16303.6389722186
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 108900
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.26041666666667e-07
      TotalHours: 3.025e-06
      TotalMilliseconds: 10.89
      TotalMinutes: 0.0001815
      TotalSeconds: 0.01089
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        FileName: Random Number Generation
        GroupName: (Min and Max)
    RelativeSpeed: 2.56114769520226
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 9182.73645546373
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 8615
      Days: 0
      Hours: 0
      Milliseconds: 0
      Minutes: 0
      Seconds: 0
      TotalDays: 9.97106481481481e-09
      TotalHours: 2.39305555555556e-07
      TotalMilliseconds: 0.8615
      TotalMinutes: 1.43583333333333e-05
      TotalSeconds: 0.0008615
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
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 11607.6610562972
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
  - Technique: QuickRandom
    Time: 
      Ticks: 21301
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.46539351851852e-08
      TotalHours: 5.91694444444444e-07
      TotalMilliseconds: 2.1301
      TotalMinutes: 3.55016666666667e-05
      TotalSeconds: 0.0021301
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
    RelativeSpeed: 2.47254788160186
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 4694.61527627811
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
  - Technique: GetRandom
    Time: 
      Ticks: 6273051
      Days: 0
      Hours: 0
      Milliseconds: 627
      Minutes: 0
      Seconds: 0
      TotalDays: 7.26047569444444e-06
      TotalHours: 0.000174251416666667
      TotalMilliseconds: 627.3051
      TotalMinutes: 0.010455085
      TotalSeconds: 0.6273051
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        RepeatCount: 10
        FileName: Random Number Generation
        GroupName: (Random Byte Buffer)
    RelativeSpeed: 728.154497968659
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 15.941206280644
    BenchmarkInput: 
      RepeatCount: 10
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
FileName: Random Number Generation
ClockSpeed: 2793
---
Random Number Generation
------------------------
> @2793 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004125|1x           |24242.42/s|
|[Random]::New().Next()|00:00:00.004286|1.04x        |23326.88/s|
|GetRandom             |00:00:00.009304|2.26x        |10747.6/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.004252|1x           |23518.34/s|
|QuickRandom           |00:00:00.006133|1.44x        |16303.64/s|
|GetRandom             |00:00:00.010890|2.56x        |9182.74/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.000861|1x           |11607.66/s|
|QuickRandom           |00:00:00.002130|2.47x        |4694.62/s |
|GetRandom             |00:00:00.627305|728.15x      |15.94/s   |
