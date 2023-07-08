---
layout: Benchmark
title: Which Random Is Faster

Data: 
  - Technique: Guid
    Time: 
      Ticks: 752397
      Days: 0
      Hours: 0
      Milliseconds: 75
      Minutes: 0
      Seconds: 0
      TotalDays: 8.70829861111111e-07
      TotalHours: 2.08999166666667e-05
      TotalMilliseconds: 75.2397
      TotalMinutes: 0.001253995
      TotalSeconds: 0.0752397
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
    Throughput: 13609.8362965296
    BenchmarkInput: 
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      RepeatCount: 1024
  - Technique: [BitConverter] + [Random]
    Time: 
      Ticks: 787617
      Days: 0
      Hours: 0
      Milliseconds: 78
      Minutes: 0
      Seconds: 0
      TotalDays: 9.1159375e-07
      TotalHours: 2.187825e-05
      TotalMilliseconds: 78.7617
      TotalMinutes: 0.001312695
      TotalSeconds: 0.0787617
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes($([Random]::new().next())))
              
        GroupName: RandomLetters
        RepeatCount: 1024
    RelativeSpeed: 1.04681039398084
    GroupName: RandomLetters
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 13001.2429899304
    BenchmarkInput: 
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      RepeatCount: 1024
  - Technique: [BitConverter] + Get-Random
    Time: 
      Ticks: 1448384
      Days: 0
      Hours: 0
      Milliseconds: 144
      Minutes: 0
      Seconds: 0
      TotalDays: 1.67637037037037e-06
      TotalHours: 4.02328888888889e-05
      TotalMilliseconds: 144.8384
      TotalMinutes: 0.00241397333333333
      TotalSeconds: 0.1448384
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      BenchmarkInput: 
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  [BitConverter]::ToString([BitConverter]::GetBytes((Get-Random)))
              
        GroupName: RandomLetters
        RepeatCount: 1024
    RelativeSpeed: 1.92502628266726
    GroupName: RandomLetters
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 7069.94830100305
    BenchmarkInput: 
      FileName: Which Random Is Faster
      GroupName: RandomLetters
      RepeatCount: 1024
  - Technique: [Random]::new().Next()
    Time: 
      Ticks: 667497
      Days: 0
      Hours: 0
      Milliseconds: 66
      Minutes: 0
      Seconds: 0
      TotalDays: 7.72565972222222e-07
      TotalHours: 1.85415833333333e-05
      TotalMilliseconds: 66.7497
      TotalMinutes: 0.001112495
      TotalSeconds: 0.0667497
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
    Throughput: 15340.8929178708
    BenchmarkInput: 
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      RepeatCount: 1024
  - Technique: Get-Random
    Time: 
      Ticks: 1360783
      Days: 0
      Hours: 0
      Milliseconds: 136
      Minutes: 0
      Seconds: 0
      TotalDays: 1.57498032407407e-06
      TotalHours: 3.77995277777778e-05
      TotalMilliseconds: 136.0783
      TotalMinutes: 0.00226797166666667
      TotalSeconds: 0.1360783
      FileName: Which Random Is Faster
      GroupName: RandomNumbers
      BenchmarkInput: 
        FileName: Which Random Is Faster
        ScriptBlock: |
          
                  Get-Random
              
        GroupName: RandomNumbers
        RepeatCount: 1024
    RelativeSpeed: 2.03863537963467
    GroupName: RandomNumbers
    ClockSpeed: 2095
    FileName: Which Random Is Faster
    RepeatCount: 1024
    Throughput: 7525.07931095553
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
|Guid                       |1024       |00:00:00.075239|1x           |13609.84/s|
|[BitConverter] + [Random]  |1024       |00:00:00.078761|1.05x        |13001.24/s|
|[BitConverter] + Get-Random|1024       |00:00:00.144838|1.93x        |7069.95/s |


### RandomNumbers


|Technique             |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------------------|-----------|---------------|-------------|----------|
|[Random]::new().Next()|1024       |00:00:00.066749|1x           |15340.89/s|
|Get-Random            |1024       |00:00:00.136078|2.04x        |7525.08/s |
