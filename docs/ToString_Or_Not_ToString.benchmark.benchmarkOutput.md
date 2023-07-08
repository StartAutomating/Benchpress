---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 49367
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.71377314814815e-08
      TotalHours: 1.37130555555556e-06
      TotalMilliseconds: 4.9367
      TotalMinutes: 8.22783333333333e-05
      TotalSeconds: 0.0049367
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
    Throughput: 20256.446614135
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 56673
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.559375e-08
      TotalHours: 1.57425e-06
      TotalMilliseconds: 5.6673
      TotalMinutes: 9.4455e-05
      TotalSeconds: 0.0056673
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  $PWD.ToString()
              
    RelativeSpeed: 1.14799359896287
    ClockSpeed: 2594
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 17645.0867256013
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2594
---


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|Quoted   |00:00:00.004936|1x           |20256.45/s|
|ToString |00:00:00.005667|1.15x        |17645.09/s|
