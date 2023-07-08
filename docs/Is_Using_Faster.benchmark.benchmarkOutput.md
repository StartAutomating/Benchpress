---
layout: Benchmark

Data: 
  - Technique: not using
    Time: 
      Ticks: 41034
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.74930555555556e-08
      TotalHours: 1.13983333333333e-06
      TotalMilliseconds: 4.1034
      TotalMinutes: 6.839e-05
      TotalSeconds: 0.0041034
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
        FileName: Is Using Faster
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Is Using Faster
    Throughput: 24370.0346054491
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 43994
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.09189814814815e-08
      TotalHours: 1.22205555555556e-06
      TotalMilliseconds: 4.3994
      TotalMinutes: 7.33233333333333e-05
      TotalSeconds: 0.0043994
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1.07213530243213
    ClockSpeed: 2594
    FileName: Is Using Faster
    Throughput: 22730.3723234987
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2594
---
Is Using Faster
---------------
> @2594 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|not using|00:00:00.004103|1x           |24370.03/s|
|using    |00:00:00.004399|1.07x        |22730.37/s|
