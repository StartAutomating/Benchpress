---
layout: Benchmark

Data: 
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 39382
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.55810185185185e-08
      TotalHours: 1.09394444444444e-06
      TotalMilliseconds: 3.9382
      TotalMinutes: 6.56366666666667e-05
      TotalSeconds: 0.0039382
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Should I Include The System Namespace
    Throughput: 25392.3112081662
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 50298
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.82152777777778e-08
      TotalHours: 1.39716666666667e-06
      TotalMilliseconds: 5.0298
      TotalMinutes: 8.383e-05
      TotalSeconds: 0.0050298
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1.27718246914834
    ClockSpeed: 2793
    FileName: Should I Include The System Namespace
    Throughput: 19881.5062229114
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
|SystemNamespaceIncluded|00:00:00.003938|1x           |25392.31/s|
|NoSytemNamespace       |00:00:00.005029|1.28x        |19881.51/s|
