---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 39997
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.62928240740741e-08
      TotalHours: 1.11102777777778e-06
      TotalMilliseconds: 3.9997
      TotalMinutes: 6.66616666666667e-05
      TotalSeconds: 0.0039997
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    Throughput: 25001.8751406355
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 52603
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.08831018518518e-08
      TotalHours: 1.46119444444444e-06
      TotalMilliseconds: 5.2603
      TotalMinutes: 8.76716666666667e-05
      TotalSeconds: 0.0052603
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1.31517363802285
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    Throughput: 19010.3226051746
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2594
---


### 


|Technique              |Time           |RelativeSpeed|Throughput|
|-----------------------|---------------|-------------|----------|
|NoSytemNamespace       |00:00:00.003999|1x           |25001.88/s|
|SystemNamespaceIncluded|00:00:00.005260|1.32x        |19010.32/s|
