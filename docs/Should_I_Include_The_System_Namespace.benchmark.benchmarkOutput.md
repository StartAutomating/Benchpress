---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 655254
      Days: 0
      Hours: 0
      Milliseconds: 65
      Minutes: 0
      Seconds: 0
      TotalDays: 7.58395833333333e-07
      TotalHours: 1.82015e-05
      TotalMilliseconds: 65.5254
      TotalMinutes: 0.00109209
      TotalSeconds: 0.0655254
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [System.IO.Path]
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Should I Include The System Namespace
    RepeatCount: 1024
    Throughput: 15627.5276457679
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Should I Include The System Namespace
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 691317
      Days: 0
      Hours: 0
      Milliseconds: 69
      Minutes: 0
      Seconds: 0
      TotalDays: 8.00135416666667e-07
      TotalHours: 1.920325e-05
      TotalMilliseconds: 69.1317
      TotalMinutes: 0.001152195
      TotalSeconds: 0.0691317
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [IO.Path]
              
    RelativeSpeed: 1.05503667280169
    ClockSpeed: 2095
    FileName: Should I Include The System Namespace
    RepeatCount: 1024
    Throughput: 14812.3075231768
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2095
---




|Technique              |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------------|-----------|---------------|-------------|----------|
|SystemNamespaceIncluded|1024       |00:00:00.065525|1x           |15627.53/s|
|NoSytemNamespace       |1024       |00:00:00.069131|1.06x        |14812.31/s|
