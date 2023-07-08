---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 406904
      Days: 0
      Hours: 0
      Milliseconds: 40
      Minutes: 0
      Seconds: 0
      TotalDays: 4.70953703703704e-07
      TotalHours: 1.13028888888889e-05
      TotalMilliseconds: 40.6904
      TotalMinutes: 0.000678173333333333
      TotalSeconds: 0.0406904
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
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 25165.6410357234
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Multiple Assignment
    Time: 
      Ticks: 415588
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.8100462962963e-07
      TotalHours: 1.15441111111111e-05
      TotalMilliseconds: 41.5588
      TotalMinutes: 0.000692646666666667
      TotalSeconds: 0.0415588
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
    RelativeSpeed: 1.02134164323772
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 24639.787481833
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: ExecutionContext
    Time: 
      Ticks: 531337
      Days: 0
      Hours: 0
      Milliseconds: 53
      Minutes: 0
      Seconds: 0
      TotalDays: 6.1497337962963e-07
      TotalHours: 1.47593611111111e-05
      TotalMilliseconds: 53.1337
      TotalMinutes: 0.000885561666666667
      TotalSeconds: 0.0531337
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
    RelativeSpeed: 1.30580431748029
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 19272.1380216322
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: SetFromSplat
    Time: 
      Ticks: 610829
      Days: 0
      Hours: 0
      Milliseconds: 61
      Minutes: 0
      Seconds: 0
      TotalDays: 7.06978009259259e-07
      TotalHours: 1.69674722222222e-05
      TotalMilliseconds: 61.0829
      TotalMinutes: 0.00101804833333333
      TotalSeconds: 0.0610829
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
    RelativeSpeed: 1.50116243634862
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 16764.1025557071
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Set-Variable
    Time: 
      Ticks: 3780073
      Days: 0
      Hours: 0
      Milliseconds: 378
      Minutes: 0
      Seconds: 0
      TotalDays: 4.37508449074074e-06
      TotalHours: 0.000105002027777778
      TotalMilliseconds: 378.0073
      TotalMinutes: 0.00630012166666667
      TotalSeconds: 0.3780073
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
    RelativeSpeed: 9.28983986394825
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 2708.94239344055
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
FileName: Different Ways To Set Many Variables
ClockSpeed: 2095
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Simple Assignment  |1024       |00:00:00.040690|1x           |25165.64/s|
|Multiple Assignment|1024       |00:00:00.041558|1.02x        |24639.79/s|
|ExecutionContext   |1024       |00:00:00.053133|1.31x        |19272.14/s|
|SetFromSplat       |1024       |00:00:00.061082|1.5x         |16764.1/s |
|Set-Variable       |1024       |00:00:00.378007|9.29x        |2708.94/s |
