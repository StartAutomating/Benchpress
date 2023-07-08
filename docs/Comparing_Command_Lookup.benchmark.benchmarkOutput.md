---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 5895204
      Days: 0
      Hours: 0
      Milliseconds: 589
      Minutes: 0
      Seconds: 0
      TotalDays: 6.82315277777778e-06
      TotalHours: 0.000163755666666667
      TotalMilliseconds: 589.5204
      TotalMinutes: 0.00982534
      TotalSeconds: 0.5895204
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        FileName: Comparing Command Lookup
        GroupName: Applications
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 169.629414011797
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Applications
  - Technique: Get-Command
    Time: 
      Ticks: 18079320
      Days: 0
      Hours: 0
      Milliseconds: 807
      Minutes: 0
      Seconds: 1
      TotalDays: 2.09251388888889e-05
      TotalHours: 0.000502203333333333
      TotalMilliseconds: 1807.932
      TotalMinutes: 0.0301322
      TotalSeconds: 1.807932
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        FileName: Comparing Command Lookup
        GroupName: Applications
    RelativeSpeed: 3.06678445733176
    GroupName: Applications
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 55.3118148248939
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Applications
  - Technique: $executionContext
    Time: 
      Ticks: 57338
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.63634259259259e-08
      TotalHours: 1.59272222222222e-06
      TotalMilliseconds: 5.7338
      TotalMinutes: 9.55633333333333e-05
      TotalSeconds: 0.0057338
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 17440.4408943458
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
  - Technique: Get-Command
    Time: 
      Ticks: 121482
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.40604166666667e-07
      TotalHours: 3.3745e-06
      TotalMilliseconds: 12.1482
      TotalMinutes: 0.00020247
      TotalSeconds: 0.0121482
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
    RelativeSpeed: 2.11869964072692
    GroupName: Cmdlets
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 8231.67218188703
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
  - Technique: $executionContext
    Time: 
      Ticks: 57385
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.64178240740741e-08
      TotalHours: 1.59402777777778e-06
      TotalMilliseconds: 5.7385
      TotalMinutes: 9.56416666666667e-05
      TotalSeconds: 0.0057385
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        FileName: Comparing Command Lookup
        GroupName: Aliases
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 17426.1566611484
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Aliases
  - Technique: Get-Command
    Time: 
      Ticks: 180975
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.09461805555556e-07
      TotalHours: 5.02708333333333e-06
      TotalMilliseconds: 18.0975
      TotalMinutes: 0.000301625
      TotalSeconds: 0.0180975
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        FileName: Comparing Command Lookup
        GroupName: Aliases
    RelativeSpeed: 3.15369870175133
    GroupName: Aliases
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 5525.62508633789
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Aliases
  - Technique: $executionContext
    Time: 
      Ticks: 56295
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.515625e-08
      TotalHours: 1.56375e-06
      TotalMilliseconds: 5.6295
      TotalMinutes: 9.3825e-05
      TotalSeconds: 0.0056295
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        FileName: Comparing Command Lookup
        GroupName: Function
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 17763.5669242384
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Function
  - Technique: Get-Command
    Time: 
      Ticks: 124415
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.43998842592593e-07
      TotalHours: 3.45597222222222e-06
      TotalMilliseconds: 12.4415
      TotalMinutes: 0.000207358333333333
      TotalSeconds: 0.0124415
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        FileName: Comparing Command Lookup
        GroupName: Function
    RelativeSpeed: 2.21005417887912
    GroupName: Function
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 8037.61604308162
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Function
  - Technique: $executionContext
    Time: 
      Ticks: 54045
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.25520833333333e-08
      TotalHours: 1.50125e-06
      TotalMilliseconds: 5.4045
      TotalMinutes: 9.0075e-05
      TotalSeconds: 0.0054045
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        FileName: Comparing Command Lookup
        GroupName: All
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 18503.0992691276
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: All
  - Technique: Get-Command
    Time: 
      Ticks: 144365
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.6708912037037e-07
      TotalHours: 4.01013888888889e-06
      TotalMilliseconds: 14.4365
      TotalMinutes: 0.000240608333333333
      TotalSeconds: 0.0144365
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        FileName: Comparing Command Lookup
        GroupName: All
    RelativeSpeed: 2.6711999259876
    GroupName: All
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 6926.88671076785
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: All
  - Technique: $executionContext
    Time: 
      Ticks: 11365531
      Days: 0
      Hours: 0
      Milliseconds: 136
      Minutes: 0
      Seconds: 1
      TotalDays: 1.31545497685185e-05
      TotalHours: 0.000315709194444444
      TotalMilliseconds: 1136.5531
      TotalMinutes: 0.0189425516666667
      TotalSeconds: 1.1365531
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 87.9853303818361
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
  - Technique: Get-Command
    Time: 
      Ticks: 36216407
      Days: 0
      Hours: 0
      Milliseconds: 621
      Minutes: 0
      Seconds: 3
      TotalDays: 4.19171377314815e-05
      TotalHours: 0.00100601130555556
      TotalMilliseconds: 3621.6407
      TotalMinutes: 0.0603606783333333
      TotalSeconds: 3.6216407
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
    RelativeSpeed: 3.18651253513804
    GroupName: WildcardMiss
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 27.6117948420449
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
FileName: Comparing Command Lookup
ClockSpeed: 2594
---


### Aliases


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.005738|1x           |17426.16/s|
|Get-Command      |100        |00:00:00.018097|3.15x        |5525.63/s |


### All


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.005404|1x           |18503.1/s |
|Get-Command      |100        |00:00:00.014436|2.67x        |6926.89/s |


### Applications


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.589520|1x           |169.63/s  |
|Get-Command      |100        |00:00:01.807932|3.07x        |55.31/s   |


### Cmdlets


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.005733|1x           |17440.44/s|
|Get-Command      |100        |00:00:00.012148|2.12x        |8231.67/s |


### Function


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.005629|1x           |17763.57/s|
|Get-Command      |100        |00:00:00.012441|2.21x        |8037.62/s |


### WildcardMiss


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:01.136553|1x           |87.99/s   |
|Get-Command      |100        |00:00:03.621640|3.19x        |27.61/s   |
