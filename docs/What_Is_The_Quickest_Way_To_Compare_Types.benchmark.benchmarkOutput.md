---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 54342
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.28958333333333e-08
      TotalHours: 1.5095e-06
      TotalMilliseconds: 5.4342
      TotalMinutes: 9.057e-05
      TotalSeconds: 0.0054342
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 18401.9726914725
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: .GetType() -eq
    Time: 
      Ticks: 69380
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 8.03009259259259e-08
      TotalHours: 1.92722222222222e-06
      TotalMilliseconds: 6.938
      TotalMinutes: 0.000115633333333333
      TotalSeconds: 0.006938
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
    RelativeSpeed: 1.27672886533436
    GroupName: Single Type comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 14413.3756125685
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: .GetType().Name
    Time: 
      Ticks: 98535
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.14045138888889e-07
      TotalHours: 2.73708333333333e-06
      TotalMilliseconds: 9.8535
      TotalMinutes: 0.000164225
      TotalSeconds: 0.0098535
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
    RelativeSpeed: 1.81323837915425
    GroupName: Single Type comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 10148.678134673
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: -is operator
    Time: 
      Ticks: 55959
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.47673611111111e-08
      TotalHours: 1.55441666666667e-06
      TotalMilliseconds: 5.5959
      TotalMinutes: 9.3265e-05
      TotalSeconds: 0.0055959
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 17870.2264157687
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
  - Technique: .GetType() -eq
    Time: 
      Ticks: 63387
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.33645833333333e-08
      TotalHours: 1.76075e-06
      TotalMilliseconds: 6.3387
      TotalMinutes: 0.000105645
      TotalSeconds: 0.0063387
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
    RelativeSpeed: 1.13274004181633
    GroupName: Multitype comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 15776.1055105937
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
  - Technique: .GetType().Name
    Time: 
      Ticks: 412894
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.77886574074074e-07
      TotalHours: 1.14692777777778e-05
      TotalMilliseconds: 41.2894
      TotalMinutes: 0.000688156666666667
      TotalSeconds: 0.0412894
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
    RelativeSpeed: 7.3785092657124
    GroupName: Multitype comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 2421.92911497866
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2295
---


### Multitype comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.005595|1x           |17870.23/s|
|.GetType() -eq |100        |00:00:00.006338|1.13x        |15776.11/s|
|.GetType().Name|100        |00:00:00.041289|7.38x        |2421.93/s |


### Single Type comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.005434|1x           |18401.97/s|
|.GetType() -eq |100        |00:00:00.006938|1.28x        |14413.38/s|
|.GetType().Name|100        |00:00:00.009853|1.81x        |10148.68/s|
