---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 38037
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.40243055555556e-08
      TotalHours: 1.05658333333333e-06
      TotalMilliseconds: 3.8037
      TotalMinutes: 6.3395e-05
      TotalSeconds: 0.0038037
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 26290.1911296895
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 42108
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.87361111111111e-08
      TotalHours: 1.16966666666667e-06
      TotalMilliseconds: 4.2108
      TotalMinutes: 7.018e-05
      TotalSeconds: 0.0042108
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
    RelativeSpeed: 1.10702736808897
    ClockSpeed: 2793
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 23748.4563503372
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2793
---


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|not using|00:00:00.003803|1x           |26290.19/s|
|using    |00:00:00.004210|1.11x        |23748.46/s|
