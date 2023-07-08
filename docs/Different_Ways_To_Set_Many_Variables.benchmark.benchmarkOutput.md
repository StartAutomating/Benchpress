---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Multiple Assignment
    Time: 
      Ticks: 337557
      Days: 0
      Hours: 0
      Milliseconds: 33
      Minutes: 0
      Seconds: 0
      TotalDays: 3.90690972222222e-07
      TotalHours: 9.37658333333333e-06
      TotalMilliseconds: 33.7557
      TotalMinutes: 0.000562595
      TotalSeconds: 0.0337557
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 30335.6173920256
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Simple Assignment
    Time: 
      Ticks: 360968
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.17787037037037e-07
      TotalHours: 1.00268888888889e-05
      TotalMilliseconds: 36.0968
      TotalMinutes: 0.000601613333333333
      TotalSeconds: 0.0360968
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
                          $a = 'b'
                          $c = 'd'
                          $e = 'f'
                          $h = 'i'
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.06935421276999
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 28368.1655991667
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: ExecutionContext
    Time: 
      Ticks: 449461
      Days: 0
      Hours: 0
      Milliseconds: 44
      Minutes: 0
      Seconds: 0
      TotalDays: 5.20209490740741e-07
      TotalHours: 1.24850277777778e-05
      TotalMilliseconds: 44.9461
      TotalMinutes: 0.000749101666666667
      TotalSeconds: 0.0449461
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
                          $ExecutionContext.SessionState.PSVariable.Set('a', 'b')
                          $ExecutionContext.SessionState.PSVariable.Set('c', 'd')
                          $ExecutionContext.SessionState.PSVariable.Set('e', 'f')
                          $ExecutionContext.SessionState.PSVariable.Set('h', 'i')
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.33151141881223
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 22782.8443402208
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: SetFromSplat
    Time: 
      Ticks: 523172
      Days: 0
      Hours: 0
      Milliseconds: 52
      Minutes: 0
      Seconds: 0
      TotalDays: 6.05523148148148e-07
      TotalHours: 1.45325555555556e-05
      TotalMilliseconds: 52.3172
      TotalMinutes: 0.000871953333333333
      TotalSeconds: 0.0523172
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.54987750217
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 19572.9129234745
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Set-Variable
    Time: 
      Ticks: 3312932
      Days: 0
      Hours: 0
      Milliseconds: 331
      Minutes: 0
      Seconds: 0
      TotalDays: 3.83441203703704e-06
      TotalHours: 9.20258888888889e-05
      TotalMilliseconds: 331.2932
      TotalMinutes: 0.00552155333333333
      TotalSeconds: 0.3312932
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
                          Set-Variable a b
                          Set-Variable c d
                          Set-Variable e f
                          Set-Variable h i
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 9.81443726540999
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 3090.91765239975
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
FileName: Different Ways To Set Many Variables
ClockSpeed: 2793
---
Different Ways To Set Many Variables
------------------------------------
> @2793 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Multiple Assignment|00:00:00.033755|1x           |30335.62/s|
|Simple Assignment  |00:00:00.036096|1.07x        |28368.17/s|
|ExecutionContext   |00:00:00.044946|1.33x        |22782.84/s|
|SetFromSplat       |00:00:00.052317|1.55x        |19572.91/s|
|Set-Variable       |00:00:00.331293|9.81x        |3090.92/s |
