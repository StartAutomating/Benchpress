---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 434888
      Days: 0
      Hours: 0
      Milliseconds: 43
      Minutes: 0
      Seconds: 0
      TotalDays: 5.03342592592593e-07
      TotalHours: 1.20802222222222e-05
      TotalMilliseconds: 43.4888
      TotalMinutes: 0.000724813333333333
      TotalSeconds: 0.0434888
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
    RepeatCount: 1024
    Throughput: 23546.2923787274
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Multiple Assignment
    Time: 
      Ticks: 442572
      Days: 0
      Hours: 0
      Milliseconds: 44
      Minutes: 0
      Seconds: 0
      TotalDays: 5.12236111111111e-07
      TotalHours: 1.22936666666667e-05
      TotalMilliseconds: 44.2572
      TotalMinutes: 0.00073762
      TotalSeconds: 0.0442572
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.01766891705451
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 23137.4781956382
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: ExecutionContext
    Time: 
      Ticks: 592834
      Days: 0
      Hours: 0
      Milliseconds: 59
      Minutes: 0
      Seconds: 0
      TotalDays: 6.86150462962963e-07
      TotalHours: 1.64676111111111e-05
      TotalMilliseconds: 59.2834
      TotalMinutes: 0.000988056666666667
      TotalSeconds: 0.0592834
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
    RelativeSpeed: 1.36318776328618
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 17272.9634265241
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: SetFromSplat
    Time: 
      Ticks: 852794
      Days: 0
      Hours: 0
      Milliseconds: 85
      Minutes: 0
      Seconds: 0
      TotalDays: 9.87030092592593e-07
      TotalHours: 2.36887222222222e-05
      TotalMilliseconds: 85.2794
      TotalMinutes: 0.00142132333333333
      TotalSeconds: 0.0852794
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.9609508655102
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 12007.5891715936
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Set-Variable
    Time: 
      Ticks: 4973973
      Days: 0
      Hours: 0
      Milliseconds: 497
      Minutes: 0
      Seconds: 0
      TotalDays: 5.75691319444444e-06
      TotalHours: 0.000138165916666667
      TotalMilliseconds: 497.3973
      TotalMinutes: 0.008289955
      TotalSeconds: 0.4973973
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
    RelativeSpeed: 11.437365482607
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 2058.71644257015
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
FileName: Different Ways To Set Many Variables
ClockSpeed: 2295
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Simple Assignment  |1024       |00:00:00.043488|1x           |23546.29/s|
|Multiple Assignment|1024       |00:00:00.044257|1.02x        |23137.48/s|
|ExecutionContext   |1024       |00:00:00.059283|1.36x        |17272.96/s|
|SetFromSplat       |1024       |00:00:00.085279|1.96x        |12007.59/s|
|Set-Variable       |1024       |00:00:00.497397|11.44x       |2058.72/s |
