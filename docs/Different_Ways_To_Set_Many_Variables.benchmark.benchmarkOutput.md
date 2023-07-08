---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 341929
      Days: 0
      Hours: 0
      Milliseconds: 34
      Minutes: 0
      Seconds: 0
      TotalDays: 3.95751157407407e-07
      TotalHours: 9.49802777777778e-06
      TotalMilliseconds: 34.1929
      TotalMinutes: 0.000569881666666667
      TotalSeconds: 0.0341929
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
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 29947.7376882335
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Multiple Assignment
    Time: 
      Ticks: 356999
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.13193287037037e-07
      TotalHours: 9.91663888888889e-06
      TotalMilliseconds: 35.6999
      TotalMinutes: 0.000594998333333333
      TotalSeconds: 0.0356999
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
    RelativeSpeed: 1.04407347724235
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 28683.5537354446
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: ExecutionContext
    Time: 
      Ticks: 441926
      Days: 0
      Hours: 0
      Milliseconds: 44
      Minutes: 0
      Seconds: 0
      TotalDays: 5.11488425925926e-07
      TotalHours: 1.22757222222222e-05
      TotalMilliseconds: 44.1926
      TotalMinutes: 0.000736543333333333
      TotalSeconds: 0.0441926
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
    RelativeSpeed: 1.29244960211038
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 23171.3001724271
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: SetFromSplat
    Time: 
      Ticks: 542077
      Days: 0
      Hours: 0
      Milliseconds: 54
      Minutes: 0
      Seconds: 0
      TotalDays: 6.27403935185185e-07
      TotalHours: 1.50576944444444e-05
      TotalMilliseconds: 54.2077
      TotalMinutes: 0.000903461666666667
      TotalSeconds: 0.0542077
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
    RelativeSpeed: 1.58534959011959
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 18890.3052518369
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Set-Variable
    Time: 
      Ticks: 3386741
      Days: 0
      Hours: 0
      Milliseconds: 338
      Minutes: 0
      Seconds: 0
      TotalDays: 3.91983912037037e-06
      TotalHours: 9.40761388888889e-05
      TotalMilliseconds: 338.6741
      TotalMinutes: 0.00564456833333333
      TotalSeconds: 0.3386741
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
    RelativeSpeed: 9.90480772324079
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 3023.55568376796
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
FileName: Different Ways To Set Many Variables
ClockSpeed: 2793
---


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Simple Assignment  |00:00:00.034192|1x           |29947.74/s|
|Multiple Assignment|00:00:00.035699|1.04x        |28683.55/s|
|ExecutionContext   |00:00:00.044192|1.29x        |23171.3/s |
|SetFromSplat       |00:00:00.054207|1.59x        |18890.31/s|
|Set-Variable       |00:00:00.338674|9.9x         |3023.56/s |
