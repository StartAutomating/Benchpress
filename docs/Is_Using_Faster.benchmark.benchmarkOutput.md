---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 47319
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.47673611111111e-08
      TotalHours: 1.31441666666667e-06
      TotalMilliseconds: 4.7319
      TotalMinutes: 7.8865e-05
      TotalSeconds: 0.0047319
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
    Throughput: 21133.160041421
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 53379
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.178125e-08
      TotalHours: 1.48275e-06
      TotalMilliseconds: 5.3379
      TotalMinutes: 8.8965e-05
      TotalSeconds: 0.0053379
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
    RelativeSpeed: 1.12806694985101
    ClockSpeed: 2095
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 18733.9590475655
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2095
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|not using|100        |00:00:00.004731|1x           |21133.16/s|
|using    |100        |00:00:00.005337|1.13x        |18733.96/s|
