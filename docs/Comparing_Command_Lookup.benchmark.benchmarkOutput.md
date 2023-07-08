---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 6444567
      Days: 0
      Hours: 0
      Milliseconds: 644
      Minutes: 0
      Seconds: 0
      TotalDays: 7.45898958333333e-06
      TotalHours: 0.00017901575
      TotalMilliseconds: 644.4567
      TotalMinutes: 0.010740945
      TotalSeconds: 0.6444567
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Applications
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 155.169462897973
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 19983585
      Days: 0
      Hours: 0
      Milliseconds: 998
      Minutes: 0
      Seconds: 1
      TotalDays: 2.31291493055556e-05
      TotalHours: 0.000555099583333333
      TotalMilliseconds: 1998.3585
      TotalMinutes: 0.033305975
      TotalSeconds: 1.9983585
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Applications
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
    RelativeSpeed: 3.10084215122599
    GroupName: Applications
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 50.0410712091949
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 59020
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.83101851851852e-08
      TotalHours: 1.63944444444444e-06
      TotalMilliseconds: 5.902
      TotalMinutes: 9.83666666666667e-05
      TotalSeconds: 0.005902
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 16943.4090138936
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 132628
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.5350462962963e-07
      TotalHours: 3.68411111111111e-06
      TotalMilliseconds: 13.2628
      TotalMinutes: 0.000221046666666667
      TotalSeconds: 0.0132628
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
    RelativeSpeed: 2.24717045069468
    GroupName: Cmdlets
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 7539.88599692373
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 61855
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.15914351851852e-08
      TotalHours: 1.71819444444444e-06
      TotalMilliseconds: 6.1855
      TotalMinutes: 0.000103091666666667
      TotalSeconds: 0.0061855
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Aliases
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 16166.8418074529
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 193006
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.23386574074074e-07
      TotalHours: 5.36127777777778e-06
      TotalMilliseconds: 19.3006
      TotalMinutes: 0.000321676666666667
      TotalSeconds: 0.0193006
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Aliases
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
    RelativeSpeed: 3.12029746988926
    GroupName: Aliases
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 5181.18607711677
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 60330
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 6.98263888888889e-08
      TotalHours: 1.67583333333333e-06
      TotalMilliseconds: 6.033
      TotalMinutes: 0.00010055
      TotalSeconds: 0.006033
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Function
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 16575.5014089176
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 131552
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.52259259259259e-07
      TotalHours: 3.65422222222222e-06
      TotalMilliseconds: 13.1552
      TotalMinutes: 0.000219253333333333
      TotalSeconds: 0.0131552
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Function
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
    RelativeSpeed: 2.18054036134593
    GroupName: Function
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 7601.5567988324
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 59716
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.91157407407407e-08
      TotalHours: 1.65877777777778e-06
      TotalMilliseconds: 5.9716
      TotalMinutes: 9.95266666666667e-05
      TotalSeconds: 0.0059716
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: All
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 16745.9307388305
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 149476
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.7300462962963e-07
      TotalHours: 4.15211111111111e-06
      TotalMilliseconds: 14.9476
      TotalMinutes: 0.000249126666666667
      TotalSeconds: 0.0149476
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: All
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
    RelativeSpeed: 2.50311474311742
    GroupName: All
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 6690.03719660681
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 11747293
      Days: 0
      Hours: 0
      Milliseconds: 174
      Minutes: 0
      Seconds: 1
      TotalDays: 1.35964039351852e-05
      TotalHours: 0.000326313694444444
      TotalMilliseconds: 1174.7293
      TotalMinutes: 0.0195788216666667
      TotalSeconds: 1.1747293
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 85.1259945589167
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 38684187
      Days: 0
      Hours: 0
      Milliseconds: 868
      Minutes: 0
      Seconds: 3
      TotalDays: 4.47733645833333e-05
      TotalHours: 0.00107456075
      TotalMilliseconds: 3868.4187
      TotalMinutes: 0.064473645
      TotalSeconds: 3.8684187
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
    RelativeSpeed: 3.29302989207812
    GroupName: WildcardMiss
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 25.8503558572913
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2095
---


### Aliases


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.006185|1x           |16166.84/s|
|Get-Command      |100        |00:00:00.019300|3.12x        |5181.19/s |


### All


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.005971|1x           |16745.93/s|
|Get-Command      |100        |00:00:00.014947|2.5x         |6690.04/s |


### Applications


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.644456|1x           |155.17/s  |
|Get-Command      |100        |00:00:01.998358|3.1x         |50.04/s   |


### Cmdlets


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.005902|1x           |16943.41/s|
|Get-Command      |100        |00:00:00.013262|2.25x        |7539.89/s |


### Function


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.006033|1x           |16575.5/s |
|Get-Command      |100        |00:00:00.013155|2.18x        |7601.56/s |


### WildcardMiss


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:01.174729|1x           |85.13/s   |
|Get-Command      |100        |00:00:03.868418|3.29x        |25.85/s   |
