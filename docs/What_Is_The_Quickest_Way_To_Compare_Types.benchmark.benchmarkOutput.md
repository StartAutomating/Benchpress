---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 38820
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.49305555555556e-08
      TotalHours: 1.07833333333333e-06
      TotalMilliseconds: 3.882
      TotalMinutes: 6.47e-05
      TotalSeconds: 0.003882
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
        ScriptBlock: |
          
                  1 -is [int]
              
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 25759.9175682638
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 56034
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.48541666666667e-08
      TotalHours: 1.5565e-06
      TotalMilliseconds: 5.6034
      TotalMinutes: 9.339e-05
      TotalSeconds: 0.0056034
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
    RelativeSpeed: 1.44343122102009
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 17846.3075989578
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
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
    RelativeSpeed: 1.67132921174652
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 15412.8327245264
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 39554
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.57800925925926e-08
      TotalHours: 1.09872222222222e-06
      TotalMilliseconds: 3.9554
      TotalMinutes: 6.59233333333333e-05
      TotalSeconds: 0.0039554
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 25281.8931081559
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 42826
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.95671296296296e-08
      TotalHours: 1.18961111111111e-06
      TotalMilliseconds: 4.2826
      TotalMinutes: 7.13766666666667e-05
      TotalSeconds: 0.0042826
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
    RelativeSpeed: 1.08272235424989
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 23350.3012188857
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 49198
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.69421296296296e-08
      TotalHours: 1.36661111111111e-06
      TotalMilliseconds: 4.9198
      TotalMinutes: 8.19966666666667e-05
      TotalSeconds: 0.0049198
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
    RelativeSpeed: 1.24381857713506
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 20326.0295133949
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2594
---


### Multitype comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.003955|1x           |25281.89/s|
|.GetType().Name|100        |00:00:00.004282|1.08x        |23350.3/s |
|.GetType() -eq |100        |00:00:00.004919|1.24x        |20326.03/s|


### Single Type comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.003882|1x           |25759.92/s|
|.GetType().Name|100        |00:00:00.005603|1.44x        |17846.31/s|
|.GetType() -eq |100        |00:00:00.006488|1.67x        |15412.83/s|
