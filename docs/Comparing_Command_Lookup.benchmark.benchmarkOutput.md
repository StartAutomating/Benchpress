---
layout: Benchmark

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 5695454
      Days: 0
      Hours: 0
      Milliseconds: 569
      Minutes: 0
      Seconds: 0
      TotalDays: 6.59196064814815e-06
      TotalHours: 0.000158207055555556
      TotalMilliseconds: 569.5454
      TotalMinutes: 0.00949242333333333
      TotalSeconds: 0.5695454
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        GroupName: Applications
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 175.578628147993
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 17039992
      Days: 0
      Hours: 0
      Milliseconds: 703
      Minutes: 0
      Seconds: 1
      TotalDays: 1.9722212962963e-05
      TotalHours: 0.000473333111111111
      TotalMilliseconds: 1703.9992
      TotalMinutes: 0.0283999866666667
      TotalSeconds: 1.7039992
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        GroupName: Applications
    RelativeSpeed: 2.99185841901278
    GroupName: Applications
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 58.6854735612552
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 60759
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.03229166666667e-08
      TotalHours: 1.68775e-06
      TotalMilliseconds: 6.0759
      TotalMinutes: 0.000101265
      TotalSeconds: 0.0060759
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        GroupName: Cmdlets
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 16458.4670583782
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 124661
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.44283564814815e-07
      TotalHours: 3.46280555555556e-06
      TotalMilliseconds: 12.4661
      TotalMinutes: 0.000207768333333333
      TotalSeconds: 0.0124661
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        GroupName: Cmdlets
    RelativeSpeed: 2.05172896196448
    GroupName: Cmdlets
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 8021.7549995588
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 59445
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.88020833333333e-08
      TotalHours: 1.65125e-06
      TotalMilliseconds: 5.9445
      TotalMinutes: 9.9075e-05
      TotalSeconds: 0.0059445
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        GroupName: Aliases
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 16822.2726890403
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 188406
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.180625e-07
      TotalHours: 5.2335e-06
      TotalMilliseconds: 18.8406
      TotalMinutes: 0.00031401
      TotalSeconds: 0.0188406
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        GroupName: Aliases
    RelativeSpeed: 3.16941710825132
    GroupName: Aliases
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 5307.68659172213
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 57908
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.70231481481482e-08
      TotalHours: 1.60855555555556e-06
      TotalMilliseconds: 5.7908
      TotalMinutes: 9.65133333333333e-05
      TotalSeconds: 0.0057908
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        GroupName: Function
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 17268.7711542447
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 124916
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.44578703703704e-07
      TotalHours: 3.46988888888889e-06
      TotalMilliseconds: 12.4916
      TotalMinutes: 0.000208193333333333
      TotalSeconds: 0.0124916
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        GroupName: Function
    RelativeSpeed: 2.15714581750363
    GroupName: Function
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 8005.37961510135
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 54788
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.3412037037037e-08
      TotalHours: 1.52188888888889e-06
      TotalMilliseconds: 5.4788
      TotalMinutes: 9.13133333333333e-05
      TotalSeconds: 0.0054788
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        GroupName: All
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 18252.172008469
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 142686
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.65145833333333e-07
      TotalHours: 3.9635e-06
      TotalMilliseconds: 14.2686
      TotalMinutes: 0.00023781
      TotalSeconds: 0.0142686
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        GroupName: All
    RelativeSpeed: 2.60432941520041
    GroupName: All
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 7008.39605847806
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 10556894
      Days: 0
      Hours: 0
      Milliseconds: 55
      Minutes: 0
      Seconds: 1
      TotalDays: 1.22186273148148e-05
      TotalHours: 0.000293247055555556
      TotalMilliseconds: 1055.6894
      TotalMinutes: 0.0175948233333333
      TotalSeconds: 1.0556894
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        GroupName: WildcardMiss
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 94.7248309966928
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 36112356
      Days: 0
      Hours: 0
      Milliseconds: 611
      Minutes: 0
      Seconds: 3
      TotalDays: 4.17967083333333e-05
      TotalHours: 0.001003121
      TotalMilliseconds: 3611.2356
      TotalMinutes: 0.06018726
      TotalSeconds: 3.6112356
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        GroupName: WildcardMiss
    RelativeSpeed: 3.4207368189924
    GroupName: WildcardMiss
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 27.6913530648623
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2594
---
Comparing Command Lookup
------------------------
> @2594 Mhz


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005944|1x           |16822.27/s|
|Get-Command      |00:00:00.018840|3.17x        |5307.69/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005478|1x           |18252.17/s|
|Get-Command      |00:00:00.014268|2.6x         |7008.4/s  |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.569545|1x           |175.58/s  |
|Get-Command      |00:00:01.703999|2.99x        |58.69/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006075|1x           |16458.47/s|
|Get-Command      |00:00:00.012466|2.05x        |8021.75/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005790|1x           |17268.77/s|
|Get-Command      |00:00:00.012491|2.16x        |8005.38/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.055689|1x           |94.72/s   |
|Get-Command      |00:00:03.611235|3.42x        |27.69/s   |
