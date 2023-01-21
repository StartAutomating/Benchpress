---
layout: Benchmark

Data: 
  - Technique: not using
    Time: 
      Ticks: 41893
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.84872685185185e-08
      TotalHours: 1.16369444444444e-06
      TotalMilliseconds: 4.1893
      TotalMinutes: 6.98216666666667e-05
      TotalSeconds: 0.0041893
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
        FileName: Is Using Faster
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Is Using Faster
    Throughput: 23870.3363330389
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: using
    Time: 
      Ticks: 43150
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.99421296296296e-08
      TotalHours: 1.19861111111111e-06
      TotalMilliseconds: 4.315
      TotalMinutes: 7.19166666666667e-05
      TotalSeconds: 0.004315
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1.03000501277063
    ClockSpeed: 2793
    FileName: Is Using Faster
    Throughput: 23174.9710312862
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
|not using|00:00:00.004189|1x           |23870.34/s|
|using    |00:00:00.004315|1.03x        |23174.97/s|
