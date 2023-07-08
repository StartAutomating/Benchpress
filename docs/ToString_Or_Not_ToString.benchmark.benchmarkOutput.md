---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 46987
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.43831018518519e-08
      TotalHours: 1.30519444444444e-06
      TotalMilliseconds: 4.6987
      TotalMinutes: 7.83116666666667e-05
      TotalSeconds: 0.0046987
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  "$pwd"
              
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 21282.4823887458
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 52658
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.09467592592593e-08
      TotalHours: 1.46272222222222e-06
      TotalMilliseconds: 5.2658
      TotalMinutes: 8.77633333333333e-05
      TotalSeconds: 0.0052658
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  $PWD.ToString()
              
    RelativeSpeed: 1.12069295762658
    ClockSpeed: 2793
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 18990.4667856736
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2793
---


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|Quoted   |00:00:00.004698|1x           |21282.48/s|
|ToString |00:00:00.005265|1.12x        |18990.47/s|
