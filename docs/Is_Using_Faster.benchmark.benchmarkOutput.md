---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 77694
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.99236111111111e-08
      TotalHours: 2.15816666666667e-06
      TotalMilliseconds: 7.7694
      TotalMinutes: 0.00012949
      TotalSeconds: 0.0077694
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 12871.0067701496
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 80200
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.28240740740741e-08
      TotalHours: 2.22777777777778e-06
      TotalMilliseconds: 8.02
      TotalMinutes: 0.000133666666666667
      TotalSeconds: 0.00802
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
    RelativeSpeed: 1.03225474296599
    ClockSpeed: 2295
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 12468.8279301746
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2295
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|not using|100        |00:00:00.007769|1x           |12871.01/s|
|using    |100        |00:00:00.008020|1.03x        |12468.83/s|
