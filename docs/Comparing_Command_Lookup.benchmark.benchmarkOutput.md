---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 8158060
      Days: 0
      Hours: 0
      Milliseconds: 815
      Minutes: 0
      Seconds: 0
      TotalDays: 9.44219907407407e-06
      TotalHours: 0.000226612777777778
      TotalMilliseconds: 815.806
      TotalMinutes: 0.0135967666666667
      TotalSeconds: 0.815806
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        GroupName: Applications
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 122.578161964977
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Applications
  - Technique: Get-Command
    Time: 
      Ticks: 22489570
      Days: 0
      Hours: 0
      Milliseconds: 248
      Minutes: 0
      Seconds: 2
      TotalDays: 2.60295949074074e-05
      TotalHours: 0.000624710277777778
      TotalMilliseconds: 2248.957
      TotalMinutes: 0.0374826166666667
      TotalSeconds: 2.248957
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        GroupName: Applications
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.75673015398269
    GroupName: Applications
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 44.4650564683985
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Applications
  - Technique: $executionContext
    Time: 
      Ticks: 105792
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.22444444444444e-07
      TotalHours: 2.93866666666667e-06
      TotalMilliseconds: 10.5792
      TotalMinutes: 0.00017632
      TotalSeconds: 0.0105792
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 9452.51058681186
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
  - Technique: Get-Command
    Time: 
      Ticks: 198596
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.29856481481481e-07
      TotalHours: 5.51655555555556e-06
      TotalMilliseconds: 19.8596
      TotalMinutes: 0.000330993333333333
      TotalSeconds: 0.0198596
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
    RelativeSpeed: 1.87723079249849
    GroupName: Cmdlets
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 5035.34814397067
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
  - Technique: $executionContext
    Time: 
      Ticks: 157691
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.82512731481481e-07
      TotalHours: 4.38030555555556e-06
      TotalMilliseconds: 15.7691
      TotalMinutes: 0.000262818333333333
      TotalSeconds: 0.0157691
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        GroupName: Aliases
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 6341.51600281563
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Aliases
  - Technique: Get-Command
    Time: 
      Ticks: 275941
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.19376157407407e-07
      TotalHours: 7.66502777777778e-06
      TotalMilliseconds: 27.5941
      TotalMinutes: 0.000459901666666667
      TotalSeconds: 0.0275941
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        GroupName: Aliases
        FileName: Comparing Command Lookup
    RelativeSpeed: 1.74988426733295
    GroupName: Aliases
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 3623.96309355986
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Aliases
  - Technique: $executionContext
    Time: 
      Ticks: 92717
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.07311342592593e-07
      TotalHours: 2.57547222222222e-06
      TotalMilliseconds: 9.2717
      TotalMinutes: 0.000154528333333333
      TotalSeconds: 0.0092717
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        GroupName: Function
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 10785.5085906576
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Function
  - Technique: Get-Command
    Time: 
      Ticks: 213708
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.47347222222222e-07
      TotalHours: 5.93633333333333e-06
      TotalMilliseconds: 21.3708
      TotalMinutes: 0.00035618
      TotalSeconds: 0.0213708
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        GroupName: Function
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.30494946989225
    GroupName: Function
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 4679.28201096824
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Function
  - Technique: $executionContext
    Time: 
      Ticks: 84014
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.72384259259259e-08
      TotalHours: 2.33372222222222e-06
      TotalMilliseconds: 8.4014
      TotalMinutes: 0.000140023333333333
      TotalSeconds: 0.0084014
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        GroupName: All
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 11902.7781084105
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: All
  - Technique: Get-Command
    Time: 
      Ticks: 228149
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.64061342592593e-07
      TotalHours: 6.33747222222222e-06
      TotalMilliseconds: 22.8149
      TotalMinutes: 0.000380248333333333
      TotalSeconds: 0.0228149
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        GroupName: All
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.71560692265575
    GroupName: All
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 4383.10051764417
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: All
  - Technique: $executionContext
    Time: 
      Ticks: 14046925
      Days: 0
      Hours: 0
      Milliseconds: 404
      Minutes: 0
      Seconds: 1
      TotalDays: 1.62580150462963e-05
      TotalHours: 0.000390192361111111
      TotalMilliseconds: 1404.6925
      TotalMinutes: 0.0234115416666667
      TotalSeconds: 1.4046925
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 71.1899579445324
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
  - Technique: Get-Command
    Time: 
      Ticks: 46329966
      Days: 0
      Hours: 0
      Milliseconds: 632
      Minutes: 0
      Seconds: 4
      TotalDays: 5.36226458333333e-05
      TotalHours: 0.0012869435
      TotalMilliseconds: 4632.9966
      TotalMinutes: 0.07721661
      TotalSeconds: 4.6329966
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.29822833111161
    GroupName: WildcardMiss
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 21.5843024793068
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
FileName: Comparing Command Lookup
ClockSpeed: 2295
---


### Aliases


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.015769|1x           |6341.52/s |
|Get-Command      |100        |00:00:00.027594|1.75x        |3623.96/s |


### All


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.008401|1x           |11902.78/s|
|Get-Command      |100        |00:00:00.022814|2.72x        |4383.1/s  |


### Applications


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.815806|1x           |122.58/s  |
|Get-Command      |100        |00:00:02.248957|2.76x        |44.47/s   |


### Cmdlets


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.010579|1x           |9452.51/s |
|Get-Command      |100        |00:00:00.019859|1.88x        |5035.35/s |


### Function


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.009271|1x           |10785.51/s|
|Get-Command      |100        |00:00:00.021370|2.3x         |4679.28/s |


### WildcardMiss


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:01.404692|1x           |71.19/s   |
|Get-Command      |100        |00:00:04.632996|3.3x         |21.58/s   |
