---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: .GetType().Name
    Time: 
      Ticks: 53168
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.1537037037037e-08
      TotalHours: 1.47688888888889e-06
      TotalMilliseconds: 5.3168
      TotalMinutes: 8.86133333333333e-05
      TotalSeconds: 0.0053168
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 18808.3057478182
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 61871
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.16099537037037e-08
      TotalHours: 1.71863888888889e-06
      TotalMilliseconds: 6.1871
      TotalMinutes: 0.000103118333333333
      TotalSeconds: 0.0061871
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.16368868492326
    GroupName: Single Type comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 16162.6610205104
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 150433
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.74112268518519e-07
      TotalHours: 4.17869444444444e-06
      TotalMilliseconds: 15.0433
      TotalMinutes: 0.000250721666666667
      TotalSeconds: 0.0150433
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [int]
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 2.82938985856154
    GroupName: Single Type comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 6647.47761461913
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 36025
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.16956018518519e-08
      TotalHours: 1.00069444444444e-06
      TotalMilliseconds: 3.6025
      TotalMinutes: 6.00416666666667e-05
      TotalSeconds: 0.0036025
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 27758.5010409438
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 40006
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.63032407407407e-08
      TotalHours: 1.11127777777778e-06
      TotalMilliseconds: 4.0006
      TotalMinutes: 6.66766666666667e-05
      TotalSeconds: 0.0040006
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.110506592644
    GroupName: Multitype comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 24996.2505624156
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 47128
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.45462962962963e-08
      TotalHours: 1.30911111111111e-06
      TotalMilliseconds: 4.7128
      TotalMinutes: 7.85466666666667e-05
      TotalSeconds: 0.0047128
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.3082026370576
    GroupName: Multitype comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 21218.808351723
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2793
---


### Multitype comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.003602|1x           |27758.5/s |
|.GetType().Name|00:00:00.004000|1.11x        |24996.25/s|
|.GetType() -eq |00:00:00.004712|1.31x        |21218.81/s|


### Single Type comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|.GetType().Name|00:00:00.005316|1x           |18808.31/s|
|.GetType() -eq |00:00:00.006187|1.16x        |16162.66/s|
|-is operator   |00:00:00.015043|2.83x        |6647.48/s |
