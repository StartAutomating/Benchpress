---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 561578
      Days: 0
      Hours: 0
      Milliseconds: 56
      Minutes: 0
      Seconds: 0
      TotalDays: 6.49974537037037e-07
      TotalHours: 1.55993888888889e-05
      TotalMilliseconds: 56.1578
      TotalMinutes: 0.000935963333333333
      TotalSeconds: 0.0561578
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
    Throughput: 18234.3325415169
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Multiple Assignment
    Time: 
      Ticks: 635191
      Days: 0
      Hours: 0
      Milliseconds: 63
      Minutes: 0
      Seconds: 0
      TotalDays: 7.35174768518519e-07
      TotalHours: 1.76441944444444e-05
      TotalMilliseconds: 63.5191
      TotalMinutes: 0.00105865166666667
      TotalSeconds: 0.0635191
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.13108241419714
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 16121.135217596
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: ExecutionContext
    Time: 
      Ticks: 740203
      Days: 0
      Hours: 0
      Milliseconds: 74
      Minutes: 0
      Seconds: 0
      TotalDays: 8.56716435185185e-07
      TotalHours: 2.05611944444444e-05
      TotalMilliseconds: 74.0203
      TotalMinutes: 0.00123367166666667
      TotalSeconds: 0.0740203
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
    RelativeSpeed: 1.31807691896762
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 13834.0428233876
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: SetFromSplat
    Time: 
      Ticks: 880180
      Days: 0
      Hours: 0
      Milliseconds: 88
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01872685185185e-06
      TotalHours: 2.44494444444444e-05
      TotalMilliseconds: 88.018
      TotalMinutes: 0.00146696666666667
      TotalSeconds: 0.088018
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.56733347816332
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 11633.9839578268
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Set-Variable
    Time: 
      Ticks: 5655070
      Days: 0
      Hours: 0
      Milliseconds: 565
      Minutes: 0
      Seconds: 0
      TotalDays: 6.54521990740741e-06
      TotalHours: 0.000157085277777778
      TotalMilliseconds: 565.507
      TotalMinutes: 0.00942511666666667
      TotalSeconds: 0.565507
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
    RelativeSpeed: 10.0699635669488
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 1810.76449982052
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
FileName: Different Ways To Set Many Variables
ClockSpeed: 2295
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Simple Assignment  |1024       |00:00:00.056157|1x           |18234.33/s|
|Multiple Assignment|1024       |00:00:00.063519|1.13x        |16121.14/s|
|ExecutionContext   |1024       |00:00:00.074020|1.32x        |13834.04/s|
|SetFromSplat       |1024       |00:00:00.088018|1.57x        |11633.98/s|
|Set-Variable       |1024       |00:00:00.565507|10.07x       |1810.76/s |
