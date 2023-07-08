---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 60200
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 6.96759259259259e-08
      TotalHours: 1.67222222222222e-06
      TotalMilliseconds: 6.02
      TotalMinutes: 0.000100333333333333
      TotalSeconds: 0.00602
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
        FileName: Is Using Faster
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Is Using Faster
    Throughput: 16611.2956810631
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 70539
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.16423611111111e-08
      TotalHours: 1.95941666666667e-06
      TotalMilliseconds: 7.0539
      TotalMinutes: 0.000117565
      TotalSeconds: 0.0070539
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1.17174418604651
    ClockSpeed: 2295
    FileName: Is Using Faster
    Throughput: 14176.5548136492
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2295
---
Is Using Faster
---------------
> @2295 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|not using|00:00:00.006020|1x           |16611.3/s |
|using    |00:00:00.007053|1.17x        |14176.55/s|
