---
layout: Benchmark
title: Should I Include The System Namespace

Data: 
  - Technique: NoSytemNamespace
    Time: 
      Ticks: 788060
      Days: 0
      Hours: 0
      Milliseconds: 78
      Minutes: 0
      Seconds: 0
      TotalDays: 9.12106481481482e-07
      TotalHours: 2.18905555555556e-05
      TotalMilliseconds: 78.806
      TotalMinutes: 0.00131343333333333
      TotalSeconds: 0.078806
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [IO.Path]
              
        RepeatCount: 1024
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Should I Include The System Namespace
    RepeatCount: 1024
    Throughput: 12993.9344719945
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
      RepeatCount: 1024
  - Technique: SystemNamespaceIncluded
    Time: 
      Ticks: 812867
      Days: 0
      Hours: 0
      Milliseconds: 81
      Minutes: 0
      Seconds: 0
      TotalDays: 9.40818287037037e-07
      TotalHours: 2.25796388888889e-05
      TotalMilliseconds: 81.2867
      TotalMinutes: 0.00135477833333333
      TotalSeconds: 0.0812867
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: 
        FileName: Should I Include The System Namespace
        ScriptBlock: |
          
                  [System.IO.Path]
              
        RepeatCount: 1024
    RelativeSpeed: 1.03147856762175
    ClockSpeed: 2295
    FileName: Should I Include The System Namespace
    RepeatCount: 1024
    Throughput: 12597.3867803712
    BenchmarkInput: 
      FileName: Should I Include The System Namespace
      RepeatCount: 1024
FileName: Should I Include The System Namespace
ClockSpeed: 2295
---




|Technique              |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------------|-----------|---------------|-------------|----------|
|NoSytemNamespace       |1024       |00:00:00.078806|1x           |12993.93/s|
|SystemNamespaceIncluded|1024       |00:00:00.081286|1.03x        |12597.39/s|
