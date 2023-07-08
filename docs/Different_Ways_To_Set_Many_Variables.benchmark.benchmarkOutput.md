---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Multiple Assignment
    Time: 
      Ticks: 363397
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.2059837962963e-07
      TotalHours: 1.00943611111111e-05
      TotalMilliseconds: 36.3397
      TotalMinutes: 0.000605661666666667
      TotalSeconds: 0.0363397
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        FileName: Different Ways To Set Many Variables
        RepeatCount: 1024
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 28178.5485295696
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Simple Assignment
    Time: 
      Ticks: 380976
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 0
      TotalDays: 4.40944444444444e-07
      TotalHours: 1.05826666666667e-05
      TotalMilliseconds: 38.0976
      TotalMinutes: 0.00063496
      TotalSeconds: 0.0380976
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          $a = 'b'
                          $c = 'd'
                          $e = 'f'
                          $h = 'i'
        FileName: Different Ways To Set Many Variables
        RepeatCount: 1024
    RelativeSpeed: 1.04837409224622
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 26878.3335433203
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: ExecutionContext
    Time: 
      Ticks: 471139
      Days: 0
      Hours: 0
      Milliseconds: 47
      Minutes: 0
      Seconds: 0
      TotalDays: 5.45299768518519e-07
      TotalHours: 1.30871944444444e-05
      TotalMilliseconds: 47.1139
      TotalMinutes: 0.000785231666666667
      TotalSeconds: 0.0471139
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          $ExecutionContext.SessionState.PSVariable.Set('a', 'b')
                          $ExecutionContext.SessionState.PSVariable.Set('c', 'd')
                          $ExecutionContext.SessionState.PSVariable.Set('e', 'f')
                          $ExecutionContext.SessionState.PSVariable.Set('h', 'i')
        FileName: Different Ways To Set Many Variables
        RepeatCount: 1024
    RelativeSpeed: 1.29648566168681
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 21734.5624115176
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: SetFromSplat
    Time: 
      Ticks: 545242
      Days: 0
      Hours: 0
      Milliseconds: 54
      Minutes: 0
      Seconds: 0
      TotalDays: 6.3106712962963e-07
      TotalHours: 1.51456111111111e-05
      TotalMilliseconds: 54.5242
      TotalMinutes: 0.000908736666666667
      TotalSeconds: 0.0545242
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        FileName: Different Ways To Set Many Variables
        RepeatCount: 1024
    RelativeSpeed: 1.50040314036715
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 18780.6515272118
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Set-Variable
    Time: 
      Ticks: 3325337
      Days: 0
      Hours: 0
      Milliseconds: 332
      Minutes: 0
      Seconds: 0
      TotalDays: 3.84876967592593e-06
      TotalHours: 9.23704722222222e-05
      TotalMilliseconds: 332.5337
      TotalMinutes: 0.00554222833333333
      TotalSeconds: 0.3325337
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          Set-Variable a b
                          Set-Variable c d
                          Set-Variable e f
                          Set-Variable h i
        FileName: Different Ways To Set Many Variables
        RepeatCount: 1024
    RelativeSpeed: 9.1507001984056
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 3079.3871418145
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
FileName: Different Ways To Set Many Variables
ClockSpeed: 2594
---


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Multiple Assignment|00:00:00.036339|1x           |28178.55/s|
|Simple Assignment  |00:00:00.038097|1.05x        |26878.33/s|
|ExecutionContext   |00:00:00.047113|1.3x         |21734.56/s|
|SetFromSplat       |00:00:00.054524|1.5x         |18780.65/s|
|Set-Variable       |00:00:00.332533|9.15x        |3079.39/s |
