---
layout: Benchmark

Data: 
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 77223
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.93784722222222e-08
      TotalHours: 2.14508333333333e-06
      TotalMilliseconds: 7.7223
      TotalMinutes: 0.000128705
      TotalSeconds: 0.0077223
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [System.IO.Path]
              
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Should I Include The System Namespace
    Throughput: 12949.5098610518
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 161966
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.87460648148148e-07
      TotalHours: 4.49905555555556e-06
      TotalMilliseconds: 16.1966
      TotalMinutes: 0.000269943333333333
      TotalSeconds: 0.0161966
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [IO.Path]
              
    RelativeSpeed: 2.09738031415511
    ClockSpeed: 2295
    FileName: Should I Include The System Namespace
    Throughput: 6174.13531234951
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
|SystemNamespaceIncluded|00:00:00.007722|1x           |12949.51/s|
|NoSytemNamespace       |00:00:00.016196|2.1x         |6174.14/s |
