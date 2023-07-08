---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 50009
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.7880787037037e-08
      TotalHours: 1.38913888888889e-06
      TotalMilliseconds: 5.0009
      TotalMinutes: 8.33483333333333e-05
      TotalSeconds: 0.0050009
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "$pwd"
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 19996.4006478834
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 57144
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.61388888888889e-08
      TotalHours: 1.58733333333333e-06
      TotalMilliseconds: 5.7144
      TotalMinutes: 9.524e-05
      TotalSeconds: 0.0057144
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1.14267431862265
    ClockSpeed: 2594
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 17499.6500069999
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2594
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|Quoted   |100        |00:00:00.005000|1x           |19996.4/s |
|ToString |100        |00:00:00.005714|1.14x        |17499.65/s|
