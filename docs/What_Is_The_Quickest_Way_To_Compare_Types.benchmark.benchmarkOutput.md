---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 45909
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.31354166666667e-08
      TotalHours: 1.27525e-06
      TotalMilliseconds: 4.5909
      TotalMinutes: 7.6515e-05
      TotalSeconds: 0.0045909
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
    Throughput: 21782.2213509334
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 57243
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.62534722222222e-08
      TotalHours: 1.59008333333333e-06
      TotalMilliseconds: 5.7243
      TotalMinutes: 9.5405e-05
      TotalSeconds: 0.0057243
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        GroupName: Single Type comparison
    RelativeSpeed: 1.24687969679148
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 17469.3849029576
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 83406
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.65347222222222e-08
      TotalHours: 2.31683333333333e-06
      TotalMilliseconds: 8.3406
      TotalMinutes: 0.00013901
      TotalSeconds: 0.0083406
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        GroupName: Single Type comparison
    RelativeSpeed: 1.81676795399595
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 11989.5451166583
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 51487
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.95914351851852e-08
      TotalHours: 1.43019444444444e-06
      TotalMilliseconds: 5.1487
      TotalMinutes: 8.58116666666667e-05
      TotalSeconds: 0.0051487
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        GroupName: Multitype comparison
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 19422.3784644668
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 57704
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.6787037037037e-08
      TotalHours: 1.60288888888889e-06
      TotalMilliseconds: 5.7704
      TotalMinutes: 9.61733333333333e-05
      TotalSeconds: 0.0057704
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        GroupName: Multitype comparison
    RelativeSpeed: 1.12074892691359
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 17329.8211562457
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 386123
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 0
      TotalDays: 4.4690162037037e-07
      TotalHours: 1.07256388888889e-05
      TotalMilliseconds: 38.6123
      TotalMinutes: 0.000643538333333333
      TotalSeconds: 0.0386123
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        GroupName: Multitype comparison
    RelativeSpeed: 7.4994270398353
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 2589.84831258433
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2095
---


### Multitype comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|.GetType().Name|100        |00:00:00.005148|1x           |19422.38/s|
|.GetType() -eq |100        |00:00:00.005770|1.12x        |17329.82/s|
|-is operator   |100        |00:00:00.038612|7.5x         |2589.85/s |


### Single Type comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.004590|1x           |21782.22/s|
|.GetType() -eq |100        |00:00:00.005724|1.25x        |17469.38/s|
|.GetType().Name|100        |00:00:00.008340|1.82x        |11989.55/s|
