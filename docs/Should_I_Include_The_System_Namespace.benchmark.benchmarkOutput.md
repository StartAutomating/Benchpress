---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 51314
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.93912037037037e-08
      TotalHours: 1.42538888888889e-06
      TotalMilliseconds: 5.1314
      TotalMinutes: 8.55233333333333e-05
      TotalSeconds: 0.0051314
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [IO.Path]
              
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 19487.8590638032
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 301961
      Days: 0
      Hours: 0
      Milliseconds: 30
      Minutes: 0
      Seconds: 0
      TotalDays: 3.49491898148148e-07
      TotalHours: 8.38780555555556e-06
      TotalMilliseconds: 30.1961
      TotalMinutes: 0.000503268333333333
      TotalSeconds: 0.0301961
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [System.IO.Path]
              
    RelativeSpeed: 5.88457341076509
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 3311.68594619835
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2594
---


### 


|Technique              |Time           |RelativeSpeed|Throughput|
|-----------------------|---------------|-------------|----------|
|NoSytemNamespace       |00:00:00.005131|1x           |19487.86/s|
|SystemNamespaceIncluded|00:00:00.030196|5.88x        |3311.69/s |
