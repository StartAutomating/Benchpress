---
layout: Benchmark

Data: 
  - Technique: not using
    Time: 
      Ticks: 40567
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.69525462962963e-08
      TotalHours: 1.12686111111111e-06
      TotalMilliseconds: 4.0567
      TotalMinutes: 6.76116666666667e-05
      TotalSeconds: 0.0040567
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Is Using Faster
    Throughput: 24650.5780560554
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 42015
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.86284722222222e-08
      TotalHours: 1.16708333333333e-06
      TotalMilliseconds: 4.2015
      TotalMinutes: 7.0025e-05
      TotalSeconds: 0.0042015
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
    RelativeSpeed: 1.03569403702517
    ClockSpeed: 2793
    FileName: Is Using Faster
    Throughput: 23801.0234440081
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2793
---
Is Using Faster
---------------
> @2793 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|not using|00:00:00.004056|1x           |24650.58/s|
|using    |00:00:00.004201|1.04x        |23801.02/s|
