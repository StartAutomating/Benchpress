---
layout: Benchmark

Data: 
  - Technique: not using
    Time: 
      Ticks: 42266
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.89189814814815e-08
      TotalHours: 1.17405555555556e-06
      TotalMilliseconds: 4.2266
      TotalMinutes: 7.04433333333333e-05
      TotalSeconds: 0.0042266
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
        FileName: Is Using Faster
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Is Using Faster
    Throughput: 23659.6791747504
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 46261
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.35428240740741e-08
      TotalHours: 1.28502777777778e-06
      TotalMilliseconds: 4.6261
      TotalMinutes: 7.71016666666667e-05
      TotalSeconds: 0.0046261
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1.09452041830313
    ClockSpeed: 2594
    FileName: Is Using Faster
    Throughput: 21616.4804046605
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
|not using|00:00:00.004226|1x           |23659.68/s|
|using    |00:00:00.004626|1.09x        |21616.48/s|
