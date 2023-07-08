---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 49931
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.77905092592593e-08
      TotalHours: 1.38697222222222e-06
      TotalMilliseconds: 4.9931
      TotalMinutes: 8.32183333333333e-05
      TotalSeconds: 0.0049931
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 20027.6381406341
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 53431
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.18414351851852e-08
      TotalHours: 1.48419444444444e-06
      TotalMilliseconds: 5.3431
      TotalMinutes: 8.90516666666667e-05
      TotalSeconds: 0.0053431
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
    RelativeSpeed: 1.07009673349222
    ClockSpeed: 2095
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 18715.7268252513
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2095
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|not using|100        |00:00:00.004993|1x           |20027.64/s|
|using    |100        |00:00:00.005343|1.07x        |18715.73/s|
