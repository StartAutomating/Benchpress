---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 43798
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.06921296296296e-08
      TotalHours: 1.21661111111111e-06
      TotalMilliseconds: 4.3798
      TotalMinutes: 7.29966666666667e-05
      TotalSeconds: 0.0043798
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
    Throughput: 22832.0927896251
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 48766
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.64421296296296e-08
      TotalHours: 1.35461111111111e-06
      TotalMilliseconds: 4.8766
      TotalMinutes: 8.12766666666667e-05
      TotalSeconds: 0.0048766
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1.11342983697886
    ClockSpeed: 2095
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 20506.0903088217
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2095
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|not using|100        |00:00:00.004379|1x           |22832.09/s|
|using    |100        |00:00:00.004876|1.11x        |20506.09/s|
