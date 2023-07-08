---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: ToString
    Time: 
      Ticks: 83542
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.66921296296296e-08
      TotalHours: 2.32061111111111e-06
      TotalMilliseconds: 8.3542
      TotalMinutes: 0.000139236666666667
      TotalSeconds: 0.0083542
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: ToString Or Not ToString
    Throughput: 11970.0270522611
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: Quoted
    Time: 
      Ticks: 394645
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.56765046296296e-07
      TotalHours: 1.09623611111111e-05
      TotalMilliseconds: 39.4645
      TotalMinutes: 0.000657741666666667
      TotalSeconds: 0.0394645
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "$pwd"
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 4.7239113260396
    ClockSpeed: 2295
    FileName: ToString Or Not ToString
    Throughput: 2533.92289272637
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2295
---
ToString Or Not ToString
------------------------
> @2295 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|ToString |00:00:00.008354|1x           |11970.03/s|
|Quoted   |00:00:00.039464|4.72x        |2533.92/s |
