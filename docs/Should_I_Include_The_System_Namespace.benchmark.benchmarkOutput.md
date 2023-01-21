---
layout: Benchmark

Data: 
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 60173
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 6.96446759259259e-08
      TotalHours: 1.67147222222222e-06
      TotalMilliseconds: 6.0173
      TotalMinutes: 0.000100288333333333
      TotalSeconds: 0.0060173
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Should I Include The System Namespace
    Throughput: 16618.7492729297
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 350436
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.05597222222222e-07
      TotalHours: 9.73433333333333e-06
      TotalMilliseconds: 35.0436
      TotalMinutes: 0.00058406
      TotalSeconds: 0.0350436
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 5.8238080202084
    ClockSpeed: 2095
    FileName: Should I Include The System Namespace
    Throughput: 2853.58810167905
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2095
---
Should I Include The System Namespace
-------------------------------------
> @2095 Mhz


### 


|Technique              |Time           |RelativeSpeed|Throughput|
|-----------------------|---------------|-------------|----------|
|NoSytemNamespace       |00:00:00.006017|1x           |16618.75/s|
|SystemNamespaceIncluded|00:00:00.035043|5.82x        |2853.59/s |
