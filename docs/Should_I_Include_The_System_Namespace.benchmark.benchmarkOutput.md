---
layout: Benchmark

Data: 
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 55008
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.36666666666667e-08
      TotalHours: 1.528e-06
      TotalMilliseconds: 5.5008
      TotalMinutes: 9.168e-05
      TotalSeconds: 0.0055008
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Should I Include The System Namespace
    Throughput: 18179.1739383362
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 72395
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.37905092592593e-08
      TotalHours: 2.01097222222222e-06
      TotalMilliseconds: 7.2395
      TotalMinutes: 0.000120658333333333
      TotalSeconds: 0.0072395
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1.31608129726585
    ClockSpeed: 2295
    FileName: Should I Include The System Namespace
    Throughput: 13813.1086400995
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
|SystemNamespaceIncluded|00:00:00.005500|1x           |18179.17/s|
|NoSytemNamespace       |00:00:00.007239|1.32x        |13813.11/s|
