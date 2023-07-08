---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 413983
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.79146990740741e-07
      TotalHours: 1.14995277777778e-05
      TotalMilliseconds: 41.3983
      TotalMinutes: 0.000689971666666667
      TotalSeconds: 0.0413983
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
    Throughput: 24735.3152182578
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Multiple Assignment
    Time: 
      Ticks: 420168
      Days: 0
      Hours: 0
      Milliseconds: 42
      Minutes: 0
      Seconds: 0
      TotalDays: 4.86305555555556e-07
      TotalHours: 1.16713333333333e-05
      TotalMilliseconds: 42.0168
      TotalMinutes: 0.00070028
      TotalSeconds: 0.0420168
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        RepeatCount: 1024
    RelativeSpeed: 1.01494022701415
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 24371.2038993926
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: ExecutionContext
    Time: 
      Ticks: 556076
      Days: 0
      Hours: 0
      Milliseconds: 55
      Minutes: 0
      Seconds: 0
      TotalDays: 6.43606481481481e-07
      TotalHours: 1.54465555555556e-05
      TotalMilliseconds: 55.6076
      TotalMinutes: 0.000926793333333333
      TotalSeconds: 0.0556076
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
    RelativeSpeed: 1.34323390090897
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 18414.7490630777
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: SetFromSplat
    Time: 
      Ticks: 639341
      Days: 0
      Hours: 0
      Milliseconds: 63
      Minutes: 0
      Seconds: 0
      TotalDays: 7.39978009259259e-07
      TotalHours: 1.77594722222222e-05
      TotalMilliseconds: 63.9341
      TotalMinutes: 0.00106556833333333
      TotalSeconds: 0.0639341
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        RepeatCount: 1024
    RelativeSpeed: 1.54436534833556
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 16016.4919815873
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Set-Variable
    Time: 
      Ticks: 3775190
      Days: 0
      Hours: 0
      Milliseconds: 377
      Minutes: 0
      Seconds: 0
      TotalDays: 4.36943287037037e-06
      TotalHours: 0.000104866388888889
      TotalMilliseconds: 377.519
      TotalMinutes: 0.00629198333333333
      TotalSeconds: 0.377519
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
    RelativeSpeed: 9.11919088464985
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 2712.44626098289
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
FileName: Different Ways To Set Many Variables
ClockSpeed: 2095
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Simple Assignment  |1024       |00:00:00.041398|1x           |24735.32/s|
|Multiple Assignment|1024       |00:00:00.042016|1.01x        |24371.2/s |
|ExecutionContext   |1024       |00:00:00.055607|1.34x        |18414.75/s|
|SetFromSplat       |1024       |00:00:00.063934|1.54x        |16016.49/s|
|Set-Variable       |1024       |00:00:00.377519|9.12x        |2712.45/s |
