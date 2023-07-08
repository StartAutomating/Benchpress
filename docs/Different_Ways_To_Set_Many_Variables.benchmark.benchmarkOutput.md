---
layout: Benchmark
title: Different Ways To Set Many Variables

Data: 
  - Technique: Multiple Assignment
    Time: 
      Ticks: 324821
      Days: 0
      Hours: 0
      Milliseconds: 32
      Minutes: 0
      Seconds: 0
      TotalDays: 3.75950231481481e-07
      TotalHours: 9.02280555555556e-06
      TotalMilliseconds: 32.4821
      TotalMinutes: 0.000541368333333333
      TotalSeconds: 0.0324821
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 31525.0553381709
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Simple Assignment
    Time: 
      Ticks: 350062
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.05164351851852e-07
      TotalHours: 9.72394444444444e-06
      TotalMilliseconds: 35.0062
      TotalMinutes: 0.000583436666666667
      TotalSeconds: 0.0350062
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
    RelativeSpeed: 1.07770741423738
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 29251.9610811799
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: ExecutionContext
    Time: 
      Ticks: 439944
      Days: 0
      Hours: 0
      Milliseconds: 43
      Minutes: 0
      Seconds: 0
      TotalDays: 5.09194444444444e-07
      TotalHours: 1.22206666666667e-05
      TotalMilliseconds: 43.9944
      TotalMinutes: 0.00073324
      TotalSeconds: 0.0439944
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
    RelativeSpeed: 1.35441981891565
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 23275.689633226
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: SetFromSplat
    Time: 
      Ticks: 510634
      Days: 0
      Hours: 0
      Milliseconds: 51
      Minutes: 0
      Seconds: 0
      TotalDays: 5.91011574074074e-07
      TotalHours: 1.41842777777778e-05
      TotalMilliseconds: 51.0634
      TotalMinutes: 0.000851056666666667
      TotalSeconds: 0.0510634
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        FileName: Different Ways To Set Many Variables
    RelativeSpeed: 1.57204737378433
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 20053.5021169761
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Set-Variable
    Time: 
      Ticks: 3237180
      Days: 0
      Hours: 0
      Milliseconds: 323
      Minutes: 0
      Seconds: 0
      TotalDays: 3.74673611111111e-06
      TotalHours: 8.99216666666667e-05
      TotalMilliseconds: 323.718
      TotalMinutes: 0.0053953
      TotalSeconds: 0.323718
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
    RelativeSpeed: 9.96604283590039
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    RepeatCount: 1024
    Throughput: 3163.24702364404
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
FileName: Different Ways To Set Many Variables
ClockSpeed: 2793
---


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Multiple Assignment|00:00:00.032482|1x           |31525.06/s|
|Simple Assignment  |00:00:00.035006|1.08x        |29251.96/s|
|ExecutionContext   |00:00:00.043994|1.35x        |23275.69/s|
|SetFromSplat       |00:00:00.051063|1.57x        |20053.5/s |
|Set-Variable       |00:00:00.323718|9.97x        |3163.25/s |
