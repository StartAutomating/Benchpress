---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: Guid
    Time: 
      Ticks: 561779
      Days: 0
      Hours: 0
      Milliseconds: 56
      Minutes: 0
      Seconds: 0
      TotalDays: 6.50207175925926e-07
      TotalHours: 1.56049722222222e-05
      TotalMilliseconds: 56.1779
      TotalMinutes: 0.000936298333333333
      TotalSeconds: 0.0561779
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
        GroupName: RandomLetters
        RepeatCount: 1024
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 18227.8084442459
    BenchmarkInput: 
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      RepeatCount: 1024
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 636747
      Days: 0
      Hours: 0
      Milliseconds: 63
      Minutes: 0
      Seconds: 0
      TotalDays: 7.36975694444444e-07
      TotalHours: 1.76874166666667e-05
      TotalMilliseconds: 63.6747
      TotalMinutes: 0.001061245
      TotalSeconds: 0.0636747
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        GroupName: RandomLetters
        RepeatCount: 1024
    RelativeSpeed: 1.13344749447737
    GroupName: RandomLetters
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 16081.7404714902
    BenchmarkInput: 
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      RepeatCount: 1024
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1230866
      Days: 0
      Hours: 0
      Milliseconds: 123
      Minutes: 0
      Seconds: 0
      TotalDays: 1.42461342592593e-06
      TotalHours: 3.41907222222222e-05
      TotalMilliseconds: 123.0866
      TotalMinutes: 0.00205144333333333
      TotalSeconds: 0.1230866
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        GroupName: RandomLetters
        RepeatCount: 1024
    RelativeSpeed: 2.19101461606788
    GroupName: RandomLetters
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 8319.34589142929
    BenchmarkInput: 
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      RepeatCount: 1024
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 587730
      Days: 0
      Hours: 0
      Milliseconds: 58
      Minutes: 0
      Seconds: 0
      TotalDays: 6.80243055555556e-07
      TotalHours: 1.63258333333333e-05
      TotalMilliseconds: 58.773
      TotalMinutes: 0.00097955
      TotalSeconds: 0.058773
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
        GroupName: RandomNumbers
        RepeatCount: 1024
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 17422.9663280758
    BenchmarkInput: 
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      RepeatCount: 1024
  - Technique: Get-Random
    Time: 
      Ticks: 1193996
      Days: 0
      Hours: 0
      Milliseconds: 119
      Minutes: 0
      Seconds: 0
      TotalDays: 1.38193981481481e-06
      TotalHours: 3.31665555555556e-05
      TotalMilliseconds: 119.3996
      TotalMinutes: 0.00198999333333333
      TotalSeconds: 0.1193996
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: RandomNumbers
        RepeatCount: 1024
    RelativeSpeed: 2.03153829139231
    GroupName: RandomNumbers
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 8576.24313649292
    BenchmarkInput: 
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      RepeatCount: 1024
FileName: Which Random Is Faster
ClockSpeed: 2095
---


### RandomLetters


|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|Guid                       |1024       |00:00:00.056177|1x           |18227.81/s|
|[BitConverter] + [Random]  |1024       |00:00:00.063674|1.13x        |16081.74/s|
|[BitConverter] + Get-Random|1024       |00:00:00.123086|2.19x        |8319.35/s |


### RandomNumbers


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::new().Next()|1024       |00:00:00.058773|1x           |17422.97/s|
|Get-Random            |1024       |00:00:00.119399|2.03x        |8576.24/s |
