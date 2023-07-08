---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: Guid
    Time: 
      Ticks: 579438
      Days: 0
      Hours: 0
      Milliseconds: 57
      Minutes: 0
      Seconds: 0
      TotalDays: 6.70645833333333e-07
      TotalHours: 1.60955e-05
      TotalMilliseconds: 57.9438
      TotalMinutes: 0.00096573
      TotalSeconds: 0.0579438
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        GroupName: RandomLetters
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [guid]::NewGuid()
              
    RelativeSpeed: 1
    GroupName: RandomLetters
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 17672.296259479
    BenchmarkInput: 
      GroupName: RandomLetters
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 608265
      Days: 0
      Hours: 0
      Milliseconds: 60
      Minutes: 0
      Seconds: 0
      TotalDays: 7.04010416666667e-07
      TotalHours: 1.689625e-05
      TotalMilliseconds: 60.8265
      TotalMinutes: 0.001013775
      TotalSeconds: 0.0608265
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        GroupName: RandomLetters
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
    RelativeSpeed: 1.04974993010469
    GroupName: RandomLetters
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 16834.7677410339
    BenchmarkInput: 
      GroupName: RandomLetters
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1364607
      Days: 0
      Hours: 0
      Milliseconds: 136
      Minutes: 0
      Seconds: 0
      TotalDays: 1.57940625e-06
      TotalHours: 3.790575e-05
      TotalMilliseconds: 136.4607
      TotalMinutes: 0.002274345
      TotalSeconds: 0.1364607
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        GroupName: RandomLetters
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
    RelativeSpeed: 2.35505265446864
    GroupName: RandomLetters
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 7503.99199183355
    BenchmarkInput: 
      GroupName: RandomLetters
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 584161
      Days: 0
      Hours: 0
      Milliseconds: 58
      Minutes: 0
      Seconds: 0
      TotalDays: 6.76112268518519e-07
      TotalHours: 1.62266944444444e-05
      TotalMilliseconds: 58.4161
      TotalMinutes: 0.000973601666666667
      TotalSeconds: 0.0584161
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        GroupName: RandomNumbers
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  $([Random]::new().Next())
              
    RelativeSpeed: 1
    GroupName: RandomNumbers
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 17529.41398005
    BenchmarkInput: 
      GroupName: RandomNumbers
      RepeatCount: 1024
      FileName: Which Random Is Faster
  - Technique: Get-Random
    Time: 
      Ticks: 1284484
      Days: 0
      Hours: 0
      Milliseconds: 128
      Minutes: 0
      Seconds: 0
      TotalDays: 1.4866712962963e-06
      TotalHours: 3.56801111111111e-05
      TotalMilliseconds: 128.4484
      TotalMinutes: 0.00214080666666667
      TotalSeconds: 0.1284484
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        GroupName: RandomNumbers
        RepeatCount: 1024
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  Get-Random
              
    RelativeSpeed: 2.19885271354986
    GroupName: RandomNumbers
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 7972.07283235914
    BenchmarkInput: 
      GroupName: RandomNumbers
      RepeatCount: 1024
      FileName: Which Random Is Faster
FileName: Which Random Is Faster
ClockSpeed: 2095
---


### RandomLetters


|Technique                  |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------|-----------|---------------|-------------|----------|
|Guid                       |1024       |00:00:00.057943|1x           |17672.3/s |
|[BitConverter] + [Random]  |1024       |00:00:00.060826|1.05x        |16834.77/s|
|[BitConverter] + Get-Random|1024       |00:00:00.136460|2.36x        |7503.99/s |


### RandomNumbers


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::new().Next()|1024       |00:00:00.058416|1x           |17529.41/s|
|Get-Random            |1024       |00:00:00.128448|2.2x         |7972.07/s |
