---
layout: Benchmark

Data: 
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 39191
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.53599537037037e-08
      TotalHours: 1.08863888888889e-06
      TotalMilliseconds: 3.9191
      TotalMinutes: 6.53183333333333e-05
      TotalSeconds: 0.0039191
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    Throughput: 25516.0623612564
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 307666
      Days: 0
      Hours: 0
      Milliseconds: 30
      Minutes: 0
      Seconds: 0
      TotalDays: 3.56094907407407e-07
      TotalHours: 8.54627777777778e-06
      TotalMilliseconds: 30.7666
      TotalMinutes: 0.000512776666666667
      TotalSeconds: 0.0307666
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 7.85042484243832
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    Throughput: 3250.27789876034
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
|NoSytemNamespace       |00:00:00.003919|1x           |25516.06/s|
|SystemNamespaceIncluded|00:00:00.030766|7.85x        |3250.28/s |
