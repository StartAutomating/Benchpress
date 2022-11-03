---
layout: Benchmark

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 528083
      Days: 0
      Hours: 0
      Milliseconds: 52
      Minutes: 0
      Seconds: 0
      TotalDays: 6.11207175925926e-07
      TotalHours: 1.46689722222222e-05
      TotalMilliseconds: 52.8083
      TotalMinutes: 0.000880138333333333
      TotalSeconds: 0.0528083
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
    ClockSpeed: 2394
    FileName: Different Ways To Set Many Variables
    Throughput: 19390.8912046023
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Multiple Assignment
    Time: 
      Ticks: 570386
      Days: 0
      Hours: 0
      Milliseconds: 57
      Minutes: 0
      Seconds: 0
      TotalDays: 6.60168981481481e-07
      TotalHours: 1.58440555555556e-05
      TotalMilliseconds: 57.0386
      TotalMinutes: 0.000950643333333333
      TotalSeconds: 0.0570386
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.08010672564729
    ClockSpeed: 2394
    FileName: Different Ways To Set Many Variables
    Throughput: 17952.7548011347
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: ExecutionContext
    Time: 
      Ticks: 670708
      Days: 0
      Hours: 0
      Milliseconds: 67
      Minutes: 0
      Seconds: 0
      TotalDays: 7.76282407407407e-07
      TotalHours: 1.86307777777778e-05
      TotalMilliseconds: 67.0708
      TotalMinutes: 0.00111784666666667
      TotalSeconds: 0.0670708
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
    RelativeSpeed: 1.27008065020082
    ClockSpeed: 2394
    FileName: Different Ways To Set Many Variables
    Throughput: 15267.4487258241
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: SetFromSplat
    Time: 
      Ticks: 809675
      Days: 0
      Hours: 0
      Milliseconds: 80
      Minutes: 0
      Seconds: 0
      TotalDays: 9.37123842592593e-07
      TotalHours: 2.24909722222222e-05
      TotalMilliseconds: 80.9675
      TotalMinutes: 0.00134945833333333
      TotalSeconds: 0.0809675
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.53323435899281
    ClockSpeed: 2394
    FileName: Different Ways To Set Many Variables
    Throughput: 12647.0497421805
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Set-Variable
    Time: 
      Ticks: 5329656
      Days: 0
      Hours: 0
      Milliseconds: 532
      Minutes: 0
      Seconds: 0
      TotalDays: 6.16858333333333e-06
      TotalHours: 0.000148046
      TotalMilliseconds: 532.9656
      TotalMinutes: 0.00888276
      TotalSeconds: 0.5329656
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
    RelativeSpeed: 10.0924589505816
    ClockSpeed: 2394
    FileName: Different Ways To Set Many Variables
    Throughput: 1921.32475341748
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
FileName: Different Ways To Set Many Variables
ClockSpeed: 2394
---
Different Ways To Set Many Variables
------------------------------------
> @2394 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Simple Assignment  |00:00:00.052808|1x           |19390.89/s|
|Multiple Assignment|00:00:00.057038|1.08x        |17952.75/s|
|ExecutionContext   |00:00:00.067070|1.27x        |15267.45/s|
|SetFromSplat       |00:00:00.080967|1.53x        |12647.05/s|
|Set-Variable       |00:00:00.532965|10.09x       |1921.32/s |
