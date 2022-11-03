---
layout: Benchmark

Data: 
  - Technique: Simple Assignment
    Time: 
      Ticks: 359829
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.1646875e-07
      TotalHours: 9.99525e-06
      TotalMilliseconds: 35.9829
      TotalMinutes: 0.000599715
      TotalSeconds: 0.0359829
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          $a = 'b'
                          $c = 'd'
                          $e = 'f'
                          $h = 'i'
        RepeatCount: 1024
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 28457.9619763832
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Multiple Assignment
    Time: 
      Ticks: 400527
      Days: 0
      Hours: 0
      Milliseconds: 40
      Minutes: 0
      Seconds: 0
      TotalDays: 4.63572916666667e-07
      TotalHours: 1.112575e-05
      TotalMilliseconds: 40.0527
      TotalMinutes: 0.000667545
      TotalSeconds: 0.0400527
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock:                 $a, $c, $e, $h = 'b','d','f','i'
        RepeatCount: 1024
    RelativeSpeed: 1.11310372426903
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 25566.3163781718
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: ExecutionContext
    Time: 
      Ticks: 489296
      Days: 0
      Hours: 0
      Milliseconds: 48
      Minutes: 0
      Seconds: 0
      TotalDays: 5.66314814814815e-07
      TotalHours: 1.35915555555556e-05
      TotalMilliseconds: 48.9296
      TotalMinutes: 0.000815493333333333
      TotalSeconds: 0.0489296
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          $ExecutionContext.SessionState.PSVariable.Set('a', 'b')
                          $ExecutionContext.SessionState.PSVariable.Set('c', 'd')
                          $ExecutionContext.SessionState.PSVariable.Set('e', 'f')
                          $ExecutionContext.SessionState.PSVariable.Set('h', 'i')
        RepeatCount: 1024
    RelativeSpeed: 1.35980146124965
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 20928.0272064354
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: SetFromSplat
    Time: 
      Ticks: 551434
      Days: 0
      Hours: 0
      Milliseconds: 55
      Minutes: 0
      Seconds: 0
      TotalDays: 6.38233796296296e-07
      TotalHours: 1.53176111111111e-05
      TotalMilliseconds: 55.1434
      TotalMinutes: 0.000919056666666667
      TotalSeconds: 0.0551434
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          foreach ($_ in @{a='b';c='d';e='f';h='i'}.GetEnumerator()) {
                              $ExecutionContext.SessionState.PSVariable.Set($_.Key, $_.Value)        
                          }
        RepeatCount: 1024
    RelativeSpeed: 1.53248904340673
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 18569.7653753668
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
  - Technique: Set-Variable
    Time: 
      Ticks: 3326187
      Days: 0
      Hours: 0
      Milliseconds: 332
      Minutes: 0
      Seconds: 0
      TotalDays: 3.84975347222222e-06
      TotalHours: 9.23940833333333e-05
      TotalMilliseconds: 332.6187
      TotalMinutes: 0.005543645
      TotalSeconds: 0.3326187
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: 
        FileName: Different Ways To Set Many Variables
        ScriptBlock: |
                          Set-Variable a b
                          Set-Variable c d
                          Set-Variable e f
                          Set-Variable h i
        RepeatCount: 1024
    RelativeSpeed: 9.24379913792385
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 3078.60021099235
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: Different Ways To Set Many Variables
FileName: Different Ways To Set Many Variables
ClockSpeed: 2594
---
Different Ways To Set Many Variables
------------------------------------
> @2594 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Simple Assignment  |00:00:00.035982|1x           |28457.96/s|
|Multiple Assignment|00:00:00.040052|1.11x        |25566.32/s|
|ExecutionContext   |00:00:00.048929|1.36x        |20928.03/s|
|SetFromSplat       |00:00:00.055143|1.53x        |18569.77/s|
|Set-Variable       |00:00:00.332618|9.24x        |3078.6/s  |
