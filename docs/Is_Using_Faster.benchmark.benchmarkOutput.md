---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 49422
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.72013888888889e-08
      TotalHours: 1.37283333333333e-06
      TotalMilliseconds: 4.9422
      TotalMinutes: 8.237e-05
      TotalSeconds: 0.0049422
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
        FileName: Is Using Faster
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 20233.9039294241
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 53201
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.15752314814815e-08
      TotalHours: 1.47780555555556e-06
      TotalMilliseconds: 5.3201
      TotalMinutes: 8.86683333333333e-05
      TotalSeconds: 0.0053201
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1.07646392294929
    ClockSpeed: 2095
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 18796.639160918
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2095
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|not using|100        |00:00:00.004942|1x           |20233.9/s |
|using    |100        |00:00:00.005320|1.08x        |18796.64/s|
