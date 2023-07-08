---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Multiple Assignment
    Time: 
      Ticks: 388363
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 0
      TotalDays: 4.49494212962963e-07
      TotalHours: 1.07878611111111e-05
      TotalMilliseconds: 38.8363
      TotalMinutes: 0.000647271666666667
      TotalSeconds: 0.0388363
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        RepeatCount: 1024
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 26367.0844029941
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Simple Assignment
    Time: 
      Ticks: 393538
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.55483796296296e-07
      TotalHours: 1.09316111111111e-05
      TotalMilliseconds: 39.3538
      TotalMinutes: 0.000655896666666667
      TotalSeconds: 0.0393538
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
    RelativeSpeed: 1.01332516228374
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 26020.3588979971
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: ExecutionContext
    Time: 
      Ticks: 472313
      Days: 0
      Hours: 0
      Milliseconds: 47
      Minutes: 0
      Seconds: 0
      TotalDays: 5.46658564814815e-07
      TotalHours: 1.31198055555556e-05
      TotalMilliseconds: 47.2313
      TotalMinutes: 0.000787188333333333
      TotalSeconds: 0.0472313
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
    RelativeSpeed: 1.216163743714
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 21680.5381177313
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: SetFromSplat
    Time: 
      Ticks: 559951
      Days: 0
      Hours: 0
      Milliseconds: 55
      Minutes: 0
      Seconds: 0
      TotalDays: 6.48091435185185e-07
      TotalHours: 1.55541944444444e-05
      TotalMilliseconds: 55.9951
      TotalMinutes: 0.000933251666666667
      TotalSeconds: 0.0559951
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        RepeatCount: 1024
    RelativeSpeed: 1.44182375767001
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 18287.3144257265
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Set-Variable
    Time: 
      Ticks: 3269259
      Days: 0
      Hours: 0
      Milliseconds: 326
      Minutes: 0
      Seconds: 0
      TotalDays: 3.78386458333333e-06
      TotalHours: 9.081275e-05
      TotalMilliseconds: 326.9259
      TotalMinutes: 0.005448765
      TotalSeconds: 0.3269259
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
    RelativeSpeed: 8.41804960822735
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 3132.2082465782
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
FileName: Different Ways To Set Many Variables
ClockSpeed: 2594
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Multiple Assignment|1024       |00:00:00.038836|1x           |26367.08/s|
|Simple Assignment  |1024       |00:00:00.039353|1.01x        |26020.36/s|
|ExecutionContext   |1024       |00:00:00.047231|1.22x        |21680.54/s|
|SetFromSplat       |1024       |00:00:00.055995|1.44x        |18287.31/s|
|Set-Variable       |1024       |00:00:00.326925|8.42x        |3132.21/s |
