---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 7336610
      Days: 0
      Hours: 0
      Milliseconds: 733
      Minutes: 0
      Seconds: 0
      TotalDays: 8.49144675925926e-06
      TotalHours: 0.000203794722222222
      TotalMilliseconds: 733.661
      TotalMinutes: 0.0122276833333333
      TotalSeconds: 0.733661
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        GroupName: Applications
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 136.302733823932
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Applications
  - Technique: Get-Command
    Time: 
      Ticks: 22171905
      Days: 0
      Hours: 0
      Milliseconds: 217
      Minutes: 0
      Seconds: 2
      TotalDays: 2.56619270833333e-05
      TotalHours: 0.00061588625
      TotalMilliseconds: 2217.1905
      TotalMinutes: 0.036953175
      TotalSeconds: 2.2171905
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        GroupName: Applications
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
    RelativeSpeed: 3.02209126558451
    GroupName: Applications
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 45.1021236109392
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Applications
  - Technique: $executionContext
    Time: 
      Ticks: 68001
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.87048611111111e-08
      TotalHours: 1.88891666666667e-06
      TotalMilliseconds: 6.8001
      TotalMinutes: 0.000113335
      TotalSeconds: 0.0068001
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 14705.6660931457
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
  - Technique: Get-Command
    Time: 
      Ticks: 146874
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.69993055555556e-07
      TotalHours: 4.07983333333333e-06
      TotalMilliseconds: 14.6874
      TotalMinutes: 0.00024479
      TotalSeconds: 0.0146874
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
    RelativeSpeed: 2.15988000176468
    GroupName: Cmdlets
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 6808.5569944306
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
  - Technique: $executionContext
    Time: 
      Ticks: 70040
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.10648148148148e-08
      TotalHours: 1.94555555555556e-06
      TotalMilliseconds: 7.004
      TotalMinutes: 0.000116733333333333
      TotalSeconds: 0.007004
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        GroupName: Aliases
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 14277.5556824672
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Aliases
  - Technique: Get-Command
    Time: 
      Ticks: 223488
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.58666666666667e-07
      TotalHours: 6.208e-06
      TotalMilliseconds: 22.3488
      TotalMinutes: 0.00037248
      TotalSeconds: 0.0223488
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        GroupName: Aliases
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
    RelativeSpeed: 3.19086236436322
    GroupName: Aliases
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 4474.51317296678
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Aliases
  - Technique: $executionContext
    Time: 
      Ticks: 69741
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 8.071875e-08
      TotalHours: 1.93725e-06
      TotalMilliseconds: 6.9741
      TotalMinutes: 0.000116235
      TotalSeconds: 0.0069741
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        GroupName: Function
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 14338.7677263016
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Function
  - Technique: Get-Command
    Time: 
      Ticks: 152170
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.76122685185185e-07
      TotalHours: 4.22694444444444e-06
      TotalMilliseconds: 15.217
      TotalMinutes: 0.000253616666666667
      TotalSeconds: 0.015217
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        GroupName: Function
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
    RelativeSpeed: 2.18193028491131
    GroupName: Function
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 6571.59755536571
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Function
  - Technique: $executionContext
    Time: 
      Ticks: 64892
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.51064814814815e-08
      TotalHours: 1.80255555555556e-06
      TotalMilliseconds: 6.4892
      TotalMinutes: 0.000108153333333333
      TotalSeconds: 0.0064892
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        GroupName: All
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 15410.2200579424
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: All
  - Technique: Get-Command
    Time: 
      Ticks: 174631
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.02119212962963e-07
      TotalHours: 4.85086111111111e-06
      TotalMilliseconds: 17.4631
      TotalMinutes: 0.000291051666666667
      TotalSeconds: 0.0174631
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        GroupName: All
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
    RelativeSpeed: 2.69110213893854
    GroupName: All
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 5726.36015369551
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: All
  - Technique: $executionContext
    Time: 
      Ticks: 14112920
      Days: 0
      Hours: 0
      Milliseconds: 411
      Minutes: 0
      Seconds: 1
      TotalDays: 1.63343981481481e-05
      TotalHours: 0.000392025555555556
      TotalMilliseconds: 1411.292
      TotalMinutes: 0.0235215333333333
      TotalSeconds: 1.411292
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 70.8570586384674
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
  - Technique: Get-Command
    Time: 
      Ticks: 43896283
      Days: 0
      Hours: 0
      Milliseconds: 389
      Minutes: 0
      Seconds: 4
      TotalDays: 5.08058831018519e-05
      TotalHours: 0.00121934119444444
      TotalMilliseconds: 4389.6283
      TotalMinutes: 0.0731604716666667
      TotalSeconds: 4.3896283
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
    RelativeSpeed: 3.11036149854176
    GroupName: WildcardMiss
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 22.7809721383471
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
FileName: Comparing Command Lookup
ClockSpeed: 2095
---


### Aliases


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.007004|1x           |14277.56/s|
|Get-Command      |100        |00:00:00.022348|3.19x        |4474.51/s |


### All


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.006489|1x           |15410.22/s|
|Get-Command      |100        |00:00:00.017463|2.69x        |5726.36/s |


### Applications


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.733661|1x           |136.3/s   |
|Get-Command      |100        |00:00:02.217190|3.02x        |45.1/s    |


### Cmdlets


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.006800|1x           |14705.67/s|
|Get-Command      |100        |00:00:00.014687|2.16x        |6808.56/s |


### Function


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.006974|1x           |14338.77/s|
|Get-Command      |100        |00:00:00.015217|2.18x        |6571.6/s  |


### WildcardMiss


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:01.411292|1x           |70.86/s   |
|Get-Command      |100        |00:00:04.389628|3.11x        |22.78/s   |
