---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 696861
      Days: 0
      Hours: 0
      Milliseconds: 69
      Minutes: 0
      Seconds: 0
      TotalDays: 8.06552083333333e-07
      TotalHours: 1.935725e-05
      TotalMilliseconds: 69.6861
      TotalMinutes: 0.001161435
      TotalSeconds: 0.0696861
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                  [System.IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Should I Include The System Namespace
    RepeatCount: 1024
    Throughput: 14694.465610789
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
      RepeatCount: 1024
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 726648
      Days: 0
      Hours: 0
      Milliseconds: 72
      Minutes: 0
      Seconds: 0
      TotalDays: 8.41027777777778e-07
      TotalHours: 2.01846666666667e-05
      TotalMilliseconds: 72.6648
      TotalMinutes: 0.00121108
      TotalSeconds: 0.0726648
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                  [IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1.04274453585435
    ClockSpeed: 2095
    FileName: Should I Include The System Namespace
    RepeatCount: 1024
    Throughput: 14092.1051182966
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
      RepeatCount: 1024
FileName: Should I Include The System Namespace
ClockSpeed: 2095
---




|Technique              |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------------|-----------|---------------|-------------|----------|
|SystemNamespaceIncluded|1024       |00:00:00.069686|1x           |14694.47/s|
|NoSytemNamespace       |1024       |00:00:00.072664|1.04x        |14092.11/s|
