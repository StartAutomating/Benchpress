---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 40240
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.65740740740741e-08
      TotalHours: 1.11777777777778e-06
      TotalMilliseconds: 4.024
      TotalMinutes: 6.70666666666667e-05
      TotalSeconds: 0.004024
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 24850.8946322068
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 51327
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.940625e-08
      TotalHours: 1.42575e-06
      TotalMilliseconds: 5.1327
      TotalMinutes: 8.5545e-05
      TotalSeconds: 0.0051327
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1.27552186878728
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 19482.9232177996
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2594
---




|Technique              |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------------|-----------|---------------|-------------|----------|
|NoSytemNamespace       |100        |00:00:00.004024|1x           |24850.89/s|
|SystemNamespaceIncluded|100        |00:00:00.005132|1.28x        |19482.92/s|
