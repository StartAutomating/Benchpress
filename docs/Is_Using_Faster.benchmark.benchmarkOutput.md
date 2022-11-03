---
layout: Benchmark

Data: 
  - Technique: not using
    Time: 
      Ticks: 60849
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.04270833333333e-08
      TotalHours: 1.69025e-06
      TotalMilliseconds: 6.0849
      TotalMinutes: 0.000101415
      TotalSeconds: 0.0060849
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
        FileName: Is Using Faster
    RelativeSpeed: 1
    ClockSpeed: 2394
    FileName: Is Using Faster
    Throughput: 16434.1238146888
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 62912
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.28148148148148e-08
      TotalHours: 1.74755555555556e-06
      TotalMilliseconds: 6.2912
      TotalMinutes: 0.000104853333333333
      TotalSeconds: 0.0062912
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1.0339035974297
    ClockSpeed: 2394
    FileName: Is Using Faster
    Throughput: 15895.2187182096
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2394
---
Is Using Faster
---------------
> @2394 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|not using|00:00:00.006084|1x           |16434.12/s|
|using    |00:00:00.006291|1.03x        |15895.22/s|
