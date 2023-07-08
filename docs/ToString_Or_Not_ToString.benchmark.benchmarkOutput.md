---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 48789
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.646875e-08
      TotalHours: 1.35525e-06
      TotalMilliseconds: 4.8789
      TotalMinutes: 8.1315e-05
      TotalSeconds: 0.0048789
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "$pwd"
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: ToString Or Not ToString
    Throughput: 20496.4233741212
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 54327
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.28784722222222e-08
      TotalHours: 1.50908333333333e-06
      TotalMilliseconds: 5.4327
      TotalMinutes: 9.0545e-05
      TotalSeconds: 0.0054327
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1.11350919264588
    ClockSpeed: 2793
    FileName: ToString Or Not ToString
    Throughput: 18407.053582933
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2793
---
ToString Or Not ToString
------------------------
> @2793 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|Quoted   |00:00:00.004878|1x           |20496.42/s|
|ToString |00:00:00.005432|1.11x        |18407.05/s|
