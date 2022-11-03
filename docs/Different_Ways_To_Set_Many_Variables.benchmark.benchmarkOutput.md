---
layout: Benchmark

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 499569
      Days: 0
      Hours: 0
      Milliseconds: 49
      Minutes: 0
      Seconds: 0
      TotalDays: 5.78204861111111e-07
      TotalHours: 1.38769166666667e-05
      TotalMilliseconds: 49.9569
      TotalMinutes: 0.000832615
      TotalSeconds: 0.0499569
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
    Throughput: 20497.66899067
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Multiple Assignment
    Time: 
      Ticks: 556497
      Days: 0
      Hours: 0
      Milliseconds: 55
      Minutes: 0
      Seconds: 0
      TotalDays: 6.4409375e-07
      TotalHours: 1.545825e-05
      TotalMilliseconds: 55.6497
      TotalMinutes: 0.000927495
      TotalSeconds: 0.0556497
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.11395422854501
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    Throughput: 18400.8179738615
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: SetFromSplat
    Time: 
      Ticks: 765461
      Days: 0
      Hours: 0
      Milliseconds: 76
      Minutes: 0
      Seconds: 0
      TotalDays: 8.85950231481481e-07
      TotalHours: 2.12628055555556e-05
      TotalMilliseconds: 76.5461
      TotalMinutes: 0.00127576833333333
      TotalSeconds: 0.0765461
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.53224279328781
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    Throughput: 13377.5594053779
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: ExecutionContext
    Time: 
      Ticks: 923503
      Days: 0
      Hours: 0
      Milliseconds: 92
      Minutes: 0
      Seconds: 0
      TotalDays: 1.06886921296296e-06
      TotalHours: 2.56528611111111e-05
      TotalMilliseconds: 92.3503
      TotalMinutes: 0.00153917166666667
      TotalSeconds: 0.0923503
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
    RelativeSpeed: 1.84859949276276
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    Throughput: 11088.2151980015
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Set-Variable
    Time: 
      Ticks: 5791696
      Days: 0
      Hours: 0
      Milliseconds: 579
      Minutes: 0
      Seconds: 0
      TotalDays: 6.70335185185185e-06
      TotalHours: 0.000160880444444444
      TotalMilliseconds: 579.1696
      TotalMinutes: 0.00965282666666667
      TotalSeconds: 0.5791696
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
    RelativeSpeed: 11.5933854982995
    ClockSpeed: 2295
    FileName: Different Ways To Set Many Variables
    Throughput: 1768.04859923587
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
|Simple Assignment  |00:00:00.049956|1x           |20497.67/s|
|Multiple Assignment|00:00:00.055649|1.11x        |18400.82/s|
|SetFromSplat       |00:00:00.076546|1.53x        |13377.56/s|
|ExecutionContext   |00:00:00.092350|1.85x        |11088.22/s|
|Set-Variable       |00:00:00.579169|11.59x       |1768.05/s |
