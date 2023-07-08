---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 41561
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.81030092592593e-08
      TotalHours: 1.15447222222222e-06
      TotalMilliseconds: 4.1561
      TotalMinutes: 6.92683333333333e-05
      TotalSeconds: 0.0041561
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
    Throughput: 24061.0187435336
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 43714
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.05949074074074e-08
      TotalHours: 1.21427777777778e-06
      TotalMilliseconds: 4.3714
      TotalMinutes: 7.28566666666667e-05
      TotalSeconds: 0.0043714
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
    RelativeSpeed: 1.05180337335483
    ClockSpeed: 2594
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 22875.966509585
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2594
---


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|not using|00:00:00.004156|1x           |24061.02/s|
|using    |00:00:00.004371|1.05x        |22875.97/s|
