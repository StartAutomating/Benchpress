---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 58215
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.73784722222222e-08
      TotalHours: 1.61708333333333e-06
      TotalMilliseconds: 5.8215
      TotalMinutes: 9.7025e-05
      TotalSeconds: 0.0058215
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Should I Include The System Namespace
    Throughput: 17177.7033410633
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 69771
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 8.07534722222222e-08
      TotalHours: 1.93808333333333e-06
      TotalMilliseconds: 6.9771
      TotalMinutes: 0.000116285
      TotalSeconds: 0.0069771
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1.19850553980933
    ClockSpeed: 2295
    FileName: Should I Include The System Namespace
    Throughput: 14332.6023706124
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2295
---
Should I Include The System Namespace
-------------------------------------
> @2295 Mhz


### 


|Technique              |Time           |RelativeSpeed|Throughput|
|-----------------------|---------------|-------------|----------|
|NoSytemNamespace       |00:00:00.005821|1x           |17177.7/s |
|SystemNamespaceIncluded|00:00:00.006977|1.2x         |14332.6/s |
