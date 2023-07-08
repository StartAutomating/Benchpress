---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 358213
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.1459837962963e-07
      TotalHours: 9.95036111111111e-06
      TotalMilliseconds: 35.8213
      TotalMinutes: 0.000597021666666667
      TotalSeconds: 0.0358213
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          $a = 'b'
                          $c = 'd'
                          $e = 'f'
                          $h = 'i'
        RepeatCount: 1024
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 28586.3438792004
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Multiple Assignment
    Time: 
      Ticks: 374759
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.33748842592593e-07
      TotalHours: 1.04099722222222e-05
      TotalMilliseconds: 37.4759
      TotalMinutes: 0.000624598333333333
      TotalSeconds: 0.0374759
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        RepeatCount: 1024
    RelativeSpeed: 1.04619039510012
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 27324.2270365755
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: ExecutionContext
    Time: 
      Ticks: 504775
      Days: 0
      Hours: 0
      Milliseconds: 50
      Minutes: 0
      Seconds: 0
      TotalDays: 5.84230324074074e-07
      TotalHours: 1.40215277777778e-05
      TotalMilliseconds: 50.4775
      TotalMinutes: 0.000841291666666667
      TotalSeconds: 0.0504775
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          $ExecutionContext.SessionState.PSVariable.Set('a', 'b')
                          $ExecutionContext.SessionState.PSVariable.Set('c', 'd')
                          $ExecutionContext.SessionState.PSVariable.Set('e', 'f')
                          $ExecutionContext.SessionState.PSVariable.Set('h', 'i')
        RepeatCount: 1024
    RelativeSpeed: 1.40914763004134
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 20286.2661581893
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: SetFromSplat
    Time: 
      Ticks: 551382
      Days: 0
      Hours: 0
      Milliseconds: 55
      Minutes: 0
      Seconds: 0
      TotalDays: 6.38173611111111e-07
      TotalHours: 1.53161666666667e-05
      TotalMilliseconds: 55.1382
      TotalMinutes: 0.00091897
      TotalSeconds: 0.0551382
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        RepeatCount: 1024
    RelativeSpeed: 1.53925736921887
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 18571.5166617699
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Set-Variable
    Time: 
      Ticks: 3339107
      Days: 0
      Hours: 0
      Milliseconds: 333
      Minutes: 0
      Seconds: 0
      TotalDays: 3.86470717592593e-06
      TotalHours: 9.27529722222222e-05
      TotalMilliseconds: 333.9107
      TotalMinutes: 0.00556517833333333
      TotalSeconds: 0.3339107
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          Set-Variable a b
                          Set-Variable c d
                          Set-Variable e f
                          Set-Variable h i
        RepeatCount: 1024
    RelativeSpeed: 9.32156845228956
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 3066.68818938716
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
FileName: Different Ways To Set Many Variables
ClockSpeed: 2594
---


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Simple Assignment  |00:00:00.035821|1x           |28586.34/s|
|Multiple Assignment|00:00:00.037475|1.05x        |27324.23/s|
|ExecutionContext   |00:00:00.050477|1.41x        |20286.27/s|
|SetFromSplat       |00:00:00.055138|1.54x        |18571.52/s|
|Set-Variable       |00:00:00.333910|9.32x        |3066.69/s |
