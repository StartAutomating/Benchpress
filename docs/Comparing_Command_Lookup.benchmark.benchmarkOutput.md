---
layout: Benchmark

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 7554191
      Days: 0
      Hours: 0
      Milliseconds: 755
      Minutes: 0
      Seconds: 0
      TotalDays: 8.74327662037037e-06
      TotalHours: 0.000209838638888889
      TotalMilliseconds: 755.4191
      TotalMinutes: 0.0125903183333333
      TotalSeconds: 0.7554191
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        GroupName: Applications
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2394
    FileName: Comparing Command Lookup
    Throughput: 132.376848824712
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 19759313
      Days: 0
      Hours: 0
      Milliseconds: 975
      Minutes: 0
      Seconds: 1
      TotalDays: 2.28695752314815e-05
      TotalHours: 0.000548869805555556
      TotalMilliseconds: 1975.9313
      TotalMinutes: 0.0329321883333333
      TotalSeconds: 1.9759313
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        GroupName: Applications
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.61567558988117
    GroupName: Applications
    ClockSpeed: 2394
    FileName: Comparing Command Lookup
    Throughput: 50.6090469845789
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 87163
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.00883101851852e-07
      TotalHours: 2.42119444444444e-06
      TotalMilliseconds: 8.7163
      TotalMinutes: 0.000145271666666667
      TotalSeconds: 0.0087163
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2394
    FileName: Comparing Command Lookup
    Throughput: 11472.7579362803
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 271940
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.1474537037037e-07
      TotalHours: 7.55388888888889e-06
      TotalMilliseconds: 27.194
      TotalMinutes: 0.000453233333333333
      TotalSeconds: 0.027194
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.11990179319207
    GroupName: Cmdlets
    ClockSpeed: 2394
    FileName: Comparing Command Lookup
    Throughput: 3677.28175332794
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 85093
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.84872685185185e-08
      TotalHours: 2.36369444444444e-06
      TotalMilliseconds: 8.5093
      TotalMinutes: 0.000141821666666667
      TotalSeconds: 0.0085093
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        GroupName: Aliases
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2394
    FileName: Comparing Command Lookup
    Throughput: 11751.8479780946
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 225271
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.60730324074074e-07
      TotalHours: 6.25752777777778e-06
      TotalMilliseconds: 22.5271
      TotalMinutes: 0.000375451666666667
      TotalSeconds: 0.0225271
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        GroupName: Aliases
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.64735054587334
    GroupName: Aliases
    ClockSpeed: 2394
    FileName: Comparing Command Lookup
    Throughput: 4439.09779776358
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 86773
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.00431712962963e-07
      TotalHours: 2.41036111111111e-06
      TotalMilliseconds: 8.6773
      TotalMinutes: 0.000144621666666667
      TotalSeconds: 0.0086773
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        GroupName: Function
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2394
    FileName: Comparing Command Lookup
    Throughput: 11524.3220817535
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 220485
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.55190972222222e-07
      TotalHours: 6.12458333333333e-06
      TotalMilliseconds: 22.0485
      TotalMinutes: 0.000367475
      TotalSeconds: 0.0220485
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        GroupName: Function
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.54094015419543
    GroupName: Function
    ClockSpeed: 2394
    FileName: Comparing Command Lookup
    Throughput: 4535.45592670703
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 83718
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.68958333333333e-08
      TotalHours: 2.3255e-06
      TotalMilliseconds: 8.3718
      TotalMinutes: 0.00013953
      TotalSeconds: 0.0083718
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        GroupName: All
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2394
    FileName: Comparing Command Lookup
    Throughput: 11944.8625146325
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 211178
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.44418981481482e-07
      TotalHours: 5.86605555555556e-06
      TotalMilliseconds: 21.1178
      TotalMinutes: 0.000351963333333333
      TotalSeconds: 0.0211178
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        GroupName: All
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.52249217611505
    GroupName: All
    ClockSpeed: 2394
    FileName: Comparing Command Lookup
    Throughput: 4735.34174961407
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 12509656
      Days: 0
      Hours: 0
      Milliseconds: 250
      Minutes: 0
      Seconds: 1
      TotalDays: 1.44787685185185e-05
      TotalHours: 0.000347490444444444
      TotalMilliseconds: 1250.9656
      TotalMinutes: 0.0208494266666667
      TotalSeconds: 1.2509656
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2394
    FileName: Comparing Command Lookup
    Throughput: 79.9382493011798
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 42508125
      Days: 0
      Hours: 0
      Milliseconds: 250
      Minutes: 0
      Seconds: 4
      TotalDays: 4.919921875e-05
      TotalHours: 0.00118078125
      TotalMilliseconds: 4250.8125
      TotalMinutes: 0.070846875
      TotalSeconds: 4.2508125
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.39802509357571
    GroupName: WildcardMiss
    ClockSpeed: 2394
    FileName: Comparing Command Lookup
    Throughput: 23.5249143546087
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2394
---
Comparing Command Lookup
------------------------
> @2394 Mhz


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.008509|1x           |11751.85/s|
|Get-Command      |00:00:00.022527|2.65x        |4439.1/s  |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.008371|1x           |11944.86/s|
|Get-Command      |00:00:00.021117|2.52x        |4735.34/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.755419|1x           |132.38/s  |
|Get-Command      |00:00:01.975931|2.62x        |50.61/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.008716|1x           |11472.76/s|
|Get-Command      |00:00:00.027194|3.12x        |3677.28/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.008677|1x           |11524.32/s|
|Get-Command      |00:00:00.022048|2.54x        |4535.46/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.250965|1x           |79.94/s   |
|Get-Command      |00:00:04.250812|3.4x         |23.52/s   |
