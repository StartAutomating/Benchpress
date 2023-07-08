---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 52283
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.05127314814815e-08
      TotalHours: 1.45230555555556e-06
      TotalMilliseconds: 5.2283
      TotalMinutes: 8.71383333333333e-05
      TotalSeconds: 0.0052283
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "$pwd"
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: ToString Or Not ToString
    Throughput: 19126.6759749823
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 62143
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.19247685185185e-08
      TotalHours: 1.72619444444444e-06
      TotalMilliseconds: 6.2143
      TotalMinutes: 0.000103571666666667
      TotalSeconds: 0.0062143
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1.18858902511333
    ClockSpeed: 2594
    FileName: ToString Or Not ToString
    Throughput: 16091.9170300758
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2594
---


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|Quoted   |00:00:00.005228|1x           |19126.68/s|
|ToString |00:00:00.006214|1.19x        |16091.92/s|
