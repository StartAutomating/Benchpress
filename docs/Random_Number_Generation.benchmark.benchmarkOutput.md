---
layout: Benchmark
title: Random Number Generation

Data: 
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 44025
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.09548611111111e-08
      TotalHours: 1.22291666666667e-06
      TotalMilliseconds: 4.4025
      TotalMinutes: 7.3375e-05
      TotalSeconds: 0.0044025
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  [Random]::new().Next()
              
        FileName: Random Number Generation
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 22714.3668370244
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 52968
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.13055555555555e-08
      TotalHours: 1.47133333333333e-06
      TotalMilliseconds: 5.2968
      TotalMinutes: 8.828e-05
      TotalSeconds: 0.0052968
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  $global:QuickRandom.Next()        
              
        FileName: Random Number Generation
    RelativeSpeed: 1.20313458262351
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 18879.3233650506
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 585442
      Days: 0
      Hours: 0
      Milliseconds: 58
      Minutes: 0
      Seconds: 0
      TotalDays: 6.77594907407407e-07
      TotalHours: 1.62622777777778e-05
      TotalMilliseconds: 58.5442
      TotalMinutes: 0.000975736666666667
      TotalSeconds: 0.0585442
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: 
        GroupName: (AnyRandomNumber)
        ScriptBlock: |
          
                  Get-Random
              
        FileName: Random Number Generation
    RelativeSpeed: 13.2979443498012
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 1708.11113654299
    BenchmarkInput: 
      GroupName: (AnyRandomNumber)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 42409
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.90844907407407e-08
      TotalHours: 1.17802777777778e-06
      TotalMilliseconds: 4.2409
      TotalMinutes: 7.06816666666667e-05
      TotalSeconds: 0.0042409
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
    Throughput: 23579.9004928199
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 68989
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.98483796296296e-08
      TotalHours: 1.91636111111111e-06
      TotalMilliseconds: 6.8989
      TotalMinutes: 0.000114981666666667
      TotalSeconds: 0.0068989
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  [Random]::new().Next(10,100)
              
        FileName: Random Number Generation
    RelativeSpeed: 1.62675375509915
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 14495.0644305614
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 109790
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.27071759259259e-07
      TotalHours: 3.04972222222222e-06
      TotalMilliseconds: 10.979
      TotalMinutes: 0.000182983333333333
      TotalSeconds: 0.010979
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: 
        GroupName: (Min and Max)
        ScriptBlock: |
          
                  Get-Random -Minimum 10 -Maximum 100 
              
        FileName: Random Number Generation
    RelativeSpeed: 2.5888372751067
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 9108.2976591675
    BenchmarkInput: 
      GroupName: (Min and Max)
      FileName: Random Number Generation
  - Technique: QuickRandom
    Time: 
      Ticks: 8377
      Days: 0
      Hours: 0
      Milliseconds: 0
      Minutes: 0
      Seconds: 0
      TotalDays: 9.69560185185185e-09
      TotalHours: 2.32694444444444e-07
      TotalMilliseconds: 0.8377
      TotalMinutes: 1.39616666666667e-05
      TotalSeconds: 0.0008377
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (Random Byte Buffer)
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  $global:QuickRandom.NextBytes($buff)
                  $buff = $null
              
        RepeatCount: 10
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 11937.447773666
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: [Random]::New().Next()
    Time: 
      Ticks: 26952
      Days: 0
      Hours: 0
      Milliseconds: 2
      Minutes: 0
      Seconds: 0
      TotalDays: 3.11944444444444e-08
      TotalHours: 7.48666666666667e-07
      TotalMilliseconds: 2.6952
      TotalMinutes: 4.492e-05
      TotalSeconds: 0.0026952
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (Random Byte Buffer)
        ScriptBlock: |
          
                  $buff = [byte[]]::new(1kb)
                  [random]::new().NextBytes($buff)
                  $buff = $null
              
        RepeatCount: 10
    RelativeSpeed: 3.21738092395846
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 3710.29979222321
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
  - Technique: GetRandom
    Time: 
      Ticks: 7049663
      Days: 0
      Hours: 0
      Milliseconds: 704
      Minutes: 0
      Seconds: 0
      TotalDays: 8.15933217592593e-06
      TotalHours: 0.000195823972222222
      TotalMilliseconds: 704.9663
      TotalMinutes: 0.0117494383333333
      TotalSeconds: 0.7049663
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: 
        FileName: Random Number Generation
        GroupName: (Random Byte Buffer)
        ScriptBlock: |
          
                  $buff = @(foreach ($n in 1..1kb) { Get-Random -Minimum 0 -Maximum 255}) -as [byte[]]        
              
        RepeatCount: 10
    RelativeSpeed: 841.549838844455
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 14.1850752298372
    BenchmarkInput: 
      GroupName: (Random Byte Buffer)
      RepeatCount: 10
      FileName: Random Number Generation
FileName: Random Number Generation
ClockSpeed: 2594
---


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.004402|1x           |22714.37/s|
|QuickRandom           |00:00:00.005296|1.2x         |18879.32/s|
|GetRandom             |00:00:00.058544|13.3x        |1708.11/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004240|1x           |23579.9/s |
|[Random]::New().Next()|00:00:00.006898|1.63x        |14495.06/s|
|GetRandom             |00:00:00.010979|2.59x        |9108.3/s  |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.000837|1x           |11937.45/s|
|[Random]::New().Next()|00:00:00.002695|3.22x        |3710.3/s  |
|GetRandom             |00:00:00.704966|841.55x      |14.19/s   |
