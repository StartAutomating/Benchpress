---
layout: Benchmark

Data: 
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 59651
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.90405092592593e-08
      TotalHours: 1.65697222222222e-06
      TotalMilliseconds: 5.9651
      TotalMinutes: 9.94183333333333e-05
      TotalSeconds: 0.0059651
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2394
    FileName: Should I Include The System Namespace
    Throughput: 16764.1783038004
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 69143
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 8.00266203703704e-08
      TotalHours: 1.92063888888889e-06
      TotalMilliseconds: 6.9143
      TotalMinutes: 0.000115238333333333
      TotalSeconds: 0.0069143
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1.15912558045967
    ClockSpeed: 2394
    FileName: Should I Include The System Namespace
    Throughput: 14462.7800355784
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2394
---
Should I Include The System Namespace
-------------------------------------
> @2394 Mhz


### 


|Technique              |Time           |RelativeSpeed|Throughput|
|-----------------------|---------------|-------------|----------|
|SystemNamespaceIncluded|00:00:00.005965|1x           |16764.18/s|
|NoSytemNamespace       |00:00:00.006914|1.16x        |14462.78/s|
