---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 38097
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.409375e-08
      TotalHours: 1.05825e-06
      TotalMilliseconds: 3.8097
      TotalMinutes: 6.3495e-05
      TotalSeconds: 0.0038097
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Should I Include The System Namespace
    Throughput: 26248.7859936478
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 274053
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.17190972222222e-07
      TotalHours: 7.61258333333333e-06
      TotalMilliseconds: 27.4053
      TotalMinutes: 0.000456755
      TotalSeconds: 0.0274053
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 7.19355854791716
    ClockSpeed: 2793
    FileName: Should I Include The System Namespace
    Throughput: 3648.92922171989
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2793
---
Should I Include The System Namespace
-------------------------------------
> @2793 Mhz


### 


|Technique              |Time           |RelativeSpeed|Throughput|
|-----------------------|---------------|-------------|----------|
|SystemNamespaceIncluded|00:00:00.003809|1x           |26248.79/s|
|NoSytemNamespace       |00:00:00.027405|7.19x        |3648.93/s |
