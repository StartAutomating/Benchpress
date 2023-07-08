---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 50315
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.82349537037037e-08
      TotalHours: 1.39763888888889e-06
      TotalMilliseconds: 5.0315
      TotalMinutes: 8.38583333333333e-05
      TotalSeconds: 0.0050315
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 19874.7888303687
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 285154
      Days: 0
      Hours: 0
      Milliseconds: 28
      Minutes: 0
      Seconds: 0
      TotalDays: 3.30039351851852e-07
      TotalHours: 7.92094444444444e-06
      TotalMilliseconds: 28.5154
      TotalMinutes: 0.000475256666666667
      TotalSeconds: 0.0285154
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [System.IO.Path]
              
        FileName: Should I Include The System Namespace
    RelativeSpeed: 5.66737553413495
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 3506.87698576909
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2594
---




|Technique              |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------------|-----------|---------------|-------------|----------|
|NoSytemNamespace       |100        |00:00:00.005031|1x           |19874.79/s|
|SystemNamespaceIncluded|100        |00:00:00.028515|5.67x        |3506.88/s |
