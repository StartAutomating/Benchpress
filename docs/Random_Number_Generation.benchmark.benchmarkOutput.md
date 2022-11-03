---
layout: Benchmark

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 59374
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.87199074074074e-08
      TotalHours: 1.64927777777778e-06
      TotalMilliseconds: 5.9374
      TotalMinutes: 9.89566666666667e-05
      TotalSeconds: 0.0059374
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2394
    FileName: Random Number Generation
    Throughput: 16842.388924445
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 67169
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.77418981481481e-08
      TotalHours: 1.86580555555556e-06
      TotalMilliseconds: 6.7169
      TotalMinutes: 0.000111948333333333
      TotalSeconds: 0.0067169
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 1.13128642166605
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2394
    FileName: Random Number Generation
    Throughput: 14887.8202742337
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 177759
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.05739583333333e-07
      TotalHours: 4.93775e-06
      TotalMilliseconds: 17.7759
      TotalMinutes: 0.000296265
      TotalSeconds: 0.0177759
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: (AnyRandomNumber)
        FileName: Random Number Generation
    RelativeSpeed: 2.99388621282043
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2394
    FileName: Random Number Generation
    Throughput: 5625.59420338773
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 60246
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 6.97291666666667e-08
      TotalHours: 1.6735e-06
      TotalMilliseconds: 6.0246
      TotalMinutes: 0.00010041
      TotalSeconds: 0.0060246
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2394
    FileName: Random Number Generation
    Throughput: 16598.612356007
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 90749
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05033564814815e-07
      TotalHours: 2.52080555555556e-06
      TotalMilliseconds: 9.0749
      TotalMinutes: 0.000151248333333333
      TotalSeconds: 0.0090749
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 1.50630747269528
    GroupName: (Min and Max)
    ClockSpeed: 2394
    FileName: Random Number Generation
    Throughput: 11019.4051725088
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 497284
      Days: 0
      Hours: 0
      Milliseconds: 49
      Minutes: 0
      Seconds: 0
      TotalDays: 5.75560185185185e-07
      TotalHours: 1.38134444444444e-05
      TotalMilliseconds: 49.7284
      TotalMinutes: 0.000828806666666667
      TotalSeconds: 0.0497284
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        GroupName: (Min and Max)
        FileName: Random Number Generation
    RelativeSpeed: 8.2542243468446
    GroupName: (Min and Max)
    ClockSpeed: 2394
    FileName: Random Number Generation
    Throughput: 2010.92333555876
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 10734
      Days: 0
      Hours: 0
      Milliseconds: 1
      Minutes: 0
      Seconds: 0
      TotalDays: 1.24236111111111e-08
      TotalHours: 2.98166666666667e-07
      TotalMilliseconds: 1.0734
      TotalMinutes: 1.789e-05
      TotalSeconds: 0.0010734
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2394
    FileName: Random Number Generation
    Throughput: 9316.19154089808
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 32087
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 3.71377314814815e-08
      TotalHours: 8.91305555555556e-07
      TotalMilliseconds: 3.2087
      TotalMinutes: 5.34783333333333e-05
      TotalSeconds: 0.0032087
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
        FileName: Random Number Generation
    RelativeSpeed: 2.98928637972797
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2394
    FileName: Random Number Generation
    Throughput: 3116.52694237542
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 10678511
      Days: 0
      Hours: 0
      Milliseconds: 67
      Minutes: 0
      Seconds: 1
      TotalDays: 1.23593877314815e-05
      TotalHours: 0.000296625305555556
      TotalMilliseconds: 1067.8511
      TotalMinutes: 0.0177975183333333
      TotalSeconds: 1.0678511
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
        FileName: Random Number Generation
    RelativeSpeed: 994.830538475871
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2394
    FileName: Random Number Generation
    Throughput: 9.36460148797899
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
FileName: Random Number Generation
ClockSpeed: 2394
---
Random Number Generation
------------------------
> @2394 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.005937|1x           |16842.39/s|
|[Random]::New().Next()|00:00:00.006716|1.13x        |14887.82/s|
|GetRandom             |00:00:00.017775|2.99x        |5625.59/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.006024|1x           |16598.61/s|
|[Random]::New().Next()|00:00:00.009074|1.51x        |11019.41/s|
|GetRandom             |00:00:00.049728|8.25x        |2010.92/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.001073|1x           |9316.19/s |
|[Random]::New().Next()|00:00:00.003208|2.99x        |3116.53/s |
|GetRandom             |00:00:01.067851|994.83x      |9.36/s    |
