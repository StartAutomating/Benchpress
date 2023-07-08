---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 59518
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.88865740740741e-08
      TotalHours: 1.65327777777778e-06
      TotalMilliseconds: 5.9518
      TotalMinutes: 9.91966666666667e-05
      TotalSeconds: 0.0059518
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [IO.Path]
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 16801.6398400484
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 370214
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.28488425925926e-07
      TotalHours: 1.02837222222222e-05
      TotalMilliseconds: 37.0214
      TotalMinutes: 0.000617023333333333
      TotalSeconds: 0.0370214
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [System.IO.Path]
              
    RelativeSpeed: 6.22020229174367
    ClockSpeed: 2095
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 2701.14042148595
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2095
---




|Technique              |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------------|-----------|---------------|-------------|----------|
|NoSytemNamespace       |100        |00:00:00.005951|1x           |16801.64/s|
|SystemNamespaceIncluded|100        |00:00:00.037021|6.22x        |2701.14/s |
