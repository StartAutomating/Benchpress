---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 35111
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.06377314814815e-08
      TotalHours: 9.75305555555556e-07
      TotalMilliseconds: 3.5111
      TotalMinutes: 5.85183333333333e-05
      TotalSeconds: 0.0035111
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
    Throughput: 28481.1027883
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 41293
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.77928240740741e-08
      TotalHours: 1.14702777777778e-06
      TotalMilliseconds: 4.1293
      TotalMinutes: 6.88216666666667e-05
      TotalSeconds: 0.0041293
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
    RelativeSpeed: 1.17607017743727
    ClockSpeed: 2095
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 24217.179667256
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2095
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|not using|100        |00:00:00.003511|1x           |28481.1/s |
|using    |100        |00:00:00.004129|1.18x        |24217.18/s|
