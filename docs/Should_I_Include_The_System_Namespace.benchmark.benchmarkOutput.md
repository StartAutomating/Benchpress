---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 38824
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.49351851851852e-08
      TotalHours: 1.07844444444444e-06
      TotalMilliseconds: 3.8824
      TotalMinutes: 6.47066666666667e-05
      TotalSeconds: 0.0038824
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 25757.2635483206
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 46686
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.40347222222222e-08
      TotalHours: 1.29683333333333e-06
      TotalMilliseconds: 4.6686
      TotalMinutes: 7.781e-05
      TotalSeconds: 0.0046686
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1.2025036060169
    ClockSpeed: 2095
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 21419.6975538705
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2095
---




|Technique              |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------------|-----------|---------------|-------------|----------|
|NoSytemNamespace       |100        |00:00:00.003882|1x           |25757.26/s|
|SystemNamespaceIncluded|100        |00:00:00.004668|1.2x         |21419.7/s |
