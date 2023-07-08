---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 38102
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.4099537037037e-08
      TotalHours: 1.05838888888889e-06
      TotalMilliseconds: 3.8102
      TotalMinutes: 6.35033333333333e-05
      TotalSeconds: 0.0038102
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [int]
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 26245.3414518923
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 55577
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.43252314814815e-08
      TotalHours: 1.54380555555556e-06
      TotalMilliseconds: 5.5577
      TotalMinutes: 9.26283333333333e-05
      TotalSeconds: 0.0055577
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.45863734187182
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 17993.0546808932
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 64881
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.509375e-08
      TotalHours: 1.80225e-06
      TotalMilliseconds: 6.4881
      TotalMinutes: 0.000108135
      TotalSeconds: 0.0064881
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.70282399874022
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 15412.8327245264
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 43115
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.99016203703704e-08
      TotalHours: 1.19763888888889e-06
      TotalMilliseconds: 4.3115
      TotalMinutes: 7.18583333333333e-05
      TotalSeconds: 0.0043115
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 23193.7840658703
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 48820
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.65046296296296e-08
      TotalHours: 1.35611111111111e-06
      TotalMilliseconds: 4.882
      TotalMinutes: 8.13666666666667e-05
      TotalSeconds: 0.004882
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.13232053809579
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 20483.4084391643
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 340733
      Days: 0
      Hours: 0
      Milliseconds: 34
      Minutes: 0
      Seconds: 0
      TotalDays: 3.94366898148148e-07
      TotalHours: 9.46480555555556e-06
      TotalMilliseconds: 34.0733
      TotalMinutes: 0.000567888333333333
      TotalSeconds: 0.0340733
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 7.9028876261162
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 2934.84928081518
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2594
---


### Multitype comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|.GetType().Name|100        |00:00:00.004311|1x           |23193.78/s|
|.GetType() -eq |100        |00:00:00.004882|1.13x        |20483.41/s|
|-is operator   |100        |00:00:00.034073|7.9x         |2934.85/s |


### Single Type comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.003810|1x           |26245.34/s|
|.GetType().Name|100        |00:00:00.005557|1.46x        |17993.05/s|
|.GetType() -eq |100        |00:00:00.006488|1.7x         |15412.83/s|
