---
layout: Benchmark

Data: 
  - Technique: not using
    Time: 
      Ticks: 48494
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.61273148148148e-08
      TotalHours: 1.34705555555556e-06
      TotalMilliseconds: 4.8494
      TotalMinutes: 8.08233333333333e-05
      TotalSeconds: 0.0048494
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
        FileName: Is Using Faster
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Is Using Faster
    Throughput: 20621.1077659092
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 51267
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.93368055555556e-08
      TotalHours: 1.42408333333333e-06
      TotalMilliseconds: 5.1267
      TotalMinutes: 8.5445e-05
      TotalSeconds: 0.0051267
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1.05718233183487
    ClockSpeed: 2095
    FileName: Is Using Faster
    Throughput: 19505.724930267
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2095
---
Is Using Faster
---------------
> @2095 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|not using|00:00:00.004849|1x           |20621.11/s|
|using    |00:00:00.005126|1.06x        |19505.72/s|
