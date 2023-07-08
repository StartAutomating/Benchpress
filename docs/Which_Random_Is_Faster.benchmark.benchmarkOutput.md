---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 756429
      Days: 0
      Hours: 0
      Milliseconds: 75
      Minutes: 0
      Seconds: 0
      TotalDays: 8.75496527777778e-07
      TotalHours: 2.10119166666667e-05
      TotalMilliseconds: 75.6429
      TotalMinutes: 0.001260715
      TotalSeconds: 0.0756429
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        GroupName: RandomLetters
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 13537.2916691454
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: Guid
    Time: 
      Ticks: 790912
      Days: 0
      Hours: 0
      Milliseconds: 79
      Minutes: 0
      Seconds: 0
      TotalDays: 9.15407407407407e-07
      TotalHours: 2.19697777777778e-05
      TotalMilliseconds: 79.0912
      TotalMinutes: 0.00131818666666667
      TotalSeconds: 0.0790912
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        GroupName: RandomLetters
    RelativeSpeed: 1.04558656529562
    GroupName: RandomLetters
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 12947.0788153423
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1607314
      Days: 0
      Hours: 0
      Milliseconds: 160
      Minutes: 0
      Seconds: 0
      TotalDays: 1.86031712962963e-06
      TotalHours: 4.46476111111111e-05
      TotalMilliseconds: 160.7314
      TotalMinutes: 0.00267885666666667
      TotalSeconds: 0.1607314
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        GroupName: RandomLetters
    RelativeSpeed: 2.12487093963875
    GroupName: RandomLetters
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 6370.87712792895
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomLetters
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 741603
      Days: 0
      Hours: 0
      Milliseconds: 74
      Minutes: 0
      Seconds: 0
      TotalDays: 8.58336805555556e-07
      TotalHours: 2.06000833333333e-05
      TotalMilliseconds: 74.1603
      TotalMinutes: 0.001236005
      TotalSeconds: 0.0741603
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        GroupName: RandomNumbers
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 13807.9268827122
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
  - Technique: Get-Random
    Time: 
      Ticks: 1305599
      Days: 0
      Hours: 0
      Milliseconds: 130
      Minutes: 0
      Seconds: 0
      TotalDays: 1.5111099537037e-06
      TotalHours: 3.62666388888889e-05
      TotalMilliseconds: 130.5599
      TotalMinutes: 0.00217599833333333
      TotalSeconds: 0.1305599
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: RandomNumbers
    RelativeSpeed: 1.76050932911544
    GroupName: RandomNumbers
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 7843.14326221144
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
FileName: Which Random Is Faster
ClockSpeed: 2095
---


### RandomLetters


|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|[BitConverter] + [Random]  |1024       |00:00:00.075642|1x           |13537.29/s|
|Guid                       |1024       |00:00:00.079091|1.05x        |12947.08/s|
|[BitConverter] + Get-Random|1024       |00:00:00.160731|2.12x        |6370.88/s |


### RandomNumbers


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::new().Next()|1024       |00:00:00.074160|1x           |13807.93/s|
|Get-Random            |1024       |00:00:00.130559|1.76x        |7843.14/s |
