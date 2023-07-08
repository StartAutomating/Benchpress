---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 43057
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.98344907407407e-08
      TotalHours: 1.19602777777778e-06
      TotalMilliseconds: 4.3057
      TotalMinutes: 7.17616666666667e-05
      TotalSeconds: 0.0043057
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
        ScriptBlock: |
          
                  1 -is [int]
              
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 23225.0272894071
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 60940
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.05324074074074e-08
      TotalHours: 1.69277777777778e-06
      TotalMilliseconds: 6.094
      TotalMinutes: 0.000101566666666667
      TotalSeconds: 0.006094
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
    RelativeSpeed: 1.41533316301647
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 16409.5831965868
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 404840
      Days: 0
      Hours: 0
      Milliseconds: 40
      Minutes: 0
      Seconds: 0
      TotalDays: 4.68564814814815e-07
      TotalHours: 1.12455555555556e-05
      TotalMilliseconds: 40.484
      TotalMinutes: 0.000674733333333333
      TotalSeconds: 0.040484
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
    RelativeSpeed: 9.40242004784356
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 2470.11164904654
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 41876
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.84675925925926e-08
      TotalHours: 1.16322222222222e-06
      TotalMilliseconds: 4.1876
      TotalMinutes: 6.97933333333333e-05
      TotalSeconds: 0.0041876
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 23880.02674563
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 45393
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.25381944444444e-08
      TotalHours: 1.26091666666667e-06
      TotalMilliseconds: 4.5393
      TotalMinutes: 7.5655e-05
      TotalSeconds: 0.0045393
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
    RelativeSpeed: 1.08398605406438
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 22029.8283876369
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 53122
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.14837962962963e-08
      TotalHours: 1.47561111111111e-06
      TotalMilliseconds: 5.3122
      TotalMinutes: 8.85366666666667e-05
      TotalSeconds: 0.0053122
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
    RelativeSpeed: 1.26855478078135
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 18824.5924475735
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2095
---


### Multitype comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.004187|1x           |23880.03/s|
|.GetType().Name|100        |00:00:00.004539|1.08x        |22029.83/s|
|.GetType() -eq |100        |00:00:00.005312|1.27x        |18824.59/s|


### Single Type comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.004305|1x           |23225.03/s|
|.GetType().Name|100        |00:00:00.006094|1.42x        |16409.58/s|
|.GetType() -eq |100        |00:00:00.040484|9.4x         |2470.11/s |
