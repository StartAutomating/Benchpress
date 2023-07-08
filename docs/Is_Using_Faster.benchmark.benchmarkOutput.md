---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 40921
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.73622685185185e-08
      TotalHours: 1.13669444444444e-06
      TotalMilliseconds: 4.0921
      TotalMinutes: 6.82016666666667e-05
      TotalSeconds: 0.0040921
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
        FileName: Is Using Faster
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Is Using Faster
    Throughput: 24437.3304660199
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 45184
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.22962962962963e-08
      TotalHours: 1.25511111111111e-06
      TotalMilliseconds: 4.5184
      TotalMinutes: 7.53066666666667e-05
      TotalSeconds: 0.0045184
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1.10417633977664
    ClockSpeed: 2594
    FileName: Is Using Faster
    Throughput: 22131.7280453258
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2594
---


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|not using|00:00:00.004092|1x           |24437.33/s|
|using    |00:00:00.004518|1.1x         |22131.73/s|
