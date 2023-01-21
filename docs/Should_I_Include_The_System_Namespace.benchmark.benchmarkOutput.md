---
layout: Benchmark

Data: 
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 38190
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.42013888888889e-08
      TotalHours: 1.06083333333333e-06
      TotalMilliseconds: 3.819
      TotalMinutes: 6.365e-05
      TotalSeconds: 0.003819
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [IO.Path]
              
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Should I Include The System Namespace
    Throughput: 26184.8651479445
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 48630
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.62847222222222e-08
      TotalHours: 1.35083333333333e-06
      TotalMilliseconds: 4.863
      TotalMinutes: 8.105e-05
      TotalSeconds: 0.004863
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [System.IO.Path]
              
    RelativeSpeed: 1.27336999214454
    ClockSpeed: 2793
    FileName: Should I Include The System Namespace
    Throughput: 20563.4382068682
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
|NoSytemNamespace       |00:00:00.003819|1x           |26184.87/s|
|SystemNamespaceIncluded|00:00:00.004863|1.27x        |20563.44/s|
