---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 46568
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.38981481481481e-08
      TotalHours: 1.29355555555556e-06
      TotalMilliseconds: 4.6568
      TotalMinutes: 7.76133333333333e-05
      TotalSeconds: 0.0046568
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [System.IO.Path]
              
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 21473.9735440646
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 290645
      Days: 0
      Hours: 0
      Milliseconds: 29
      Minutes: 0
      Seconds: 0
      TotalDays: 3.36394675925926e-07
      TotalHours: 8.07347222222222e-06
      TotalMilliseconds: 29.0645
      TotalMinutes: 0.000484408333333333
      TotalSeconds: 0.0290645
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [IO.Path]
              
    RelativeSpeed: 6.24130304071465
    ClockSpeed: 2793
    FileName: Should I Include The System Namespace
    RepeatCount: 100
    Throughput: 3440.6234409675
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
FileName: Should I Include The System Namespace
ClockSpeed: 2793
---


### 


|Technique              |Time           |RelativeSpeed|Throughput|
|-----------------------|---------------|-------------|----------|
|SystemNamespaceIncluded|00:00:00.004656|1x           |21473.97/s|
|NoSytemNamespace       |00:00:00.029064|6.24x        |3440.62/s |
