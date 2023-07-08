---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 39793
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.6056712962963e-08
      TotalHours: 1.10536111111111e-06
      TotalMilliseconds: 3.9793
      TotalMinutes: 6.63216666666667e-05
      TotalSeconds: 0.0039793
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        ScriptBlock: |
          
                  1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 25130.0479983917
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 72942
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.44236111111111e-08
      TotalHours: 2.02616666666667e-06
      TotalMilliseconds: 7.2942
      TotalMinutes: 0.00012157
      TotalSeconds: 0.0072942
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.83303596109869
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 13709.5226344219
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 357017
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.1321412037037e-07
      TotalHours: 9.91713888888889e-06
      TotalMilliseconds: 35.7017
      TotalMinutes: 0.000595028333333333
      TotalSeconds: 0.0357017
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 8.9718543462418
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 2800.98706784271
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 39298
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.54837962962963e-08
      TotalHours: 1.09161111111111e-06
      TotalMilliseconds: 3.9298
      TotalMinutes: 6.54966666666667e-05
      TotalSeconds: 0.0039298
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 25446.5876126011
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 43907
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.0818287037037e-08
      TotalHours: 1.21963888888889e-06
      TotalMilliseconds: 4.3907
      TotalMinutes: 7.31783333333333e-05
      TotalSeconds: 0.0043907
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.11728332230648
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 22775.4116655659
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 50637
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.86076388888889e-08
      TotalHours: 1.40658333333333e-06
      TotalMilliseconds: 5.0637
      TotalMinutes: 8.4395e-05
      TotalSeconds: 0.0050637
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.28853885693928
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 19748.4053162707
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2594
---


### Multitype comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.003929|1x           |25446.59/s|
|.GetType().Name|00:00:00.004390|1.12x        |22775.41/s|
|.GetType() -eq |00:00:00.005063|1.29x        |19748.41/s|


### Single Type comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.003979|1x           |25130.05/s|
|.GetType().Name|00:00:00.007294|1.83x        |13709.52/s|
|.GetType() -eq |00:00:00.035701|8.97x        |2800.99/s |
