---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 7045802
      Days: 0
      Hours: 0
      Milliseconds: 704
      Minutes: 0
      Seconds: 0
      TotalDays: 8.15486342592593e-06
      TotalHours: 0.000195716722222222
      TotalMilliseconds: 704.5802
      TotalMinutes: 0.0117430033333333
      TotalSeconds: 0.7045802
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
    Throughput: 141.928484507512
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 20266446
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 2
      TotalDays: 2.34565347222222e-05
      TotalHours: 0.000562956833333333
      TotalMilliseconds: 2026.6446
      TotalMinutes: 0.03377741
      TotalSeconds: 2.0266446
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        GroupName: Applications
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.87638596713334
    GroupName: Applications
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 49.3426425136405
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 92769
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.07371527777778e-07
      TotalHours: 2.57691666666667e-06
      TotalMilliseconds: 9.2769
      TotalMinutes: 0.000154615
      TotalSeconds: 0.0092769
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
    Throughput: 10779.462967155
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 244836
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.83375e-07
      TotalHours: 6.801e-06
      TotalMilliseconds: 24.4836
      TotalMinutes: 0.00040806
      TotalSeconds: 0.0244836
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.63920059502636
    GroupName: Cmdlets
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 4084.36667810289
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 88750
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02719907407407e-07
      TotalHours: 2.46527777777778e-06
      TotalMilliseconds: 8.875
      TotalMinutes: 0.000147916666666667
      TotalSeconds: 0.008875
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
    Throughput: 11267.6056338028
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 224303
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.59609953703704e-07
      TotalHours: 6.23063888888889e-06
      TotalMilliseconds: 22.4303
      TotalMinutes: 0.000373838333333333
      TotalSeconds: 0.0224303
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        GroupName: Aliases
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.52735774647887
    GroupName: Aliases
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 4458.25512810796
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 83448
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.65833333333333e-08
      TotalHours: 2.318e-06
      TotalMilliseconds: 8.3448
      TotalMinutes: 0.00013908
      TotalSeconds: 0.0083448
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
    Throughput: 11983.5106892915
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 192852
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.23208333333333e-07
      TotalHours: 5.357e-06
      TotalMilliseconds: 19.2852
      TotalMinutes: 0.00032142
      TotalSeconds: 0.0192852
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        GroupName: Function
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.31104400345125
    GroupName: Function
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 5185.32346047747
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 132194
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.53002314814815e-07
      TotalHours: 3.67205555555556e-06
      TotalMilliseconds: 13.2194
      TotalMinutes: 0.000220323333333333
      TotalSeconds: 0.0132194
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
    Throughput: 7564.63984749686
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 228635
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.64623842592593e-07
      TotalHours: 6.35097222222222e-06
      TotalMilliseconds: 22.8635
      TotalMinutes: 0.000381058333333333
      TotalSeconds: 0.0228635
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        GroupName: All
        FileName: Comparing Command Lookup
    RelativeSpeed: 1.72954143153244
    GroupName: All
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 4373.78354145253
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 13038722
      Days: 0
      Hours: 0
      Milliseconds: 303
      Minutes: 0
      Seconds: 1
      TotalDays: 1.50911134259259e-05
      TotalHours: 0.000362186722222222
      TotalMilliseconds: 1303.8722
      TotalMinutes: 0.0217312033333333
      TotalSeconds: 1.3038722
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
    Throughput: 76.6946331089811
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 40742716
      Days: 0
      Hours: 0
      Milliseconds: 74
      Minutes: 0
      Seconds: 4
      TotalDays: 4.71559212962963e-05
      TotalHours: 0.00113174211111111
      TotalMilliseconds: 4074.2716
      TotalMinutes: 0.0679045266666667
      TotalSeconds: 4.0742716
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.12474765548341
    GroupName: WildcardMiss
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 24.5442645502573
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2295
---
Comparing Command Lookup
------------------------
> @2295 Mhz


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.008875|1x           |11267.61/s|
|Get-Command      |00:00:00.022430|2.53x        |4458.26/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.013219|1x           |7564.64/s |
|Get-Command      |00:00:00.022863|1.73x        |4373.78/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.704580|1x           |141.93/s  |
|Get-Command      |00:00:02.026644|2.88x        |49.34/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.009276|1x           |10779.46/s|
|Get-Command      |00:00:00.024483|2.64x        |4084.37/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.008344|1x           |11983.51/s|
|Get-Command      |00:00:00.019285|2.31x        |5185.32/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.303872|1x           |76.69/s   |
|Get-Command      |00:00:04.074271|3.12x        |24.54/s   |
