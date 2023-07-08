---
layout: Benchmark

Data: 
  - Technique: Multiple Assignment
    Time: 
      Ticks: 520872
      Days: 0
      Hours: 0
      Milliseconds: 52
      Minutes: 0
      Seconds: 0
      TotalDays: 6.02861111111111e-07
      TotalHours: 1.44686666666667e-05
      TotalMilliseconds: 52.0872
      TotalMinutes: 0.00086812
      TotalSeconds: 0.0520872
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        FileName: Different Ways To Set Many Variables
        RepeatCount: 1024
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    Throughput: 19659.340490562
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Simple Assignment
    Time: 
      Ticks: 537052
      Days: 0
      Hours: 0
      Milliseconds: 53
      Minutes: 0
      Seconds: 0
      TotalDays: 6.21587962962963e-07
      TotalHours: 1.49181111111111e-05
      TotalMilliseconds: 53.7052
      TotalMinutes: 0.000895086666666667
      TotalSeconds: 0.0537052
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
    RelativeSpeed: 1.03106329386106
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    Throughput: 19067.0549592963
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: ExecutionContext
    Time: 
      Ticks: 707323
      Days: 0
      Hours: 0
      Milliseconds: 70
      Minutes: 0
      Seconds: 0
      TotalDays: 8.1866087962963e-07
      TotalHours: 1.96478611111111e-05
      TotalMilliseconds: 70.7323
      TotalMinutes: 0.00117887166666667
      TotalSeconds: 0.0707323
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
    RelativeSpeed: 1.35795934509822
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    Throughput: 14477.1200710284
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: SetFromSplat
    Time: 
      Ticks: 831747
      Days: 0
      Hours: 0
      Milliseconds: 83
      Minutes: 0
      Seconds: 0
      TotalDays: 9.62670138888889e-07
      TotalHours: 2.31040833333333e-05
      TotalMilliseconds: 83.1747
      TotalMinutes: 0.001386245
      TotalSeconds: 0.0831747
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        FileName: Different Ways To Set Many Variables
        RepeatCount: 1024
    RelativeSpeed: 1.59683569091831
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    Throughput: 12311.4360496641
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Set-Variable
    Time: 
      Ticks: 5257966
      Days: 0
      Hours: 0
      Milliseconds: 525
      Minutes: 0
      Seconds: 0
      TotalDays: 6.0856087962963e-06
      TotalHours: 0.000146054611111111
      TotalMilliseconds: 525.7966
      TotalMinutes: 0.00876327666666667
      TotalSeconds: 0.5257966
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
    RelativeSpeed: 10.0945453009569
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    Throughput: 1947.52115171532
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
FileName: Different Ways To Set Many Variables
ClockSpeed: 2295
---
Different Ways To Set Many Variables
------------------------------------
> @2295 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Multiple Assignment|00:00:00.052087|1x           |19659.34/s|
|Simple Assignment  |00:00:00.053705|1.03x        |19067.05/s|
|ExecutionContext   |00:00:00.070732|1.36x        |14477.12/s|
|SetFromSplat       |00:00:00.083174|1.6x         |12311.44/s|
|Set-Variable       |00:00:00.525796|10.09x       |1947.52/s |
