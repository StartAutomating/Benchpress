---
layout: Benchmark

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 411916
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.7675462962963e-07
      TotalHours: 1.14421111111111e-05
      TotalMilliseconds: 41.1916
      TotalMinutes: 0.000686526666666667
      TotalSeconds: 0.0411916
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
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    Throughput: 24859.4373610154
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Multiple Assignment
    Time: 
      Ticks: 449133
      Days: 0
      Hours: 0
      Milliseconds: 44
      Minutes: 0
      Seconds: 0
      TotalDays: 5.19829861111111e-07
      TotalHours: 1.24759166666667e-05
      TotalMilliseconds: 44.9133
      TotalMinutes: 0.000748555
      TotalSeconds: 0.0449133
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
    RelativeSpeed: 1.09035094533837
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    Throughput: 22799.4825586185
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: ExecutionContext
    Time: 
      Ticks: 557924
      Days: 0
      Hours: 0
      Milliseconds: 55
      Minutes: 0
      Seconds: 0
      TotalDays: 6.4574537037037e-07
      TotalHours: 1.54978888888889e-05
      TotalMilliseconds: 55.7924
      TotalMinutes: 0.000929873333333333
      TotalSeconds: 0.0557924
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
    RelativeSpeed: 1.35446061818429
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    Throughput: 18353.7542747758
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: SetFromSplat
    Time: 
      Ticks: 638630
      Days: 0
      Hours: 0
      Milliseconds: 63
      Minutes: 0
      Seconds: 0
      TotalDays: 7.39155092592593e-07
      TotalHours: 1.77397222222222e-05
      TotalMilliseconds: 63.863
      TotalMinutes: 0.00106438333333333
      TotalSeconds: 0.063863
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
    RelativeSpeed: 1.55038891424465
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    Throughput: 16034.3234736859
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Set-Variable
    Time: 
      Ticks: 3901837
      Days: 0
      Hours: 0
      Milliseconds: 390
      Minutes: 0
      Seconds: 0
      TotalDays: 4.5160150462963e-06
      TotalHours: 0.000108384361111111
      TotalMilliseconds: 390.1837
      TotalMinutes: 0.00650306166666667
      TotalSeconds: 0.3901837
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
    RelativeSpeed: 9.47240942328047
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    Throughput: 2624.40486365781
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
FileName: Different Ways To Set Many Variables
ClockSpeed: 2095
---
Different Ways To Set Many Variables
------------------------------------
> @2095 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Simple Assignment  |00:00:00.041191|1x           |24859.44/s|
|Multiple Assignment|00:00:00.044913|1.09x        |22799.48/s|
|ExecutionContext   |00:00:00.055792|1.35x        |18353.75/s|
|SetFromSplat       |00:00:00.063863|1.55x        |16034.32/s|
|Set-Variable       |00:00:00.390183|9.47x        |2624.4/s  |
