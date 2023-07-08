---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 60220
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 6.96990740740741e-08
      TotalHours: 1.67277777777778e-06
      TotalMilliseconds: 6.022
      TotalMinutes: 0.000100366666666667
      TotalSeconds: 0.006022
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2397
    FileName: Should I Include The System Namespace
    Throughput: 16605.7788110262
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 317573
      Days: 0
      Hours: 0
      Milliseconds: 31
      Minutes: 0
      Seconds: 0
      TotalDays: 3.67561342592593e-07
      TotalHours: 8.82147222222222e-06
      TotalMilliseconds: 31.7573
      TotalMinutes: 0.000529288333333333
      TotalSeconds: 0.0317573
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 5.27354699435404
    ClockSpeed: 2397
    FileName: Should I Include The System Namespace
    Throughput: 3148.88230422611
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2397
---


### 


|Technique              |Time           |RelativeSpeed|Throughput|
|-----------------------|---------------|-------------|----------|
|NoSytemNamespace       |00:00:00.006022|1x           |16605.78/s|
|SystemNamespaceIncluded|00:00:00.031757|5.27x        |3148.88/s |
