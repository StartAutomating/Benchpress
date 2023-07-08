---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 6161850
      Days: 0
      Hours: 0
      Milliseconds: 616
      Minutes: 0
      Seconds: 0
      TotalDays: 7.13177083333333e-06
      TotalHours: 0.0001711625
      TotalMilliseconds: 616.185
      TotalMinutes: 0.01026975
      TotalSeconds: 0.616185
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        GroupName: Applications
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 162.288922969563
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 18306104
      Days: 0
      Hours: 0
      Milliseconds: 830
      Minutes: 0
      Seconds: 1
      TotalDays: 2.11876203703704e-05
      TotalHours: 0.000508502888888889
      TotalMilliseconds: 1830.6104
      TotalMinutes: 0.0305101733333333
      TotalSeconds: 1.8306104
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        GroupName: Applications
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.9708779019288
    GroupName: Applications
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 54.6265879402848
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 54233
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.27696759259259e-08
      TotalHours: 1.50647222222222e-06
      TotalMilliseconds: 5.4233
      TotalMinutes: 9.03883333333333e-05
      TotalSeconds: 0.0054233
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 18438.9578301034
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 121608
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.4075e-07
      TotalHours: 3.378e-06
      TotalMilliseconds: 12.1608
      TotalMinutes: 0.00020268
      TotalSeconds: 0.0121608
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.24232478380322
    GroupName: Cmdlets
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 8223.14321426222
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 53877
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.23576388888889e-08
      TotalHours: 1.49658333333333e-06
      TotalMilliseconds: 5.3877
      TotalMinutes: 8.9795e-05
      TotalSeconds: 0.0053877
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        GroupName: Aliases
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 18560.7958869276
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 144651
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.67420138888889e-07
      TotalHours: 4.01808333333333e-06
      TotalMilliseconds: 14.4651
      TotalMinutes: 0.000241085
      TotalSeconds: 0.0144651
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        GroupName: Aliases
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.68483768583997
    GroupName: Aliases
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 6913.19105986132
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 55919
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.47210648148148e-08
      TotalHours: 1.55330555555556e-06
      TotalMilliseconds: 5.5919
      TotalMinutes: 9.31983333333333e-05
      TotalSeconds: 0.0055919
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        GroupName: Function
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 17883.0093528139
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 120724
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.39726851851852e-07
      TotalHours: 3.35344444444444e-06
      TotalMilliseconds: 12.0724
      TotalMinutes: 0.000201206666666667
      TotalSeconds: 0.0120724
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        GroupName: Function
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.1589084211091
    GroupName: Function
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 8283.35707895696
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 49483
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.72719907407407e-08
      TotalHours: 1.37452777777778e-06
      TotalMilliseconds: 4.9483
      TotalMinutes: 8.24716666666667e-05
      TotalSeconds: 0.0049483
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        GroupName: All
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 20208.9606531536
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 135260
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.56550925925926e-07
      TotalHours: 3.75722222222222e-06
      TotalMilliseconds: 13.526
      TotalMinutes: 0.000225433333333333
      TotalSeconds: 0.013526
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        GroupName: All
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.73346401794556
    GroupName: All
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 7393.16871211001
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 11024631
      Days: 0
      Hours: 0
      Milliseconds: 102
      Minutes: 0
      Seconds: 1
      TotalDays: 1.27599895833333e-05
      TotalHours: 0.00030623975
      TotalMilliseconds: 1102.4631
      TotalMinutes: 0.018374385
      TotalSeconds: 1.1024631
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 90.7059837195458
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 33322968
      Days: 0
      Hours: 0
      Milliseconds: 332
      Minutes: 0
      Seconds: 3
      TotalDays: 3.856825e-05
      TotalHours: 0.000925638
      TotalMilliseconds: 3332.2968
      TotalMinutes: 0.05553828
      TotalSeconds: 3.3322968
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.02259259289495
    GroupName: WildcardMiss
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 30.009331701786
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2793
---


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005387|1x           |18560.8/s |
|Get-Command      |00:00:00.014465|2.68x        |6913.19/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.004948|1x           |20208.96/s|
|Get-Command      |00:00:00.013526|2.73x        |7393.17/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.616185|1x           |162.29/s  |
|Get-Command      |00:00:01.830610|2.97x        |54.63/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005423|1x           |18438.96/s|
|Get-Command      |00:00:00.012160|2.24x        |8223.14/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005591|1x           |17883.01/s|
|Get-Command      |00:00:00.012072|2.16x        |8283.36/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.102463|1x           |90.71/s   |
|Get-Command      |00:00:03.332296|3.02x        |30.01/s   |
