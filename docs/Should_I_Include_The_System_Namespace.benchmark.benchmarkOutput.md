---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 53028
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.1375e-08
      TotalHours: 1.473e-06
      TotalMilliseconds: 5.3028
      TotalMinutes: 8.838e-05
      TotalSeconds: 0.0053028
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [IO.Path]
              
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 18857.9618314853
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 63396
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.3375e-08
      TotalHours: 1.761e-06
      TotalMilliseconds: 6.3396
      TotalMinutes: 0.00010566
      TotalSeconds: 0.0063396
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [System.IO.Path]
              
    RelativeSpeed: 1.19551934826884
    ClockSpeed: 2295
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 15773.8658590447
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2295
---




|Technique              |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------------|-----------|---------------|-------------|----------|
|NoSytemNamespace       |100        |00:00:00.005302|1x           |18857.96/s|
|SystemNamespaceIncluded|100        |00:00:00.006339|1.2x         |15773.87/s|
