---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 67749
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.84131944444444e-08
      TotalHours: 1.88191666666667e-06
      TotalMilliseconds: 6.7749
      TotalMinutes: 0.000112915
      TotalSeconds: 0.0067749
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  "$pwd"
              
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 14760.365466649
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 77725
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.99594907407407e-08
      TotalHours: 2.15902777777778e-06
      TotalMilliseconds: 7.7725
      TotalMinutes: 0.000129541666666667
      TotalSeconds: 0.0077725
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  $PWD.ToString()
              
    RelativeSpeed: 1.14724940589529
    ClockSpeed: 2295
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 12865.8732711483
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2295
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|Quoted   |100        |00:00:00.006774|1x           |14760.37/s|
|ToString |100        |00:00:00.007772|1.15x        |12865.87/s|
