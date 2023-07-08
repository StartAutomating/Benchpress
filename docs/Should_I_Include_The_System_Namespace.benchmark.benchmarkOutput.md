---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 582491
      Days: 0
      Hours: 0
      Milliseconds: 58
      Minutes: 0
      Seconds: 0
      TotalDays: 6.74179398148148e-07
      TotalHours: 1.61803055555556e-05
      TotalMilliseconds: 58.2491
      TotalMinutes: 0.000970818333333333
      TotalSeconds: 0.0582491
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [System.IO.Path]
              
        RepeatCount: 1024
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    RepeatCount: 1024
    Throughput: 17579.6707588615
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
      RepeatCount: 1024
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 615432
      Days: 0
      Hours: 0
      Milliseconds: 61
      Minutes: 0
      Seconds: 0
      TotalDays: 7.12305555555556e-07
      TotalHours: 1.70953333333333e-05
      TotalMilliseconds: 61.5432
      TotalMinutes: 0.00102572
      TotalSeconds: 0.0615432
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [IO.Path]
              
        RepeatCount: 1024
    RelativeSpeed: 1.05655194672536
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    RepeatCount: 1024
    Throughput: 16638.718818651
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
      RepeatCount: 1024
FileName: Should I Include The System Namespace
ClockSpeed: 2594
---




|Technique              |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------------|-----------|---------------|-------------|----------|
|SystemNamespaceIncluded|1024       |00:00:00.058249|1x           |17579.67/s|
|NoSytemNamespace       |1024       |00:00:00.061543|1.06x        |16638.72/s|
