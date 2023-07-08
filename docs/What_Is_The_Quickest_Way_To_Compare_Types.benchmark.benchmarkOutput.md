---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 45719
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.29155092592593e-08
      TotalHours: 1.26997222222222e-06
      TotalMilliseconds: 4.5719
      TotalMinutes: 7.61983333333333e-05
      TotalSeconds: 0.0045719
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  1 -is [int]
              
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 21872.7443732365
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: .GetType() -eq
    Time: 
      Ticks: 61973
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.17280092592593e-08
      TotalHours: 1.72147222222222e-06
      TotalMilliseconds: 6.1973
      TotalMinutes: 0.000103288333333333
      TotalSeconds: 0.0061973
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
    RelativeSpeed: 1.35551958704259
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 16136.0592516096
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: .GetType().Name
    Time: 
      Ticks: 83620
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.67824074074074e-08
      TotalHours: 2.32277777777778e-06
      TotalMilliseconds: 8.362
      TotalMinutes: 0.000139366666666667
      TotalSeconds: 0.008362
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
    RelativeSpeed: 1.82899888449004
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 11958.8615163836
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: -is operator
    Time: 
      Ticks: 47299
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.4744212962963e-08
      TotalHours: 1.31386111111111e-06
      TotalMilliseconds: 4.7299
      TotalMinutes: 7.88316666666667e-05
      TotalSeconds: 0.0047299
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 21142.0960274002
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
  - Technique: .GetType().Name
    Time: 
      Ticks: 52076
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.02731481481481e-08
      TotalHours: 1.44655555555556e-06
      TotalMilliseconds: 5.2076
      TotalMinutes: 8.67933333333333e-05
      TotalSeconds: 0.0052076
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
    RelativeSpeed: 1.10099579272289
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 19202.7037406867
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
  - Technique: .GetType() -eq
    Time: 
      Ticks: 61814
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.15439814814815e-08
      TotalHours: 1.71705555555556e-06
      TotalMilliseconds: 6.1814
      TotalMinutes: 0.000103023333333333
      TotalSeconds: 0.0061814
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
    RelativeSpeed: 1.30687752383771
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 16177.5649529233
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2095
---


### Multitype comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.004729|1x           |21142.1/s |
|.GetType().Name|100        |00:00:00.005207|1.1x         |19202.7/s |
|.GetType() -eq |100        |00:00:00.006181|1.31x        |16177.56/s|


### Single Type comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.004571|1x           |21872.74/s|
|.GetType() -eq |100        |00:00:00.006197|1.36x        |16136.06/s|
|.GetType().Name|100        |00:00:00.008362|1.83x        |11958.86/s|
