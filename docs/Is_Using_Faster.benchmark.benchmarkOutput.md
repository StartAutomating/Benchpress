---
layout: Benchmark

Data: 
  - Technique: using
    Time: 
      Ticks: 66682
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.71782407407407e-08
      TotalHours: 1.85227777777778e-06
      TotalMilliseconds: 6.6682
      TotalMinutes: 0.000111136666666667
      TotalSeconds: 0.0066682
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          using namespace System.Management.Automation.Language
          $scriptBlockAst -is [StringConstantExpressionAst]
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Is Using Faster
    Throughput: 14996.5507933175
    BenchmarkInput: 
      FileName: Is Using Faster
  - Technique: not using
    Time: 
      Ticks: 68131
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.88553240740741e-08
      TotalHours: 1.89252777777778e-06
      TotalMilliseconds: 6.8131
      TotalMinutes: 0.000113551666666667
      TotalSeconds: 0.0068131
      FileName: Is Using Faster
      GroupName: 
      BenchmarkInput: 
        FileName: Is Using Faster
        ScriptBlock: |
          
              $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
          
    RelativeSpeed: 1.02173000209952
    ClockSpeed: 2295
    FileName: Is Using Faster
    Throughput: 14677.6063759522
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
|using    |00:00:00.006668|1x           |14996.55/s|
|not using|00:00:00.006813|1.02x        |14677.61/s|
