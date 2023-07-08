---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: .GetType().Name
    Time: 
      Ticks: 90792
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05083333333333e-07
      TotalHours: 2.522e-06
      TotalMilliseconds: 9.0792
      TotalMinutes: 0.00015132
      TotalSeconds: 0.0090792
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2397
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 11014.1862719182
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 95839
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.10924768518519e-07
      TotalHours: 2.66219444444444e-06
      TotalMilliseconds: 9.5839
      TotalMinutes: 0.000159731666666667
      TotalSeconds: 0.0095839
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
    RelativeSpeed: 1.05558859811437
    GroupName: Single Type comparison
    ClockSpeed: 2397
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 10434.1656319452
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 206215
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.38674768518519e-07
      TotalHours: 5.72819444444444e-06
      TotalMilliseconds: 20.6215
      TotalMinutes: 0.000343691666666667
      TotalSeconds: 0.0206215
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
    RelativeSpeed: 2.27129042206362
    GroupName: Single Type comparison
    ClockSpeed: 2397
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 4849.30776131707
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 59997
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.94409722222222e-08
      TotalHours: 1.66658333333333e-06
      TotalMilliseconds: 5.9997
      TotalMinutes: 9.9995e-05
      TotalSeconds: 0.0059997
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2397
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 16667.5000416688
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 68971
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.98275462962963e-08
      TotalHours: 1.91586111111111e-06
      TotalMilliseconds: 6.8971
      TotalMinutes: 0.000114951666666667
      TotalSeconds: 0.0068971
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
    RelativeSpeed: 1.14957414537394
    GroupName: Multitype comparison
    ClockSpeed: 2397
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 14498.8473416363
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 76551
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.86006944444444e-08
      TotalHours: 2.12641666666667e-06
      TotalMilliseconds: 7.6551
      TotalMinutes: 0.000127585
      TotalSeconds: 0.0076551
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
    RelativeSpeed: 1.27591379568978
    GroupName: Multitype comparison
    ClockSpeed: 2397
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 13063.1866337474
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2397
---


### Multitype comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.005999|1x           |16667.5/s |
|.GetType().Name|00:00:00.006897|1.15x        |14498.85/s|
|.GetType() -eq |00:00:00.007655|1.28x        |13063.19/s|


### Single Type comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|.GetType().Name|00:00:00.009079|1x           |11014.19/s|
|.GetType() -eq |00:00:00.009583|1.06x        |10434.17/s|
|-is operator   |00:00:00.020621|2.27x        |4849.31/s |
