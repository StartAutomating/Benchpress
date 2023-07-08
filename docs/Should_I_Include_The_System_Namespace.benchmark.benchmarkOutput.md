---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 879403
      Days: 0
      Hours: 0
      Milliseconds: 87
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0178275462963e-06
      TotalHours: 2.44278611111111e-05
      TotalMilliseconds: 87.9403
      TotalMinutes: 0.00146567166666667
      TotalSeconds: 0.0879403
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.IO.Path]
              
        RepeatCount: 1024
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Should I Include The System Namespace
    RepeatCount: 1024
    Throughput: 11644.2632103825
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
      RepeatCount: 1024
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 881792
      Days: 0
      Hours: 0
      Milliseconds: 88
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02059259259259e-06
      TotalHours: 2.44942222222222e-05
      TotalMilliseconds: 88.1792
      TotalMinutes: 0.00146965333333333
      TotalSeconds: 0.0881792
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.Path]
              
        RepeatCount: 1024
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1.00271661570406
    ClockSpeed: 2295
    FileName: Should I Include The System Namespace
    RepeatCount: 1024
    Throughput: 11612.7159239367
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
      RepeatCount: 1024
FileName: Should I Include The System Namespace
ClockSpeed: 2295
---




|Technique              |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------------|-----------|---------------|-------------|----------|
|SystemNamespaceIncluded|1024       |00:00:00.087940|1x           |11644.26/s|
|NoSytemNamespace       |1024       |00:00:00.088179|1x           |11612.72/s|
