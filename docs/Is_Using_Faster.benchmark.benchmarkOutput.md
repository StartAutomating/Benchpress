---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 42076
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.86990740740741e-08
      TotalHours: 1.16877777777778e-06
      TotalMilliseconds: 4.2076
      TotalMinutes: 7.01266666666667e-05
      TotalSeconds: 0.0042076
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
    Throughput: 23766.5177298222
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 44638
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.16643518518519e-08
      TotalHours: 1.23994444444444e-06
      TotalMilliseconds: 4.4638
      TotalMinutes: 7.43966666666667e-05
      TotalSeconds: 0.0044638
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1.0608898184238
    ClockSpeed: 2594
    FileName: Is Using Faster
    RepeatCount: 100
    Throughput: 22402.4373851875
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2594
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|not using|100        |00:00:00.004207|1x           |23766.52/s|
|using    |100        |00:00:00.004463|1.06x        |22402.44/s|
