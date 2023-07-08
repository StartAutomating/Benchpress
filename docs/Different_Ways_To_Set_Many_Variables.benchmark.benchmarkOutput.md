---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 415357
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.80737268518519e-07
      TotalHours: 1.15376944444444e-05
      TotalMilliseconds: 41.5357
      TotalMinutes: 0.000692261666666667
      TotalSeconds: 0.0415357
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
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 24653.4908524474
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Multiple Assignment
    Time: 
      Ticks: 438887
      Days: 0
      Hours: 0
      Milliseconds: 43
      Minutes: 0
      Seconds: 0
      TotalDays: 5.07971064814815e-07
      TotalHours: 1.21913055555556e-05
      TotalMilliseconds: 43.8887
      TotalMinutes: 0.000731478333333333
      TotalSeconds: 0.0438887
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.05665006247638
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 23331.7459847296
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: ExecutionContext
    Time: 
      Ticks: 555422
      Days: 0
      Hours: 0
      Milliseconds: 55
      Minutes: 0
      Seconds: 0
      TotalDays: 6.42849537037037e-07
      TotalHours: 1.54283888888889e-05
      TotalMilliseconds: 55.5422
      TotalMinutes: 0.000925703333333333
      TotalSeconds: 0.0555422
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
    RelativeSpeed: 1.3372159371336
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 18436.4321182812
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: SetFromSplat
    Time: 
      Ticks: 665108
      Days: 0
      Hours: 0
      Milliseconds: 66
      Minutes: 0
      Seconds: 0
      TotalDays: 7.69800925925926e-07
      TotalHours: 1.84752222222222e-05
      TotalMilliseconds: 66.5108
      TotalMinutes: 0.00110851333333333
      TotalSeconds: 0.0665108
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.60129238221578
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 15395.9958382699
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
  - Technique: Set-Variable
    Time: 
      Ticks: 3951269
      Days: 0
      Hours: 0
      Milliseconds: 395
      Minutes: 0
      Seconds: 0
      TotalDays: 4.57322800925926e-06
      TotalHours: 0.000109757472222222
      TotalMilliseconds: 395.1269
      TotalMinutes: 0.00658544833333333
      TotalSeconds: 0.3951269
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
    RelativeSpeed: 9.51294669404873
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 2591.57247962617
    BenchmarkInput: 
      FileName: Different Ways To Set Many Variables
      RepeatCount: 1024
FileName: Different Ways To Set Many Variables
ClockSpeed: 2095
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Simple Assignment  |1024       |00:00:00.041535|1x           |24653.49/s|
|Multiple Assignment|1024       |00:00:00.043888|1.06x        |23331.75/s|
|ExecutionContext   |1024       |00:00:00.055542|1.34x        |18436.43/s|
|SetFromSplat       |1024       |00:00:00.066510|1.6x         |15396/s   |
|Set-Variable       |1024       |00:00:00.395126|9.51x        |2591.57/s |
