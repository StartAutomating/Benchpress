---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: Guid
    Time: 
      Ticks: 795519
      Days: 0
      Hours: 0
      Milliseconds: 79
      Minutes: 0
      Seconds: 0
      TotalDays: 9.20739583333333e-07
      TotalHours: 2.209775e-05
      TotalMilliseconds: 79.5519
      TotalMinutes: 0.001325865
      TotalSeconds: 0.0795519
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
        GroupName: RandomLetters
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 12872.0998492808
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 899962
      Days: 0
      Hours: 0
      Milliseconds: 89
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04162268518519e-06
      TotalHours: 2.49989444444444e-05
      TotalMilliseconds: 89.9962
      TotalMinutes: 0.00149993666666667
      TotalSeconds: 0.0899962
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
        GroupName: RandomLetters
    RelativeSpeed: 1.13128913325766
    GroupName: RandomLetters
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 11378.2581931237
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1701705
      Days: 0
      Hours: 0
      Milliseconds: 170
      Minutes: 0
      Seconds: 0
      TotalDays: 1.96956597222222e-06
      TotalHours: 4.72695833333333e-05
      TotalMilliseconds: 170.1705
      TotalMinutes: 0.002836175
      TotalSeconds: 0.1701705
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
        GroupName: RandomLetters
    RelativeSpeed: 2.1391129564473
    GroupName: RandomLetters
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 6017.49421903326
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 802623
      Days: 0
      Hours: 0
      Milliseconds: 80
      Minutes: 0
      Seconds: 0
      TotalDays: 9.28961805555556e-07
      TotalHours: 2.22950833333333e-05
      TotalMilliseconds: 80.2623
      TotalMinutes: 0.001337705
      TotalSeconds: 0.0802623
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
        GroupName: RandomNumbers
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 12758.16915289
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
  - Technique: Get-Random
    Time: 
      Ticks: 1637660
      Days: 0
      Hours: 0
      Milliseconds: 163
      Minutes: 0
      Seconds: 0
      TotalDays: 1.89543981481481e-06
      TotalHours: 4.54905555555556e-05
      TotalMilliseconds: 163.766
      TotalMinutes: 0.00272943333333333
      TotalSeconds: 0.163766
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Random
              
        RepeatCount: 1024
        FileName: Which Random Is Faster
        GroupName: RandomNumbers
    RelativeSpeed: 2.0403850873947
    GroupName: RandomNumbers
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 6252.82415153329
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
FileName: Which Random Is Faster
ClockSpeed: 2295
---


### RandomLetters


|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|Guid                       |1024       |00:00:00.079551|1x           |12872.1/s |
|[BitConverter] + [Random]  |1024       |00:00:00.089996|1.13x        |11378.26/s|
|[BitConverter] + Get-Random|1024       |00:00:00.170170|2.14x        |6017.49/s |


### RandomNumbers


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::new().Next()|1024       |00:00:00.080262|1x           |12758.17/s|
|Get-Random            |1024       |00:00:00.163766|2.04x        |6252.82/s |
