---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 40492
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.68657407407407e-08
      TotalHours: 1.12477777777778e-06
      TotalMilliseconds: 4.0492
      TotalMinutes: 6.74866666666667e-05
      TotalSeconds: 0.0040492
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [System.IO.Path]
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 24696.2362935889
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 43998
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.09236111111111e-08
      TotalHours: 1.22216666666667e-06
      TotalMilliseconds: 4.3998
      TotalMinutes: 7.333e-05
      TotalSeconds: 0.0043998
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [IO.Path]
              
    RelativeSpeed: 1.08658500444532
    ClockSpeed: 2095
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 22728.3058320833
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2095
---




|Technique              |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------------|-----------|---------------|-------------|----------|
|SystemNamespaceIncluded|100        |00:00:00.004049|1x           |24696.24/s|
|NoSytemNamespace       |100        |00:00:00.004399|1.09x        |22728.31/s|
