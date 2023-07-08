---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 55952
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.47592592592593e-08
      TotalHours: 1.55422222222222e-06
      TotalMilliseconds: 5.5952
      TotalMinutes: 9.32533333333333e-05
      TotalSeconds: 0.0055952
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  "$pwd"
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 17872.4621103803
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 63694
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.37199074074074e-08
      TotalHours: 1.76927777777778e-06
      TotalMilliseconds: 6.3694
      TotalMinutes: 0.000106156666666667
      TotalSeconds: 0.0063694
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  $PWD.ToString()
              
    RelativeSpeed: 1.13836860165856
    ClockSpeed: 2095
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 15700.0659402769
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2095
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|Quoted   |100        |00:00:00.005595|1x           |17872.46/s|
|ToString |100        |00:00:00.006369|1.14x        |15700.07/s|
