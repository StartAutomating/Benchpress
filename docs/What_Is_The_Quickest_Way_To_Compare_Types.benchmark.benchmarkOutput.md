---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: .GetType().Name
    Time: 
      Ticks: 54554
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.31412037037037e-08
      TotalHours: 1.51538888888889e-06
      TotalMilliseconds: 5.4554
      TotalMinutes: 9.09233333333333e-05
      TotalSeconds: 0.0054554
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
    Throughput: 18330.4615610221
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 61837
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.15706018518519e-08
      TotalHours: 1.71769444444444e-06
      TotalMilliseconds: 6.1837
      TotalMinutes: 0.000103061666666667
      TotalSeconds: 0.0061837
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.13350075154892
    GroupName: Single Type comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 16171.5477788379
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 327042
      Days: 0
      Hours: 0
      Milliseconds: 32
      Minutes: 0
      Seconds: 0
      TotalDays: 3.78520833333333e-07
      TotalHours: 9.0845e-06
      TotalMilliseconds: 32.7042
      TotalMinutes: 0.00054507
      TotalSeconds: 0.0327042
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [int]
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 5.99483080983979
    GroupName: Single Type comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 3057.71124198115
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 37561
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.34733796296296e-08
      TotalHours: 1.04336111111111e-06
      TotalMilliseconds: 3.7561
      TotalMinutes: 6.26016666666667e-05
      TotalSeconds: 0.0037561
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
    Throughput: 26623.3593354809
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 41655
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.82118055555556e-08
      TotalHours: 1.15708333333333e-06
      TotalMilliseconds: 4.1655
      TotalMinutes: 6.9425e-05
      TotalSeconds: 0.0041655
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.10899603311946
    GroupName: Multitype comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 24006.721882127
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 47426
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.48912037037037e-08
      TotalHours: 1.31738888888889e-06
      TotalMilliseconds: 4.7426
      TotalMinutes: 7.90433333333333e-05
      TotalSeconds: 0.0047426
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.26263943984452
    GroupName: Multitype comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 21085.4805381015
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2793
---
What Is The Quickest Way To Compare Types
-----------------------------------------
> @2793 Mhz


### Multitype comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.003756|1x           |26623.36/s|
|.GetType().Name|00:00:00.004165|1.11x        |24006.72/s|
|.GetType() -eq |00:00:00.004742|1.26x        |21085.48/s|


### Single Type comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|.GetType().Name|00:00:00.005455|1x           |18330.46/s|
|.GetType() -eq |00:00:00.006183|1.13x        |16171.55/s|
|-is operator   |00:00:00.032704|5.99x        |3057.71/s |
