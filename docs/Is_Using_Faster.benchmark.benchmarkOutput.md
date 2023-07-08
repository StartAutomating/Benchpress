---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 40627
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.70219907407407e-08
      TotalHours: 1.12852777777778e-06
      TotalMilliseconds: 4.0627
      TotalMinutes: 6.77116666666667e-05
      TotalSeconds: 0.0040627
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
        FileName: Is Using Faster
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Is Using Faster
    Throughput: 24614.1728407217
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 43018
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.97893518518518e-08
      TotalHours: 1.19494444444444e-06
      TotalMilliseconds: 4.3018
      TotalMinutes: 7.16966666666667e-05
      TotalSeconds: 0.0043018
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1.05885248726217
    ClockSpeed: 2793
    FileName: Is Using Faster
    Throughput: 23246.0830350086
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2793
---


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|not using|00:00:00.004062|1x           |24614.17/s|
|using    |00:00:00.004301|1.06x        |23246.08/s|
