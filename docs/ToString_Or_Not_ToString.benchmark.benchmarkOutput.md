---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 60783
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.03506944444444e-08
      TotalHours: 1.68841666666667e-06
      TotalMilliseconds: 6.0783
      TotalMinutes: 0.000101305
      TotalSeconds: 0.0060783
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
    Throughput: 16451.9684780284
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 65390
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.56828703703704e-08
      TotalHours: 1.81638888888889e-06
      TotalMilliseconds: 6.539
      TotalMinutes: 0.000108983333333333
      TotalSeconds: 0.006539
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1.07579421877828
    ClockSpeed: 2095
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 15292.8582352042
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2095
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|Quoted   |100        |00:00:00.006078|1x           |16451.97/s|
|ToString |100        |00:00:00.006539|1.08x        |15292.86/s|
