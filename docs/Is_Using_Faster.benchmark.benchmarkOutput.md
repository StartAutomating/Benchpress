---
layout: Benchmark

Data: 
  - Technique: using
    Time: 
      Ticks: 58983
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.82673611111111e-08
      TotalHours: 1.63841666666667e-06
      TotalMilliseconds: 5.8983
      TotalMinutes: 9.8305e-05
      TotalSeconds: 0.0058983
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
        FileName: Is Using Faster
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Is Using Faster
    Throughput: 16954.0376040554
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: not using
    Time: 
      Ticks: 60675
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.02256944444444e-08
      TotalHours: 1.68541666666667e-06
      TotalMilliseconds: 6.0675
      TotalMinutes: 0.000101125
      TotalSeconds: 0.0060675
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
        FileName: Is Using Faster
    RelativeSpeed: 1.02868623162606
    ClockSpeed: 2295
    FileName: Is Using Faster
    Throughput: 16481.2525751957
    BenchmarkInput: 
      FileName: Is Using Faster
FileName: Is Using Faster
ClockSpeed: 2295
---
Is Using Faster
---------------
> @2295 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|using    |00:00:00.005898|1x           |16954.04/s|
|not using|00:00:00.006067|1.03x        |16481.25/s|
