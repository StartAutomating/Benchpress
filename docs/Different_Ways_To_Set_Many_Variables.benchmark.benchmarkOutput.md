---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 419249
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.85241898148148e-07
      TotalHours: 1.16458055555556e-05
      TotalMilliseconds: 41.9249
      TotalMinutes: 0.000698748333333333
      TotalSeconds: 0.0419249
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
    RepeatCount: 1024
    Throughput: 24424.6259382849
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Multiple Assignment
    Time: 
      Ticks: 439108
      Days: 0
      Hours: 0
      Milliseconds: 43
      Minutes: 0
      Seconds: 0
      TotalDays: 5.08226851851852e-07
      TotalHours: 1.21974444444444e-05
      TotalMilliseconds: 43.9108
      TotalMinutes: 0.000731846666666667
      TotalSeconds: 0.0439108
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
    RelativeSpeed: 1.04736803188559
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 23320.0032793755
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: ExecutionContext
    Time: 
      Ticks: 564769
      Days: 0
      Hours: 0
      Milliseconds: 56
      Minutes: 0
      Seconds: 0
      TotalDays: 6.53667824074074e-07
      TotalHours: 1.56880277777778e-05
      TotalMilliseconds: 56.4769
      TotalMinutes: 0.000941281666666667
      TotalSeconds: 0.0564769
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
    RelativeSpeed: 1.34709683266985
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 18131.3067820649
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: SetFromSplat
    Time: 
      Ticks: 655593
      Days: 0
      Hours: 0
      Milliseconds: 65
      Minutes: 0
      Seconds: 0
      TotalDays: 7.58788194444444e-07
      TotalHours: 1.82109166666667e-05
      TotalMilliseconds: 65.5593
      TotalMinutes: 0.001092655
      TotalSeconds: 0.0655593
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
    RelativeSpeed: 1.56373181569902
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 15619.4468214273
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Set-Variable
    Time: 
      Ticks: 4005627
      Days: 0
      Hours: 0
      Milliseconds: 400
      Minutes: 0
      Seconds: 0
      TotalDays: 4.63614236111111e-06
      TotalHours: 0.000111267416666667
      TotalMilliseconds: 400.5627
      TotalMinutes: 0.006676045
      TotalSeconds: 0.4005627
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
    RelativeSpeed: 9.55429112532171
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 2556.40377898391
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
FileName: Different Ways To Set Many Variables
ClockSpeed: 2095
---




|Technique          |RepeatCount|Time           |RelativeSpeed|Throughput|
|-------------------|-----------|---------------|-------------|----------|
|Simple Assignment  |1024       |00:00:00.041924|1x           |24424.63/s|
|Multiple Assignment|1024       |00:00:00.043910|1.05x        |23320/s   |
|ExecutionContext   |1024       |00:00:00.056476|1.35x        |18131.31/s|
|SetFromSplat       |1024       |00:00:00.065559|1.56x        |15619.45/s|
|Set-Variable       |1024       |00:00:00.400562|9.55x        |2556.4/s  |
