---
layout: Benchmark

Data: 
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 39812
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.60787037037037e-08
      TotalHours: 1.10588888888889e-06
      TotalMilliseconds: 3.9812
      TotalMinutes: 6.63533333333333e-05
      TotalSeconds: 0.0039812
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    Throughput: 25118.0548578318
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 50284
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.81990740740741e-08
      TotalHours: 1.39677777777778e-06
      TotalMilliseconds: 5.0284
      TotalMinutes: 8.38066666666667e-05
      TotalSeconds: 0.0050284
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1.26303627047121
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    Throughput: 19887.041603691
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2594
---
Should I Include The System Namespace
-------------------------------------
> @2594 Mhz


### 


|Technique              |Time           |RelativeSpeed|Throughput|
|-----------------------|---------------|-------------|----------|
|SystemNamespaceIncluded|00:00:00.003981|1x           |25118.05/s|
|NoSytemNamespace       |00:00:00.005028|1.26x        |19887.04/s|
