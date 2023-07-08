---
layout: Benchmark
title: Is Using Faster

Data: 
  - Technique: not using
    Time: 
      Ticks: 39576
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.58055555555556e-08
      TotalHours: 1.09933333333333e-06
      TotalMilliseconds: 3.9576
      TotalMinutes: 6.596e-05
      TotalSeconds: 0.0039576
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
        FileName: Is Using Faster
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Is Using Faster
    Throughput: 25267.8390944006
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 43280
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.00925925925926e-08
      TotalHours: 1.20222222222222e-06
      TotalMilliseconds: 4.328
      TotalMinutes: 7.21333333333333e-05
      TotalSeconds: 0.004328
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1.09359207600566
    ClockSpeed: 2793
    FileName: Is Using Faster
    Throughput: 23105.3604436229
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
|not using|00:00:00.003957|1x           |25267.84/s|
|using    |00:00:00.004328|1.09x        |23105.36/s|
