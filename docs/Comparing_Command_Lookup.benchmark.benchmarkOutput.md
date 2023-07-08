---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 5947845
      Days: 0
      Hours: 0
      Milliseconds: 594
      Minutes: 0
      Seconds: 0
      TotalDays: 6.88407986111111e-06
      TotalHours: 0.000165217916666667
      TotalMilliseconds: 594.7845
      TotalMinutes: 0.009913075
      TotalSeconds: 0.5947845
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        GroupName: Applications
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 168.128120352834
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 18078711
      Days: 0
      Hours: 0
      Milliseconds: 807
      Minutes: 0
      Seconds: 1
      TotalDays: 2.09244340277778e-05
      TotalHours: 0.000502186416666667
      TotalMilliseconds: 1807.8711
      TotalMinutes: 0.030131185
      TotalSeconds: 1.8078711
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        GroupName: Applications
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.0395396988321
    GroupName: Applications
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 55.313678060344
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 56792
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.57314814814815e-08
      TotalHours: 1.57755555555556e-06
      TotalMilliseconds: 5.6792
      TotalMinutes: 9.46533333333333e-05
      TotalSeconds: 0.0056792
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 17608.1138188477
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 123654
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.43118055555556e-07
      TotalHours: 3.43483333333333e-06
      TotalMilliseconds: 12.3654
      TotalMinutes: 0.00020609
      TotalSeconds: 0.0123654
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.1773137061558
    GroupName: Cmdlets
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 8087.08169569929
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 57198
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.62013888888889e-08
      TotalHours: 1.58883333333333e-06
      TotalMilliseconds: 5.7198
      TotalMinutes: 9.533e-05
      TotalSeconds: 0.0057198
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        GroupName: Aliases
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 17483.1287807266
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 186033
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.15315972222222e-07
      TotalHours: 5.16758333333333e-06
      TotalMilliseconds: 18.6033
      TotalMinutes: 0.000310055
      TotalSeconds: 0.0186033
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        GroupName: Aliases
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.25243889646491
    GroupName: Aliases
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 5375.39038772691
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 55703
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.44710648148148e-08
      TotalHours: 1.54730555555556e-06
      TotalMilliseconds: 5.5703
      TotalMinutes: 9.28383333333333e-05
      TotalSeconds: 0.0055703
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        GroupName: Function
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 17952.3544512863
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 125786
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.45585648148148e-07
      TotalHours: 3.49405555555556e-06
      TotalMilliseconds: 12.5786
      TotalMinutes: 0.000209643333333333
      TotalSeconds: 0.0125786
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        GroupName: Function
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.2581548570095
    GroupName: Function
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 7950.01033501343
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 52822
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.11365740740741e-08
      TotalHours: 1.46727777777778e-06
      TotalMilliseconds: 5.2822
      TotalMinutes: 8.80366666666667e-05
      TotalSeconds: 0.0052822
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        GroupName: All
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 18931.5058119723
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 144359
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.67082175925926e-07
      TotalHours: 4.00997222222222e-06
      TotalMilliseconds: 14.4359
      TotalMinutes: 0.000240598333333333
      TotalSeconds: 0.0144359
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        GroupName: All
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.73293324751051
    GroupName: All
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 6927.17461329048
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 11404330
      Days: 0
      Hours: 0
      Milliseconds: 140
      Minutes: 0
      Seconds: 1
      TotalDays: 1.31994560185185e-05
      TotalHours: 0.000316786944444444
      TotalMilliseconds: 1140.433
      TotalMinutes: 0.0190072166666667
      TotalSeconds: 1.140433
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 87.6859929517999
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 35528904
      Days: 0
      Hours: 0
      Milliseconds: 552
      Minutes: 0
      Seconds: 3
      TotalDays: 4.11214166666667e-05
      TotalHours: 0.000986914
      TotalMilliseconds: 3552.8904
      TotalMinutes: 0.05921484
      TotalSeconds: 3.5528904
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.11538722572918
    GroupName: WildcardMiss
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 28.1460976111169
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2594
---


### Aliases


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.005719|1x           |17483.13/s|
|Get-Command      |100        |00:00:00.018603|3.25x        |5375.39/s |


### All


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.005282|1x           |18931.51/s|
|Get-Command      |100        |00:00:00.014435|2.73x        |6927.17/s |


### Applications


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.594784|1x           |168.13/s  |
|Get-Command      |100        |00:00:01.807871|3.04x        |55.31/s   |


### Cmdlets


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.005679|1x           |17608.11/s|
|Get-Command      |100        |00:00:00.012365|2.18x        |8087.08/s |


### Function


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.005570|1x           |17952.35/s|
|Get-Command      |100        |00:00:00.012578|2.26x        |7950.01/s |


### WildcardMiss


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:01.140433|1x           |87.69/s   |
|Get-Command      |100        |00:00:03.552890|3.12x        |28.15/s   |
