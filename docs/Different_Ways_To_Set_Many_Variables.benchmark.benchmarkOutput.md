---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 563245
      Days: 0
      Hours: 0
      Milliseconds: 56
      Minutes: 0
      Seconds: 0
      TotalDays: 6.51903935185185e-07
      TotalHours: 1.56456944444444e-05
      TotalMilliseconds: 56.3245
      TotalMinutes: 0.000938741666666667
      TotalSeconds: 0.0563245
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
    ClockSpeed: 2397
    FileName: Different Ways To Set Many Variables
    Throughput: 18180.3655602802
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Multiple Assignment
    Time: 
      Ticks: 566839
      Days: 0
      Hours: 0
      Milliseconds: 56
      Minutes: 0
      Seconds: 0
      TotalDays: 6.56063657407407e-07
      TotalHours: 1.57455277777778e-05
      TotalMilliseconds: 56.6839
      TotalMinutes: 0.000944731666666667
      TotalSeconds: 0.0566839
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.00638088220934
    ClockSpeed: 2397
    FileName: Different Ways To Set Many Variables
    Throughput: 18065.0943213152
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: ExecutionContext
    Time: 
      Ticks: 712267
      Days: 0
      Hours: 0
      Milliseconds: 71
      Minutes: 0
      Seconds: 0
      TotalDays: 8.24383101851852e-07
      TotalHours: 1.97851944444444e-05
      TotalMilliseconds: 71.2267
      TotalMinutes: 0.00118711166666667
      TotalSeconds: 0.0712267
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
    RelativeSpeed: 1.2645775816918
    ClockSpeed: 2397
    FileName: Different Ways To Set Many Variables
    Throughput: 14376.6312351969
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: SetFromSplat
    Time: 
      Ticks: 850166
      Days: 0
      Hours: 0
      Milliseconds: 85
      Minutes: 0
      Seconds: 0
      TotalDays: 9.83988425925926e-07
      TotalHours: 2.36157222222222e-05
      TotalMilliseconds: 85.0166
      TotalMinutes: 0.00141694333333333
      TotalSeconds: 0.0850166
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.50940709637902
    ClockSpeed: 2397
    FileName: Different Ways To Set Many Variables
    Throughput: 12044.7065631888
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Set-Variable
    Time: 
      Ticks: 5487679
      Days: 0
      Hours: 0
      Milliseconds: 548
      Minutes: 0
      Seconds: 0
      TotalDays: 6.35148032407407e-06
      TotalHours: 0.000152435527777778
      TotalMilliseconds: 548.7679
      TotalMinutes: 0.00914613166666667
      TotalSeconds: 0.5487679
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
    RelativeSpeed: 9.74296975561257
    ClockSpeed: 2397
    FileName: Different Ways To Set Many Variables
    Throughput: 1865.99835741121
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
FileName: Different Ways To Set Many Variables
ClockSpeed: 2397
---


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Simple Assignment  |00:00:00.056324|1x           |18180.37/s|
|Multiple Assignment|00:00:00.056683|1.01x        |18065.09/s|
|ExecutionContext   |00:00:00.071226|1.26x        |14376.63/s|
|SetFromSplat       |00:00:00.085016|1.51x        |12044.71/s|
|Set-Variable       |00:00:00.548767|9.74x        |1866/s    |
