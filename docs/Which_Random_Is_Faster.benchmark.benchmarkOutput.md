---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 652649
      Days: 0
      Hours: 0
      Milliseconds: 65
      Minutes: 0
      Seconds: 0
      TotalDays: 7.55380787037037e-07
      TotalHours: 1.81291388888889e-05
      TotalMilliseconds: 65.2649
      TotalMinutes: 0.00108774833333333
      TotalSeconds: 0.0652649
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        FileName: Which Random Is Faster
        GroupName: RandomLetters
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        RepeatCount: 1024
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 15689.9037614399
    BenchmarkInput: 
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      RepeatCount: 1024
  - Technique: Guid
    Time: 
      Ticks: 778988
      Days: 0
      Hours: 0
      Milliseconds: 77
      Minutes: 0
      Seconds: 0
      TotalDays: 9.01606481481481e-07
      TotalHours: 2.16385555555556e-05
      TotalMilliseconds: 77.8988
      TotalMinutes: 0.00129831333333333
      TotalSeconds: 0.0778988
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        FileName: Which Random Is Faster
        GroupName: RandomLetters
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        RepeatCount: 1024
    RelativeSpeed: 1.19357878430826
    GroupName: RandomLetters
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 13145.2602607486
    BenchmarkInput: 
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      RepeatCount: 1024
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1642425
      Days: 0
      Hours: 0
      Milliseconds: 164
      Minutes: 0
      Seconds: 0
      TotalDays: 1.90095486111111e-06
      TotalHours: 4.56229166666667e-05
      TotalMilliseconds: 164.2425
      TotalMinutes: 0.002737375
      TotalSeconds: 0.1642425
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        FileName: Which Random Is Faster
        GroupName: RandomLetters
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        RepeatCount: 1024
    RelativeSpeed: 2.5165517759163
    GroupName: RandomLetters
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 6234.68347108696
    BenchmarkInput: 
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      RepeatCount: 1024
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 606717
      Days: 0
      Hours: 0
      Milliseconds: 60
      Minutes: 0
      Seconds: 0
      TotalDays: 7.0221875e-07
      TotalHours: 1.685325e-05
      TotalMilliseconds: 60.6717
      TotalMinutes: 0.001011195
      TotalSeconds: 0.0606717
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        FileName: Which Random Is Faster
        GroupName: RandomNumbers
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        RepeatCount: 1024
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 16877.7205847207
    BenchmarkInput: 
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      RepeatCount: 1024
  - Technique: Get-Random
    Time: 
      Ticks: 1623397
      Days: 0
      Hours: 0
      Milliseconds: 162
      Minutes: 0
      Seconds: 0
      TotalDays: 1.87893171296296e-06
      TotalHours: 4.50943611111111e-05
      TotalMilliseconds: 162.3397
      TotalMinutes: 0.00270566166666667
      TotalSeconds: 0.1623397
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        FileName: Which Random Is Faster
        GroupName: RandomNumbers
        ScriptBlock: |
          
                  Get-Random
              
        RepeatCount: 1024
    RelativeSpeed: 2.67570712539784
    GroupName: RandomNumbers
    ClockSpeed: 2295
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 6307.76082498613
    BenchmarkInput: 
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      RepeatCount: 1024
FileName: Which Random Is Faster
ClockSpeed: 2295
---


### RandomLetters


|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|[BitConverter] + [Random]  |1024       |00:00:00.065264|1x           |15689.9/s |
|Guid                       |1024       |00:00:00.077898|1.19x        |13145.26/s|
|[BitConverter] + Get-Random|1024       |00:00:00.164242|2.52x        |6234.68/s |


### RandomNumbers


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::new().Next()|1024       |00:00:00.060671|1x           |16877.72/s|
|Get-Random            |1024       |00:00:00.162339|2.68x        |6307.76/s |
