---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 63619
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.36331018518519e-08
      TotalHours: 1.76719444444444e-06
      TotalMilliseconds: 6.3619
      TotalMinutes: 0.000106031666666667
      TotalSeconds: 0.0063619
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [int]
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 15718.5746396517
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: .GetType().Name
    Time: 
      Ticks: 93548
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08273148148148e-07
      TotalHours: 2.59855555555556e-06
      TotalMilliseconds: 9.3548
      TotalMinutes: 0.000155913333333333
      TotalSeconds: 0.0093548
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.47044122039013
    GroupName: Single Type comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 10689.6994056527
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: .GetType() -eq
    Time: 
      Ticks: 98955
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.1453125e-07
      TotalHours: 2.74875e-06
      TotalMilliseconds: 9.8955
      TotalMinutes: 0.000164925
      TotalSeconds: 0.0098955
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.55543155346673
    GroupName: Single Type comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 10105.6035571725
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: -is operator
    Time: 
      Ticks: 65086
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.53310185185185e-08
      TotalHours: 1.80794444444444e-06
      TotalMilliseconds: 6.5086
      TotalMinutes: 0.000108476666666667
      TotalSeconds: 0.0065086
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 15364.2872507144
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
  - Technique: .GetType().Name
    Time: 
      Ticks: 70195
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.1244212962963e-08
      TotalHours: 1.94986111111111e-06
      TotalMilliseconds: 7.0195
      TotalMinutes: 0.000116991666666667
      TotalSeconds: 0.0070195
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.0784961435639
    GroupName: Multitype comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 14246.0289194387
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
  - Technique: .GetType() -eq
    Time: 
      Ticks: 79534
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.20532407407407e-08
      TotalHours: 2.20927777777778e-06
      TotalMilliseconds: 7.9534
      TotalMinutes: 0.000132556666666667
      TotalSeconds: 0.0079534
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.22198322219832
    GroupName: Multitype comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 12573.2391178615
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2295
---


### Multitype comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.006508|1x           |15364.29/s|
|.GetType().Name|100        |00:00:00.007019|1.08x        |14246.03/s|
|.GetType() -eq |100        |00:00:00.007953|1.22x        |12573.24/s|


### Single Type comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.006361|1x           |15718.57/s|
|.GetType().Name|100        |00:00:00.009354|1.47x        |10689.7/s |
|.GetType() -eq |100        |00:00:00.009895|1.56x        |10105.6/s |
