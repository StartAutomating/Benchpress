---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 61173
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.08020833333333e-08
      TotalHours: 1.69925e-06
      TotalMilliseconds: 6.1173
      TotalMinutes: 0.000101955
      TotalSeconds: 0.0061173
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
        FileName: Is Using Faster
    RelativeSpeed: 1
    ClockSpeed: 2397
    FileName: Is Using Faster
    Throughput: 16347.0812286466
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 65800
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.61574074074074e-08
      TotalHours: 1.82777777777778e-06
      TotalMilliseconds: 6.58
      TotalMinutes: 0.000109666666666667
      TotalSeconds: 0.00658
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1.07563794484495
    ClockSpeed: 2397
    FileName: Is Using Faster
    Throughput: 15197.5683890578
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2397
---


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|not using|00:00:00.006117|1x           |16347.08/s|
|using    |00:00:00.006580|1.08x        |15197.57/s|
