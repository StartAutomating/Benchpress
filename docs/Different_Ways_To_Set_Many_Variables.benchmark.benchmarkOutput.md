---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 339007
      Days: 0
      Hours: 0
      Milliseconds: 33
      Minutes: 0
      Seconds: 0
      TotalDays: 3.92369212962963e-07
      TotalHours: 9.41686111111111e-06
      TotalMilliseconds: 33.9007
      TotalMinutes: 0.000565011666666667
      TotalSeconds: 0.0339007
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        RepeatCount: 1024
        ScriptBlock: |
                          $a = 'b'
                          $c = 'd'
                          $e = 'f'
                          $h = 'i'
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 30205.8659555702
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Multiple Assignment
    Time: 
      Ticks: 391631
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.5327662037037e-07
      TotalHours: 1.08786388888889e-05
      TotalMilliseconds: 39.1631
      TotalMinutes: 0.000652718333333333
      TotalSeconds: 0.0391631
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        RepeatCount: 1024
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
    RelativeSpeed: 1.1552298330123
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 26147.0619026584
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: ExecutionContext
    Time: 
      Ticks: 497500
      Days: 0
      Hours: 0
      Milliseconds: 49
      Minutes: 0
      Seconds: 0
      TotalDays: 5.75810185185185e-07
      TotalHours: 1.38194444444444e-05
      TotalMilliseconds: 49.75
      TotalMinutes: 0.000829166666666667
      TotalSeconds: 0.04975
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        RepeatCount: 1024
        ScriptBlock: |
                          $ExecutionContext.SessionState.PSVariable.Set('a', 'b')
                          $ExecutionContext.SessionState.PSVariable.Set('c', 'd')
                          $ExecutionContext.SessionState.PSVariable.Set('e', 'f')
                          $ExecutionContext.SessionState.PSVariable.Set('h', 'i')
    RelativeSpeed: 1.46752131961877
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 20582.9145728643
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: SetFromSplat
    Time: 
      Ticks: 565708
      Days: 0
      Hours: 0
      Milliseconds: 56
      Minutes: 0
      Seconds: 0
      TotalDays: 6.5475462962963e-07
      TotalHours: 1.57141111111111e-05
      TotalMilliseconds: 56.5708
      TotalMinutes: 0.000942846666666667
      TotalSeconds: 0.0565708
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        RepeatCount: 1024
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
    RelativeSpeed: 1.6687207048822
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 18101.2112255793
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Set-Variable
    Time: 
      Ticks: 3519497
      Days: 0
      Hours: 0
      Milliseconds: 351
      Minutes: 0
      Seconds: 0
      TotalDays: 4.07349189814815e-06
      TotalHours: 9.77638055555556e-05
      TotalMilliseconds: 351.9497
      TotalMinutes: 0.00586582833333333
      TotalSeconds: 0.3519497
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        RepeatCount: 1024
        ScriptBlock: |
                          Set-Variable a b
                          Set-Variable c d
                          Set-Variable e f
                          Set-Variable h i
    RelativeSpeed: 10.3817826770539
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 2909.50667098168
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
FileName: Different Ways To Set Many Variables
ClockSpeed: 2594
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Simple Assignment  |1024       |00:00:00.033900|1x           |30205.87/s|
|Multiple Assignment|1024       |00:00:00.039163|1.16x        |26147.06/s|
|ExecutionContext   |1024       |00:00:00.049750|1.47x        |20582.91/s|
|SetFromSplat       |1024       |00:00:00.056570|1.67x        |18101.21/s|
|Set-Variable       |1024       |00:00:00.351949|10.38x       |2909.51/s |
