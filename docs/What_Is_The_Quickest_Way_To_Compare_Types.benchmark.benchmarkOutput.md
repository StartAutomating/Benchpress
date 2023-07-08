---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 57735
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.68229166666667e-08
      TotalHours: 1.60375e-06
      TotalMilliseconds: 5.7735
      TotalMinutes: 9.6225e-05
      TotalSeconds: 0.0057735
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
        ScriptBlock: |
          
                  1 -is [int]
              
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 17320.5161513813
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: .GetType() -eq
    Time: 
      Ticks: 88824
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02805555555556e-07
      TotalHours: 2.46733333333333e-06
      TotalMilliseconds: 8.8824
      TotalMinutes: 0.00014804
      TotalSeconds: 0.0088824
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
    RelativeSpeed: 1.53847752663029
    GroupName: Single Type comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 11258.2184995046
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: .GetType().Name
    Time: 
      Ticks: 89091
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.03114583333333e-07
      TotalHours: 2.47475e-06
      TotalMilliseconds: 8.9091
      TotalMinutes: 0.000148485
      TotalSeconds: 0.0089091
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
    RelativeSpeed: 1.54310210444271
    GroupName: Single Type comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 11224.478342369
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: -is operator
    Time: 
      Ticks: 56949
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.59131944444444e-08
      TotalHours: 1.58191666666667e-06
      TotalMilliseconds: 5.6949
      TotalMinutes: 9.4915e-05
      TotalSeconds: 0.0056949
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 17559.5708440886
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
  - Technique: .GetType() -eq
    Time: 
      Ticks: 75144
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.69722222222222e-08
      TotalHours: 2.08733333333333e-06
      TotalMilliseconds: 7.5144
      TotalMinutes: 0.00012524
      TotalSeconds: 0.0075144
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
    RelativeSpeed: 1.31949639150819
    GroupName: Multitype comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 13307.7823911423
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
  - Technique: .GetType().Name
    Time: 
      Ticks: 88032
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01888888888889e-07
      TotalHours: 2.44533333333333e-06
      TotalMilliseconds: 8.8032
      TotalMinutes: 0.00014672
      TotalSeconds: 0.0088032
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
    RelativeSpeed: 1.54580414054681
    GroupName: Multitype comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 11359.5056343148
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2295
---


### Multitype comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.005694|1x           |17559.57/s|
|.GetType() -eq |100        |00:00:00.007514|1.32x        |13307.78/s|
|.GetType().Name|100        |00:00:00.008803|1.55x        |11359.51/s|


### Single Type comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.005773|1x           |17320.52/s|
|.GetType() -eq |100        |00:00:00.008882|1.54x        |11258.22/s|
|.GetType().Name|100        |00:00:00.008909|1.54x        |11224.48/s|
