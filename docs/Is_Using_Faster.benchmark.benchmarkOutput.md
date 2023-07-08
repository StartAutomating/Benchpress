---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 51761
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.99085648148148e-08
      TotalHours: 1.43780555555556e-06
      TotalMilliseconds: 5.1761
      TotalMinutes: 8.62683333333333e-05
      TotalSeconds: 0.0051761
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
    Throughput: 19319.5649233979
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 57181
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.6181712962963e-08
      TotalHours: 1.58836111111111e-06
      TotalMilliseconds: 5.7181
      TotalMinutes: 9.53016666666667e-05
      TotalSeconds: 0.0057181
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
    RelativeSpeed: 1.10471204188482
    ClockSpeed: 2295
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 17488.3265420332
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2295
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|not using|100        |00:00:00.005176|1x           |19319.56/s|
|using    |100        |00:00:00.005718|1.1x         |17488.33/s|
