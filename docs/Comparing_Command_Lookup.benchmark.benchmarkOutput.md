---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 6901321
      Days: 0
      Hours: 0
      Milliseconds: 690
      Minutes: 0
      Seconds: 0
      TotalDays: 7.9876400462963e-06
      TotalHours: 0.000191703361111111
      TotalMilliseconds: 690.1321
      TotalMinutes: 0.0115022016666667
      TotalSeconds: 0.6901321
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        FileName: Comparing Command Lookup
        GroupName: Applications
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 144.899795271079
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Applications
  - Technique: Get-Command
    Time: 
      Ticks: 20697951
      Days: 0
      Hours: 0
      Milliseconds: 69
      Minutes: 0
      Seconds: 2
      TotalDays: 2.39559618055556e-05
      TotalHours: 0.000574943083333333
      TotalMilliseconds: 2069.7951
      TotalMinutes: 0.034496585
      TotalSeconds: 2.0697951
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        FileName: Comparing Command Lookup
        GroupName: Applications
    RelativeSpeed: 2.99912886243083
    GroupName: Applications
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 48.3139611259105
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Applications
  - Technique: $executionContext
    Time: 
      Ticks: 76421
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.84502314814815e-08
      TotalHours: 2.12280555555556e-06
      TotalMilliseconds: 7.6421
      TotalMinutes: 0.000127368333333333
      TotalSeconds: 0.0076421
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 13085.4084610251
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
  - Technique: Get-Command
    Time: 
      Ticks: 232870
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.69525462962963e-07
      TotalHours: 6.46861111111111e-06
      TotalMilliseconds: 23.287
      TotalMinutes: 0.000388116666666667
      TotalSeconds: 0.023287
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
    RelativeSpeed: 3.04719906831892
    GroupName: Cmdlets
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 4294.24142225276
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
  - Technique: $executionContext
    Time: 
      Ticks: 77135
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.92766203703704e-08
      TotalHours: 2.14263888888889e-06
      TotalMilliseconds: 7.7135
      TotalMinutes: 0.000128558333333333
      TotalSeconds: 0.0077135
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        FileName: Comparing Command Lookup
        GroupName: Aliases
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 12964.2833992351
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Aliases
  - Technique: Get-Command
    Time: 
      Ticks: 208250
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.41030092592593e-07
      TotalHours: 5.78472222222222e-06
      TotalMilliseconds: 20.825
      TotalMinutes: 0.000347083333333333
      TotalSeconds: 0.020825
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        FileName: Comparing Command Lookup
        GroupName: Aliases
    RelativeSpeed: 2.69981201789071
    GroupName: Aliases
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 4801.92076830732
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Aliases
  - Technique: $executionContext
    Time: 
      Ticks: 71923
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.3244212962963e-08
      TotalHours: 1.99786111111111e-06
      TotalMilliseconds: 7.1923
      TotalMinutes: 0.000119871666666667
      TotalSeconds: 0.0071923
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        FileName: Comparing Command Lookup
        GroupName: Function
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 13903.7581858376
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Function
  - Technique: Get-Command
    Time: 
      Ticks: 190178
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.20113425925926e-07
      TotalHours: 5.28272222222222e-06
      TotalMilliseconds: 19.0178
      TotalMinutes: 0.000316963333333333
      TotalSeconds: 0.0190178
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        FileName: Comparing Command Lookup
        GroupName: Function
    RelativeSpeed: 2.64418892426623
    GroupName: Function
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 5258.23176182313
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Function
  - Technique: $executionContext
    Time: 
      Ticks: 117857
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.36408564814815e-07
      TotalHours: 3.27380555555556e-06
      TotalMilliseconds: 11.7857
      TotalMinutes: 0.000196428333333333
      TotalSeconds: 0.0117857
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        FileName: Comparing Command Lookup
        GroupName: All
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 8484.85876952578
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: All
  - Technique: Get-Command
    Time: 
      Ticks: 194288
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.2487037037037e-07
      TotalHours: 5.39688888888889e-06
      TotalMilliseconds: 19.4288
      TotalMinutes: 0.000323813333333333
      TotalSeconds: 0.0194288
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        FileName: Comparing Command Lookup
        GroupName: All
    RelativeSpeed: 1.64850624061362
    GroupName: All
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 5146.99827060858
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: All
  - Technique: $executionContext
    Time: 
      Ticks: 12024509
      Days: 0
      Hours: 0
      Milliseconds: 202
      Minutes: 0
      Seconds: 1
      TotalDays: 1.3917255787037e-05
      TotalHours: 0.000334014138888889
      TotalMilliseconds: 1202.4509
      TotalMinutes: 0.0200408483333333
      TotalSeconds: 1.2024509
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 83.1634788580557
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
  - Technique: Get-Command
    Time: 
      Ticks: 39397844
      Days: 0
      Hours: 0
      Milliseconds: 939
      Minutes: 0
      Seconds: 3
      TotalDays: 4.55993564814815e-05
      TotalHours: 0.00109438455555556
      TotalMilliseconds: 3939.7844
      TotalMinutes: 0.0656630733333333
      TotalSeconds: 3.9397844
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
    RelativeSpeed: 3.27646176654698
    GroupName: WildcardMiss
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 25.3820995890029
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
FileName: Comparing Command Lookup
ClockSpeed: 2295
---


### Aliases


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.007713|1x           |12964.28/s|
|Get-Command      |100        |00:00:00.020825|2.7x         |4801.92/s |


### All


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.011785|1x           |8484.86/s |
|Get-Command      |100        |00:00:00.019428|1.65x        |5147/s    |


### Applications


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.690132|1x           |144.9/s   |
|Get-Command      |100        |00:00:02.069795|3x           |48.31/s   |


### Cmdlets


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.007642|1x           |13085.41/s|
|Get-Command      |100        |00:00:00.023287|3.05x        |4294.24/s |


### Function


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.007192|1x           |13903.76/s|
|Get-Command      |100        |00:00:00.019017|2.64x        |5258.23/s |


### WildcardMiss


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:01.202450|1x           |83.16/s   |
|Get-Command      |100        |00:00:03.939784|3.28x        |25.38/s   |
