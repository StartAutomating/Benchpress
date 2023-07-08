---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 49466
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.72523148148148e-08
      TotalHours: 1.37405555555556e-06
      TotalMilliseconds: 4.9466
      TotalMinutes: 8.24433333333333e-05
      TotalSeconds: 0.0049466
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  "$pwd"
              
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 20215.9058747422
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 57902
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.70162037037037e-08
      TotalHours: 1.60838888888889e-06
      TotalMilliseconds: 5.7902
      TotalMinutes: 9.65033333333333e-05
      TotalSeconds: 0.0057902
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  $PWD.ToString()
              
    RelativeSpeed: 1.17054138195933
    ClockSpeed: 2594
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 17270.5606023972
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2594
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|Quoted   |100        |00:00:00.004946|1x           |20215.91/s|
|ToString |100        |00:00:00.005790|1.17x        |17270.56/s|
