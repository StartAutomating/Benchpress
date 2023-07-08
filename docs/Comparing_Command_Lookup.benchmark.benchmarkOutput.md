---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 6022908
      Days: 0
      Hours: 0
      Milliseconds: 602
      Minutes: 0
      Seconds: 0
      TotalDays: 6.97095833333333e-06
      TotalHours: 0.000167303
      TotalMilliseconds: 602.2908
      TotalMinutes: 0.01003818
      TotalSeconds: 0.6022908
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Applications
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 166.032753613371
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 18254426
      Days: 0
      Hours: 0
      Milliseconds: 825
      Minutes: 0
      Seconds: 1
      TotalDays: 2.11278078703704e-05
      TotalHours: 0.000507067388888889
      TotalMilliseconds: 1825.4426
      TotalMinutes: 0.0304240433333333
      TotalSeconds: 1.8254426
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Applications
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
    RelativeSpeed: 3.03083261441151
    GroupName: Applications
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 54.7812349728225
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 57919
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.70358796296296e-08
      TotalHours: 1.60886111111111e-06
      TotalMilliseconds: 5.7919
      TotalMinutes: 9.65316666666667e-05
      TotalSeconds: 0.0057919
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 17265.4914622145
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 120944
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.39981481481481e-07
      TotalHours: 3.35955555555556e-06
      TotalMilliseconds: 12.0944
      TotalMinutes: 0.000201573333333333
      TotalSeconds: 0.0120944
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
    RelativeSpeed: 2.08815759940607
    GroupName: Cmdlets
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 8268.28945627729
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 58413
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.76076388888889e-08
      TotalHours: 1.62258333333333e-06
      TotalMilliseconds: 5.8413
      TotalMinutes: 9.7355e-05
      TotalSeconds: 0.0058413
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Aliases
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 17119.4768287881
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 181563
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.10142361111111e-07
      TotalHours: 5.04341666666667e-06
      TotalMilliseconds: 18.1563
      TotalMinutes: 0.000302605
      TotalSeconds: 0.0181563
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Aliases
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
    RelativeSpeed: 3.10826357146526
    GroupName: Aliases
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 5507.73009919422
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 57148
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.61435185185185e-08
      TotalHours: 1.58744444444444e-06
      TotalMilliseconds: 5.7148
      TotalMinutes: 9.52466666666667e-05
      TotalSeconds: 0.0057148
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Function
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 17498.4251417372
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 123507
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.42947916666667e-07
      TotalHours: 3.43075e-06
      TotalMilliseconds: 12.3507
      TotalMinutes: 0.000205845
      TotalSeconds: 0.0123507
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Function
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
    RelativeSpeed: 2.16117799398054
    GroupName: Function
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 8096.70706923494
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 81110
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.38773148148148e-08
      TotalHours: 2.25305555555556e-06
      TotalMilliseconds: 8.111
      TotalMinutes: 0.000135183333333333
      TotalSeconds: 0.008111
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: All
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 12328.9360128221
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 142491
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.64920138888889e-07
      TotalHours: 3.95808333333333e-06
      TotalMilliseconds: 14.2491
      TotalMinutes: 0.000237485
      TotalSeconds: 0.0142491
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: All
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
    RelativeSpeed: 1.75676242140303
    GroupName: All
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 7017.98710093971
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 11698147
      Days: 0
      Hours: 0
      Milliseconds: 169
      Minutes: 0
      Seconds: 1
      TotalDays: 1.35395219907407e-05
      TotalHours: 0.000324948527777778
      TotalMilliseconds: 1169.8147
      TotalMinutes: 0.0194969116666667
      TotalSeconds: 1.1698147
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 85.4836240303699
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 35639728
      Days: 0
      Hours: 0
      Milliseconds: 563
      Minutes: 0
      Seconds: 3
      TotalDays: 4.12496851851852e-05
      TotalHours: 0.000989992444444444
      TotalMilliseconds: 3563.9728
      TotalMinutes: 0.0593995466666667
      TotalSeconds: 3.5639728
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
    RelativeSpeed: 3.04661310889665
    GroupName: WildcardMiss
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 28.0585755312162
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2594
---


### Aliases


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.005841|1x           |17119.48/s|
|Get-Command      |100        |00:00:00.018156|3.11x        |5507.73/s |


### All


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.008111|1x           |12328.94/s|
|Get-Command      |100        |00:00:00.014249|1.76x        |7017.99/s |


### Applications


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.602290|1x           |166.03/s  |
|Get-Command      |100        |00:00:01.825442|3.03x        |54.78/s   |


### Cmdlets


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.005791|1x           |17265.49/s|
|Get-Command      |100        |00:00:00.012094|2.09x        |8268.29/s |


### Function


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.005714|1x           |17498.43/s|
|Get-Command      |100        |00:00:00.012350|2.16x        |8096.71/s |


### WildcardMiss


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:01.169814|1x           |85.48/s   |
|Get-Command      |100        |00:00:03.563972|3.05x        |28.06/s   |
