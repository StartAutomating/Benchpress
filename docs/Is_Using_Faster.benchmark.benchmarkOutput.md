---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 41029
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.74872685185185e-08
      TotalHours: 1.13969444444444e-06
      TotalMilliseconds: 4.1029
      TotalMinutes: 6.83816666666667e-05
      TotalSeconds: 0.0041029
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
        FileName: Is Using Faster
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 24373.0044602598
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 45057
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.21493055555556e-08
      TotalHours: 1.25158333333333e-06
      TotalMilliseconds: 4.5057
      TotalMinutes: 7.5095e-05
      TotalSeconds: 0.0045057
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1.09817446196593
    ClockSpeed: 2594
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 22194.1096832901
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2594
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|not using|100        |00:00:00.004102|1x           |24373/s   |
|using    |100        |00:00:00.004505|1.1x         |22194.11/s|
