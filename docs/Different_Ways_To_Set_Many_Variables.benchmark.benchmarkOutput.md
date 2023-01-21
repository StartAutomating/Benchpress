---
layout: Benchmark

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 414060
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.79236111111111e-07
      TotalHours: 1.15016666666667e-05
      TotalMilliseconds: 41.406
      TotalMinutes: 0.0006901
      TotalSeconds: 0.041406
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
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 24730.7153552625
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Multiple Assignment
    Time: 
      Ticks: 445790
      Days: 0
      Hours: 0
      Milliseconds: 44
      Minutes: 0
      Seconds: 0
      TotalDays: 5.15960648148148e-07
      TotalHours: 1.23830555555556e-05
      TotalMilliseconds: 44.579
      TotalMinutes: 0.000742983333333333
      TotalSeconds: 0.044579
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.07663140607641
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 22970.4569416093
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: ExecutionContext
    Time: 
      Ticks: 526168
      Days: 0
      Hours: 0
      Milliseconds: 52
      Minutes: 0
      Seconds: 0
      TotalDays: 6.08990740740741e-07
      TotalHours: 1.46157777777778e-05
      TotalMilliseconds: 52.6168
      TotalMinutes: 0.000876946666666667
      TotalSeconds: 0.0526168
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
    RelativeSpeed: 1.2707530309617
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 19461.46477931
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: SetFromSplat
    Time: 
      Ticks: 529052
      Days: 0
      Hours: 0
      Milliseconds: 52
      Minutes: 0
      Seconds: 0
      TotalDays: 6.12328703703704e-07
      TotalHours: 1.46958888888889e-05
      TotalMilliseconds: 52.9052
      TotalMinutes: 0.000881753333333333
      TotalSeconds: 0.0529052
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.27771820509105
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 19355.3752750202
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Set-Variable
    Time: 
      Ticks: 3418778
      Days: 0
      Hours: 0
      Milliseconds: 341
      Minutes: 0
      Seconds: 0
      TotalDays: 3.95691898148148e-06
      TotalHours: 9.49660555555556e-05
      TotalMilliseconds: 341.8778
      TotalMinutes: 0.00569796333333333
      TotalSeconds: 0.3418778
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
    RelativeSpeed: 8.25672124812829
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 2995.22226947757
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
FileName: Different Ways To Set Many Variables
ClockSpeed: 2793
---
Different Ways To Set Many Variables
------------------------------------
> @2793 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Simple Assignment  |00:00:00.041406|1x           |24730.72/s|
|Multiple Assignment|00:00:00.044579|1.08x        |22970.46/s|
|ExecutionContext   |00:00:00.052616|1.27x        |19461.46/s|
|SetFromSplat       |00:00:00.052905|1.28x        |19355.38/s|
|Set-Variable       |00:00:00.341877|8.26x        |2995.22/s |
