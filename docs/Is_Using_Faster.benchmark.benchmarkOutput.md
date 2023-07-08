---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 42047
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.86655092592593e-08
      TotalHours: 1.16797222222222e-06
      TotalMilliseconds: 4.2047
      TotalMinutes: 7.00783333333333e-05
      TotalSeconds: 0.0042047
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 23782.9096011606
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 44001
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.09270833333333e-08
      TotalHours: 1.22225e-06
      TotalMilliseconds: 4.4001
      TotalMinutes: 7.3335e-05
      TotalSeconds: 0.0044001
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
    RelativeSpeed: 1.04647180536067
    ClockSpeed: 2594
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 22726.7562100861
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2594
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|not using|100        |00:00:00.004204|1x           |23782.91/s|
|using    |100        |00:00:00.004400|1.05x        |22726.76/s|
