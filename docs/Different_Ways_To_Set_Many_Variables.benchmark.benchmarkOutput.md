---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 351260
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.06550925925926e-07
      TotalHours: 9.75722222222222e-06
      TotalMilliseconds: 35.126
      TotalMinutes: 0.000585433333333333
      TotalSeconds: 0.035126
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          $a = 'b'
                          $c = 'd'
                          $e = 'f'
                          $h = 'i'
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 29152.1949553038
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Multiple Assignment
    Time: 
      Ticks: 368463
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.26461805555556e-07
      TotalHours: 1.02350833333333e-05
      TotalMilliseconds: 36.8463
      TotalMinutes: 0.000614105
      TotalSeconds: 0.0368463
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
    RelativeSpeed: 1.0489751181461
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 27791.1214965953
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: ExecutionContext
    Time: 
      Ticks: 499746
      Days: 0
      Hours: 0
      Milliseconds: 49
      Minutes: 0
      Seconds: 0
      TotalDays: 5.78409722222222e-07
      TotalHours: 1.38818333333333e-05
      TotalMilliseconds: 49.9746
      TotalMinutes: 0.00083291
      TotalSeconds: 0.0499746
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          $ExecutionContext.SessionState.PSVariable.Set('a', 'b')
                          $ExecutionContext.SessionState.PSVariable.Set('c', 'd')
                          $ExecutionContext.SessionState.PSVariable.Set('e', 'f')
                          $ExecutionContext.SessionState.PSVariable.Set('h', 'i')
    RelativeSpeed: 1.42272390821614
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 20490.4091278369
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: SetFromSplat
    Time: 
      Ticks: 560100
      Days: 0
      Hours: 0
      Milliseconds: 56
      Minutes: 0
      Seconds: 0
      TotalDays: 6.48263888888889e-07
      TotalHours: 1.55583333333333e-05
      TotalMilliseconds: 56.01
      TotalMinutes: 0.0009335
      TotalSeconds: 0.05601
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
    RelativeSpeed: 1.59454535102204
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 18282.4495625781
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Set-Variable
    Time: 
      Ticks: 3366490
      Days: 0
      Hours: 0
      Milliseconds: 336
      Minutes: 0
      Seconds: 0
      TotalDays: 3.89640046296296e-06
      TotalHours: 9.35136111111111e-05
      TotalMilliseconds: 336.649
      TotalMinutes: 0.00561081666666667
      TotalSeconds: 0.336649
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          Set-Variable a b
                          Set-Variable c d
                          Set-Variable e f
                          Set-Variable h i
    RelativeSpeed: 9.58404031201959
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 3041.74377467332
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
FileName: Different Ways To Set Many Variables
ClockSpeed: 2594
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Simple Assignment  |1024       |00:00:00.035126|1x           |29152.19/s|
|Multiple Assignment|1024       |00:00:00.036846|1.05x        |27791.12/s|
|ExecutionContext   |1024       |00:00:00.049974|1.42x        |20490.41/s|
|SetFromSplat       |1024       |00:00:00.056010|1.59x        |18282.45/s|
|Set-Variable       |1024       |00:00:00.336649|9.58x        |3041.74/s |
