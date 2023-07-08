---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 80377
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.30289351851852e-08
      TotalHours: 2.23269444444444e-06
      TotalMilliseconds: 8.0377
      TotalMinutes: 0.000133961666666667
      TotalSeconds: 0.0080377
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "$pwd"
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 12441.3700436692
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 84416
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.77037037037037e-08
      TotalHours: 2.34488888888889e-06
      TotalMilliseconds: 8.4416
      TotalMinutes: 0.000140693333333333
      TotalSeconds: 0.0084416
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1.05025069360638
    ClockSpeed: 2295
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 11846.0955269143
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2295
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|Quoted   |100        |00:00:00.008037|1x           |12441.37/s|
|ToString |100        |00:00:00.008441|1.05x        |11846.1/s |
