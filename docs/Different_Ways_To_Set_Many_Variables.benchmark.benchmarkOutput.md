---
layout: Benchmark

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 357387
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.13642361111111e-07
      TotalHours: 9.92741666666667e-06
      TotalMilliseconds: 35.7387
      TotalMinutes: 0.000595645
      TotalSeconds: 0.0357387
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
                          $a = 'b'
                          $c = 'd'
                          $e = 'f'
                          $h = 'i'
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 28652.4132103294
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Multiple Assignment
    Time: 
      Ticks: 376377
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.35621527777778e-07
      TotalHours: 1.04549166666667e-05
      TotalMilliseconds: 37.6377
      TotalMinutes: 0.000627295
      TotalSeconds: 0.0376377
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.05313567645158
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 27206.7634313468
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: ExecutionContext
    Time: 
      Ticks: 482171
      Days: 0
      Hours: 0
      Milliseconds: 48
      Minutes: 0
      Seconds: 0
      TotalDays: 5.58068287037037e-07
      TotalHours: 1.33936388888889e-05
      TotalMilliseconds: 48.2171
      TotalMinutes: 0.000803618333333333
      TotalSeconds: 0.0482171
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
                          $ExecutionContext.SessionState.PSVariable.Set('a', 'b')
                          $ExecutionContext.SessionState.PSVariable.Set('c', 'd')
                          $ExecutionContext.SessionState.PSVariable.Set('e', 'f')
                          $ExecutionContext.SessionState.PSVariable.Set('h', 'i')
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.34915651660525
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 21237.278890684
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: SetFromSplat
    Time: 
      Ticks: 557337
      Days: 0
      Hours: 0
      Milliseconds: 55
      Minutes: 0
      Seconds: 0
      TotalDays: 6.45065972222222e-07
      TotalHours: 1.54815833333333e-05
      TotalMilliseconds: 55.7337
      TotalMinutes: 0.000928895
      TotalSeconds: 0.0557337
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.55947754115287
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 18373.0848660685
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Set-Variable
    Time: 
      Ticks: 3341777
      Days: 0
      Hours: 0
      Milliseconds: 334
      Minutes: 0
      Seconds: 0
      TotalDays: 3.8677974537037e-06
      TotalHours: 9.28271388888889e-05
      TotalMilliseconds: 334.1777
      TotalMinutes: 0.00556962833333333
      TotalSeconds: 0.3341777
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
                          Set-Variable a b
                          Set-Variable c d
                          Set-Variable e f
                          Set-Variable h i
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 9.35058354109131
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 3064.23797877596
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
FileName: Different Ways To Set Many Variables
ClockSpeed: 2594
---
Different Ways To Set Many Variables
------------------------------------
> @2594 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Simple Assignment  |00:00:00.035738|1x           |28652.41/s|
|Multiple Assignment|00:00:00.037637|1.05x        |27206.76/s|
|ExecutionContext   |00:00:00.048217|1.35x        |21237.28/s|
|SetFromSplat       |00:00:00.055733|1.56x        |18373.08/s|
|Set-Variable       |00:00:00.334177|9.35x        |3064.24/s |
