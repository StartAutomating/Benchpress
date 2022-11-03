---
layout: Benchmark

Data: 
  - Technique: QuickRandom
    Time: 
      Ticks: 42218
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.88634259259259e-08
      TotalHours: 1.17272222222222e-06
      TotalMilliseconds: 4.2218
      TotalMinutes: 7.03633333333333e-05
      TotalSeconds: 0.0042218
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 23686.5791842342
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 43784
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.06759259259259e-08
      TotalHours: 1.21622222222222e-06
      TotalMilliseconds: 4.3784
      TotalMinutes: 7.29733333333333e-05
      TotalSeconds: 0.0043784
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 1.03709318300251
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 22839.3933857117
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 93184
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.07851851851852e-07
      TotalHours: 2.58844444444444e-06
      TotalMilliseconds: 9.3184
      TotalMinutes: 0.000155306666666667
      TotalSeconds: 0.0093184
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: (AnyRandomNumber)
    RelativeSpeed: 2.20721019470368
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 10731.456043956
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 43489
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.03344907407407e-08
      TotalHours: 1.20802777777778e-06
      TotalMilliseconds: 4.3489
      TotalMinutes: 7.24816666666667e-05
      TotalSeconds: 0.0043489
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        GroupName: (Min and Max)
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 22994.3204028605
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 62770
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.2650462962963e-08
      TotalHours: 1.74361111111111e-06
      TotalMilliseconds: 6.277
      TotalMinutes: 0.000104616666666667
      TotalSeconds: 0.006277
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $global:QuickRandom.Next(10,100)        
              
        GroupName: (Min and Max)
    RelativeSpeed: 1.44335349168755
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 15931.1773140035
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 110285
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.27644675925926e-07
      TotalHours: 3.06347222222222e-06
      TotalMilliseconds: 11.0285
      TotalMinutes: 0.000183808333333333
      TotalSeconds: 0.0110285
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        GroupName: (Min and Max)
    RelativeSpeed: 2.53592862562947
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 9067.41623974249
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 7987
      Days: 0
      Hours: 0
      Milliseconds: 0
      Minutes: 0
      Seconds: 0
      TotalDays: 9.24421296296296e-09
      TotalHours: 2.21861111111111e-07
      TotalMilliseconds: 0.7987
      TotalMinutes: 1.33116666666667e-05
      TotalSeconds: 0.0007987
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 12520.3455615375
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
  - Technique: QuickRandom
    Time: 
      Ticks: 24547
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 2.84108796296296e-08
      TotalHours: 6.81861111111111e-07
      TotalMilliseconds: 2.4547
      TotalMinutes: 4.09116666666667e-05
      TotalSeconds: 0.0024547
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
    RelativeSpeed: 3.07336922499061
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 4073.81757444902
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
  - Technique: GetRandom
    Time: 
      Ticks: 7038552
      Days: 0
      Hours: 0
      Milliseconds: 703
      Minutes: 0
      Seconds: 0
      TotalDays: 8.14647222222222e-06
      TotalHours: 0.000195515333333333
      TotalMilliseconds: 703.8552
      TotalMinutes: 0.01173092
      TotalSeconds: 0.7038552
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        FileName: Random Number Generation
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        GroupName: (Random Byte Buffer)
        RepeatCount: 10
    RelativeSpeed: 881.251032928509
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 14.2074676723281
    BenchmarkInput: 
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
FileName: Random Number Generation
ClockSpeed: 2594
---
Random Number Generation
------------------------
> @2594 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004221|1x           |23686.58/s|
|[Random]::New().Next()|00:00:00.004378|1.04x        |22839.39/s|
|GetRandom             |00:00:00.009318|2.21x        |10731.46/s|


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.004348|1x           |22994.32/s|
|QuickRandom           |00:00:00.006277|1.44x        |15931.18/s|
|GetRandom             |00:00:00.011028|2.54x        |9067.42/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.000798|1x           |12520.35/s|
|QuickRandom           |00:00:00.002454|3.07x        |4073.82/s |
|GetRandom             |00:00:00.703855|881.25x      |14.21/s   |
