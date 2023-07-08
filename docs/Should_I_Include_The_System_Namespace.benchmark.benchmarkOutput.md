---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 48585
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.62326388888889e-08
      TotalHours: 1.34958333333333e-06
      TotalMilliseconds: 4.8585
      TotalMinutes: 8.0975e-05
      TotalSeconds: 0.0048585
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Should I Include The System Namespace
    Throughput: 20582.4843058557
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 62907
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.28090277777778e-08
      TotalHours: 1.74741666666667e-06
      TotalMilliseconds: 6.2907
      TotalMinutes: 0.000104845
      TotalSeconds: 0.0062907
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1.29478234022847
    ClockSpeed: 2793
    FileName: Should I Include The System Namespace
    Throughput: 15896.4821085094
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2793
---


### 


|Technique              |Time           |RelativeSpeed|Throughput|
|-----------------------|---------------|-------------|----------|
|SystemNamespaceIncluded|00:00:00.004858|1x           |20582.48/s|
|NoSytemNamespace       |00:00:00.006290|1.29x        |15896.48/s|
