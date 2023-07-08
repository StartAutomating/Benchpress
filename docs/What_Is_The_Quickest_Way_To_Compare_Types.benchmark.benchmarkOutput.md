---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 45430
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.25810185185185e-08
      TotalHours: 1.26194444444444e-06
      TotalMilliseconds: 4.543
      TotalMinutes: 7.57166666666667e-05
      TotalSeconds: 0.004543
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        ScriptBlock: |
          
                  1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 22011.8864186661
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 65822
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.61828703703704e-08
      TotalHours: 1.82838888888889e-06
      TotalMilliseconds: 6.5822
      TotalMinutes: 0.000109703333333333
      TotalSeconds: 0.0065822
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.44886638784944
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 15192.4888335207
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 75966
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.79236111111111e-08
      TotalHours: 2.11016666666667e-06
      TotalMilliseconds: 7.5966
      TotalMinutes: 0.00012661
      TotalSeconds: 0.0075966
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.67215496368039
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 13163.7837980149
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 45742
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.29421296296296e-08
      TotalHours: 1.27061111111111e-06
      TotalMilliseconds: 4.5742
      TotalMinutes: 7.62366666666667e-05
      TotalSeconds: 0.0045742
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 21861.7463162957
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 52841
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.11585648148148e-08
      TotalHours: 1.46780555555556e-06
      TotalMilliseconds: 5.2841
      TotalMinutes: 8.80683333333333e-05
      TotalSeconds: 0.0052841
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.15519653709938
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 18924.6986241744
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 416692
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.82282407407407e-07
      TotalHours: 1.15747777777778e-05
      TotalMilliseconds: 41.6692
      TotalMinutes: 0.000694486666666667
      TotalSeconds: 0.0416692
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 9.10961479602991
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 2399.8540888714
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2095
---


### Multitype comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.004574|1x           |21861.75/s|
|.GetType().Name|100        |00:00:00.005284|1.16x        |18924.7/s |
|.GetType() -eq |100        |00:00:00.041669|9.11x        |2399.85/s |


### Single Type comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.004543|1x           |22011.89/s|
|.GetType().Name|100        |00:00:00.006582|1.45x        |15192.49/s|
|.GetType() -eq |100        |00:00:00.007596|1.67x        |13163.78/s|
