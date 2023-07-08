---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 485713
      Days: 0
      Hours: 0
      Milliseconds: 48
      Minutes: 0
      Seconds: 0
      TotalDays: 5.62167824074074e-07
      TotalHours: 1.34920277777778e-05
      TotalMilliseconds: 48.5713
      TotalMinutes: 0.000809521666666667
      TotalSeconds: 0.0485713
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
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    Throughput: 21082.4087475526
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Multiple Assignment
    Time: 
      Ticks: 577002
      Days: 0
      Hours: 0
      Milliseconds: 57
      Minutes: 0
      Seconds: 0
      TotalDays: 6.67826388888889e-07
      TotalHours: 1.60278333333333e-05
      TotalMilliseconds: 57.7002
      TotalMinutes: 0.00096167
      TotalSeconds: 0.0577002
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.18794843868704
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    Throughput: 17746.9055566532
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: ExecutionContext
    Time: 
      Ticks: 750793
      Days: 0
      Hours: 0
      Milliseconds: 75
      Minutes: 0
      Seconds: 0
      TotalDays: 8.6897337962963e-07
      TotalHours: 2.08553611111111e-05
      TotalMilliseconds: 75.0793
      TotalMinutes: 0.00125132166666667
      TotalSeconds: 0.0750793
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
    RelativeSpeed: 1.54575438582043
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    Throughput: 13638.9124565626
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: SetFromSplat
    Time: 
      Ticks: 882242
      Days: 0
      Hours: 0
      Milliseconds: 88
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02111342592593e-06
      TotalHours: 2.45067222222222e-05
      TotalMilliseconds: 88.2242
      TotalMinutes: 0.00147040333333333
      TotalSeconds: 0.0882242
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.81638539631428
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    Throughput: 11606.7926940681
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Set-Variable
    Time: 
      Ticks: 5775218
      Days: 0
      Hours: 0
      Milliseconds: 577
      Minutes: 0
      Seconds: 0
      TotalDays: 6.68428009259259e-06
      TotalHours: 0.000160422722222222
      TotalMilliseconds: 577.5218
      TotalMinutes: 0.00962536333333333
      TotalSeconds: 0.5775218
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
    RelativeSpeed: 11.8901861799046
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    Throughput: 1773.09324080926
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
FileName: Different Ways To Set Many Variables
ClockSpeed: 2295
---
Different Ways To Set Many Variables
------------------------------------
> @2295 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Simple Assignment  |00:00:00.048571|1x           |21082.41/s|
|Multiple Assignment|00:00:00.057700|1.19x        |17746.91/s|
|ExecutionContext   |00:00:00.075079|1.55x        |13638.91/s|
|SetFromSplat       |00:00:00.088224|1.82x        |11606.79/s|
|Set-Variable       |00:00:00.577521|11.89x       |1773.09/s |
