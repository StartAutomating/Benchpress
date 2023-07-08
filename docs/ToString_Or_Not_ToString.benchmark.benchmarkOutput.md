---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 54081
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.259375e-08
      TotalHours: 1.50225e-06
      TotalMilliseconds: 5.4081
      TotalMinutes: 9.0135e-05
      TotalSeconds: 0.0054081
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "$pwd"
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 18490.782345001
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 293911
      Days: 0
      Hours: 0
      Milliseconds: 29
      Minutes: 0
      Seconds: 0
      TotalDays: 3.40174768518519e-07
      TotalHours: 8.16419444444444e-06
      TotalMilliseconds: 29.3911
      TotalMinutes: 0.000489851666666667
      TotalSeconds: 0.0293911
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 5.43464432980159
    ClockSpeed: 2095
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 3402.39051957906
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2095
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|Quoted   |100        |00:00:00.005408|1x           |18490.78/s|
|ToString |100        |00:00:00.029391|5.43x        |3402.39/s |
