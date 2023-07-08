---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: using
    Time: 
      Ticks: 72015
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.33506944444444e-08
      TotalHours: 2.00041666666667e-06
      TotalMilliseconds: 7.2015
      TotalMinutes: 0.000120025
      TotalSeconds: 0.0072015
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 13885.9959730612
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: not using
    Time: 
      Ticks: 78636
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.10138888888889e-08
      TotalHours: 2.18433333333333e-06
      TotalMilliseconds: 7.8636
      TotalMinutes: 0.00013106
      TotalSeconds: 0.0078636
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
        FileName: Is Using Faster
    RelativeSpeed: 1.09193917933764
    ClockSpeed: 2295
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 12716.8218118928
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2295
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|using    |100        |00:00:00.007201|1x           |13886/s   |
|not using|100        |00:00:00.007863|1.09x        |12716.82/s|
