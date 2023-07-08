---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: ToString
    Time: 
      Ticks: 63720
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.375e-08
      TotalHours: 1.77e-06
      TotalMilliseconds: 6.372
      TotalMinutes: 0.0001062
      TotalSeconds: 0.006372
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: ToString Or Not ToString
    Throughput: 15693.6597614564
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: Quoted
    Time: 
      Ticks: 284399
      Days: 0
      Hours: 0
      Milliseconds: 28
      Minutes: 0
      Seconds: 0
      TotalDays: 3.29165509259259e-07
      TotalHours: 7.89997222222222e-06
      TotalMilliseconds: 28.4399
      TotalMinutes: 0.000473998333333333
      TotalSeconds: 0.0284399
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "$pwd"
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 4.46326114249843
    ClockSpeed: 2793
    FileName: ToString Or Not ToString
    Throughput: 3516.18676577625
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2793
---


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|ToString |00:00:00.006372|1x           |15693.66/s|
|Quoted   |00:00:00.028439|4.46x        |3516.19/s |
