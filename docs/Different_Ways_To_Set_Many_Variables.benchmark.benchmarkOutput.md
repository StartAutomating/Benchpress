---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 544450
      Days: 0
      Hours: 0
      Milliseconds: 54
      Minutes: 0
      Seconds: 0
      TotalDays: 6.30150462962963e-07
      TotalHours: 1.51236111111111e-05
      TotalMilliseconds: 54.445
      TotalMinutes: 0.000907416666666667
      TotalSeconds: 0.054445
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
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 18807.9713472312
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Multiple Assignment
    Time: 
      Ticks: 583527
      Days: 0
      Hours: 0
      Milliseconds: 58
      Minutes: 0
      Seconds: 0
      TotalDays: 6.75378472222222e-07
      TotalHours: 1.62090833333333e-05
      TotalMilliseconds: 58.3527
      TotalMinutes: 0.000972545
      TotalSeconds: 0.0583527
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        RepeatCount: 1024
    RelativeSpeed: 1.07177334925154
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 17548.45962569
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: ExecutionContext
    Time: 
      Ticks: 688978
      Days: 0
      Hours: 0
      Milliseconds: 68
      Minutes: 0
      Seconds: 0
      TotalDays: 7.97428240740741e-07
      TotalHours: 1.91382777777778e-05
      TotalMilliseconds: 68.8978
      TotalMinutes: 0.00114829666666667
      TotalSeconds: 0.0688978
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
    RelativeSpeed: 1.26545688309303
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 14862.5935806368
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: SetFromSplat
    Time: 
      Ticks: 816391
      Days: 0
      Hours: 0
      Milliseconds: 81
      Minutes: 0
      Seconds: 0
      TotalDays: 9.44896990740741e-07
      TotalHours: 2.26775277777778e-05
      TotalMilliseconds: 81.6391
      TotalMinutes: 0.00136065166666667
      TotalSeconds: 0.0816391
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        RepeatCount: 1024
    RelativeSpeed: 1.49947837266967
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 12543.0094158314
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Set-Variable
    Time: 
      Ticks: 5460689
      Days: 0
      Hours: 0
      Milliseconds: 546
      Minutes: 0
      Seconds: 0
      TotalDays: 6.32024189814815e-06
      TotalHours: 0.000151685805555556
      TotalMilliseconds: 546.0689
      TotalMinutes: 0.00910114833333333
      TotalSeconds: 0.5460689
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
    RelativeSpeed: 10.029734594545
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 1875.22124039659
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
FileName: Different Ways To Set Many Variables
ClockSpeed: 2295
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Simple Assignment  |1024       |00:00:00.054445|1x           |18807.97/s|
|Multiple Assignment|1024       |00:00:00.058352|1.07x        |17548.46/s|
|ExecutionContext   |1024       |00:00:00.068897|1.27x        |14862.59/s|
|SetFromSplat       |1024       |00:00:00.081639|1.5x         |12543.01/s|
|Set-Variable       |1024       |00:00:00.546068|10.03x       |1875.22/s |
