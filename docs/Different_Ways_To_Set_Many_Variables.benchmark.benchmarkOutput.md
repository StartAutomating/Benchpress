---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 303544
      Days: 0
      Hours: 0
      Milliseconds: 30
      Minutes: 0
      Seconds: 0
      TotalDays: 3.51324074074074e-07
      TotalHours: 8.43177777777778e-06
      TotalMilliseconds: 30.3544
      TotalMinutes: 0.000505906666666667
      TotalSeconds: 0.0303544
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
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 33734.8127454339
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Multiple Assignment
    Time: 
      Ticks: 330339
      Days: 0
      Hours: 0
      Milliseconds: 33
      Minutes: 0
      Seconds: 0
      TotalDays: 3.82336805555556e-07
      TotalHours: 9.17608333333333e-06
      TotalMilliseconds: 33.0339
      TotalMinutes: 0.000550565
      TotalSeconds: 0.0330339
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        RepeatCount: 1024
    RelativeSpeed: 1.08827385815565
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 30998.4591586219
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: ExecutionContext
    Time: 
      Ticks: 413690
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.7880787037037e-07
      TotalHours: 1.14913888888889e-05
      TotalMilliseconds: 41.369
      TotalMinutes: 0.000689483333333333
      TotalSeconds: 0.041369
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
    RelativeSpeed: 1.36286666842369
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 24752.8342478668
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: SetFromSplat
    Time: 
      Ticks: 487954
      Days: 0
      Hours: 0
      Milliseconds: 48
      Minutes: 0
      Seconds: 0
      TotalDays: 5.64761574074074e-07
      TotalHours: 1.35542777777778e-05
      TotalMilliseconds: 48.7954
      TotalMinutes: 0.000813256666666667
      TotalSeconds: 0.0487954
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        RepeatCount: 1024
    RelativeSpeed: 1.60752312679546
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 20985.5847067551
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Set-Variable
    Time: 
      Ticks: 3240951
      Days: 0
      Hours: 0
      Milliseconds: 324
      Minutes: 0
      Seconds: 0
      TotalDays: 3.75110069444444e-06
      TotalHours: 9.00264166666667e-05
      TotalMilliseconds: 324.0951
      TotalMinutes: 0.005401585
      TotalSeconds: 0.3240951
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
    RelativeSpeed: 10.6770385841921
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 3159.56643590107
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
FileName: Different Ways To Set Many Variables
ClockSpeed: 2095
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Simple Assignment  |1024       |00:00:00.030354|1x           |33734.81/s|
|Multiple Assignment|1024       |00:00:00.033033|1.09x        |30998.46/s|
|ExecutionContext   |1024       |00:00:00.041369|1.36x        |24752.83/s|
|SetFromSplat       |1024       |00:00:00.048795|1.61x        |20985.58/s|
|Set-Variable       |1024       |00:00:00.324095|10.68x       |3159.57/s |
