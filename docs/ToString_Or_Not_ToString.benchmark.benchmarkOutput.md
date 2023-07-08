---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 62568
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.24166666666667e-08
      TotalHours: 1.738e-06
      TotalMilliseconds: 6.2568
      TotalMinutes: 0.00010428
      TotalSeconds: 0.0062568
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
    Throughput: 15982.6109193198
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 67688
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.83425925925926e-08
      TotalHours: 1.88022222222222e-06
      TotalMilliseconds: 6.7688
      TotalMinutes: 0.000112813333333333
      TotalSeconds: 0.0067688
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  $PWD.ToString()
              
    RelativeSpeed: 1.08183096790692
    ClockSpeed: 2095
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 14773.6674151991
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2095
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|Quoted   |100        |00:00:00.006256|1x           |15982.61/s|
|ToString |100        |00:00:00.006768|1.08x        |14773.67/s|
