---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 37236
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.30972222222222e-08
      TotalHours: 1.03433333333333e-06
      TotalMilliseconds: 3.7236
      TotalMinutes: 6.206e-05
      TotalSeconds: 0.0037236
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  1 -is [int]
              
        GroupName: Single Type comparison
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 26855.7310129982
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: .GetType() -eq
    Time: 
      Ticks: 62857
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.27511574074074e-08
      TotalHours: 1.74602777777778e-06
      TotalMilliseconds: 6.2857
      TotalMinutes: 0.000104761666666667
      TotalSeconds: 0.0062857
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        GroupName: Single Type comparison
    RelativeSpeed: 1.68807068428403
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 15909.1270661979
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: .GetType().Name
    Time: 
      Ticks: 353459
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.09096064814815e-07
      TotalHours: 9.81830555555555e-06
      TotalMilliseconds: 35.3459
      TotalMinutes: 0.000589098333333333
      TotalSeconds: 0.0353459
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        GroupName: Single Type comparison
    RelativeSpeed: 9.49239982812332
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 2829.18245114709
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: -is operator
    Time: 
      Ticks: 38069
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.40613425925926e-08
      TotalHours: 1.05747222222222e-06
      TotalMilliseconds: 3.8069
      TotalMinutes: 6.34483333333333e-05
      TotalSeconds: 0.0038069
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        GroupName: Multitype comparison
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 26268.0921484673
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
  - Technique: .GetType().Name
    Time: 
      Ticks: 39692
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.59398148148148e-08
      TotalHours: 1.10255555555556e-06
      TotalMilliseconds: 3.9692
      TotalMinutes: 6.61533333333333e-05
      TotalSeconds: 0.0039692
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        GroupName: Multitype comparison
    RelativeSpeed: 1.04263311355696
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 25193.9937518895
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
  - Technique: .GetType() -eq
    Time: 
      Ticks: 55403
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.41238425925926e-08
      TotalHours: 1.53897222222222e-06
      TotalMilliseconds: 5.5403
      TotalMinutes: 9.23383333333333e-05
      TotalSeconds: 0.0055403
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        GroupName: Multitype comparison
    RelativeSpeed: 1.45533110930153
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 18049.5641030269
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2095
---


### Multitype comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.003806|1x           |26268.09/s|
|.GetType().Name|100        |00:00:00.003969|1.04x        |25193.99/s|
|.GetType() -eq |100        |00:00:00.005540|1.46x        |18049.56/s|


### Single Type comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.003723|1x           |26855.73/s|
|.GetType() -eq |100        |00:00:00.006285|1.69x        |15909.13/s|
|.GetType().Name|100        |00:00:00.035345|9.49x        |2829.18/s |
