---
layout: Benchmark

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 404186
      Days: 0
      Hours: 0
      Milliseconds: 40
      Minutes: 0
      Seconds: 0
      TotalDays: 4.6780787037037e-07
      TotalHours: 1.12273888888889e-05
      TotalMilliseconds: 40.4186
      TotalMinutes: 0.000673643333333333
      TotalSeconds: 0.0404186
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          $a = 'b'
                          $c = 'd'
                          $e = 'f'
                          $h = 'i'
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 25334.8705793867
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Multiple Assignment
    Time: 
      Ticks: 430871
      Days: 0
      Hours: 0
      Milliseconds: 43
      Minutes: 0
      Seconds: 0
      TotalDays: 4.98693287037037e-07
      TotalHours: 1.19686388888889e-05
      TotalMilliseconds: 43.0871
      TotalMinutes: 0.000718118333333333
      TotalSeconds: 0.0430871
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.06602158412216
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 23765.8138978952
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: ExecutionContext
    Time: 
      Ticks: 435898
      Days: 0
      Hours: 0
      Milliseconds: 43
      Minutes: 0
      Seconds: 0
      TotalDays: 5.04511574074074e-07
      TotalHours: 1.21082777777778e-05
      TotalMilliseconds: 43.5898
      TotalMinutes: 0.000726496666666667
      TotalSeconds: 0.0435898
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          $ExecutionContext.SessionState.PSVariable.Set('a', 'b')
                          $ExecutionContext.SessionState.PSVariable.Set('c', 'd')
                          $ExecutionContext.SessionState.PSVariable.Set('e', 'f')
                          $ExecutionContext.SessionState.PSVariable.Set('h', 'i')
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.07845892732554
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 23491.7343048144
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: SetFromSplat
    Time: 
      Ticks: 592212
      Days: 0
      Hours: 0
      Milliseconds: 59
      Minutes: 0
      Seconds: 0
      TotalDays: 6.85430555555556e-07
      TotalHours: 1.64503333333333e-05
      TotalMilliseconds: 59.2212
      TotalMinutes: 0.00098702
      TotalSeconds: 0.0592212
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.46519671636326
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 17291.1052123226
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Set-Variable
    Time: 
      Ticks: 3596998
      Days: 0
      Hours: 0
      Milliseconds: 359
      Minutes: 0
      Seconds: 0
      TotalDays: 4.16319212962963e-06
      TotalHours: 9.99166111111111e-05
      TotalMilliseconds: 359.6998
      TotalMinutes: 0.00599499666666667
      TotalSeconds: 0.3596998
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          Set-Variable a b
                          Set-Variable c d
                          Set-Variable e f
                          Set-Variable h i
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 8.89936316448368
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 2846.81837465575
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
FileName: Different Ways To Set Many Variables
ClockSpeed: 2793
---
Different Ways To Set Many Variables
------------------------------------
> @2793 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Simple Assignment  |00:00:00.040418|1x           |25334.87/s|
|Multiple Assignment|00:00:00.043087|1.07x        |23765.81/s|
|ExecutionContext   |00:00:00.043589|1.08x        |23491.73/s|
|SetFromSplat       |00:00:00.059221|1.47x        |17291.11/s|
|Set-Variable       |00:00:00.359699|8.9x         |2846.82/s |
