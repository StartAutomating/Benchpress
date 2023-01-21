---
layout: Benchmark

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 6012100
      Days: 0
      Hours: 0
      Milliseconds: 601
      Minutes: 0
      Seconds: 0
      TotalDays: 6.95844907407407e-06
      TotalHours: 0.000167002777777778
      TotalMilliseconds: 601.21
      TotalMinutes: 0.0100201666666667
      TotalSeconds: 0.60121
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        FileName: Comparing Command Lookup
        GroupName: Applications
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 166.331232015436
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 18055952
      Days: 0
      Hours: 0
      Milliseconds: 805
      Minutes: 0
      Seconds: 1
      TotalDays: 2.08980925925926e-05
      TotalHours: 0.000501554222222222
      TotalMilliseconds: 1805.5952
      TotalMinutes: 0.0300932533333333
      TotalSeconds: 1.8055952
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        FileName: Comparing Command Lookup
        GroupName: Applications
    RelativeSpeed: 3.00326874137157
    GroupName: Applications
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 55.3833993355764
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 55154
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.38356481481482e-08
      TotalHours: 1.53205555555556e-06
      TotalMilliseconds: 5.5154
      TotalMinutes: 9.19233333333333e-05
      TotalSeconds: 0.0055154
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 18131.0512383508
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 121429
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.40542824074074e-07
      TotalHours: 3.37302777777778e-06
      TotalMilliseconds: 12.1429
      TotalMinutes: 0.000202381666666667
      TotalSeconds: 0.0121429
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
    RelativeSpeed: 2.2016354208217
    GroupName: Cmdlets
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 8235.2650520057
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 55955
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.47627314814815e-08
      TotalHours: 1.55430555555556e-06
      TotalMilliseconds: 5.5955
      TotalMinutes: 9.32583333333333e-05
      TotalSeconds: 0.0055955
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        FileName: Comparing Command Lookup
        GroupName: Aliases
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 17871.5038870521
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 411628
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.76421296296296e-07
      TotalHours: 1.14341111111111e-05
      TotalMilliseconds: 41.1628
      TotalMinutes: 0.000686046666666667
      TotalSeconds: 0.0411628
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        FileName: Comparing Command Lookup
        GroupName: Aliases
    RelativeSpeed: 7.35641140201948
    GroupName: Aliases
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 2429.37798206147
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 55260
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.39583333333333e-08
      TotalHours: 1.535e-06
      TotalMilliseconds: 5.526
      TotalMinutes: 9.21e-05
      TotalSeconds: 0.005526
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        FileName: Comparing Command Lookup
        GroupName: Function
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 18096.2721679334
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 124567
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.44174768518519e-07
      TotalHours: 3.46019444444444e-06
      TotalMilliseconds: 12.4567
      TotalMinutes: 0.000207611666666667
      TotalSeconds: 0.0124567
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        FileName: Comparing Command Lookup
        GroupName: Function
    RelativeSpeed: 2.25419833514296
    GroupName: Function
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 8027.80832804836
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 51965
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.01446759259259e-08
      TotalHours: 1.44347222222222e-06
      TotalMilliseconds: 5.1965
      TotalMinutes: 8.66083333333333e-05
      TotalSeconds: 0.0051965
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        FileName: Comparing Command Lookup
        GroupName: All
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 19243.7217357837
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 137440
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.59074074074074e-07
      TotalHours: 3.81777777777778e-06
      TotalMilliseconds: 13.744
      TotalMinutes: 0.000229066666666667
      TotalSeconds: 0.013744
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        FileName: Comparing Command Lookup
        GroupName: All
    RelativeSpeed: 2.64485711536611
    GroupName: All
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 7275.90221187427
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 11002413
      Days: 0
      Hours: 0
      Milliseconds: 100
      Minutes: 0
      Seconds: 1
      TotalDays: 1.27342743055556e-05
      TotalHours: 0.000305622583333333
      TotalMilliseconds: 1100.2413
      TotalMinutes: 0.018337355
      TotalSeconds: 1.1002413
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 90.8891531339534
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 33352445
      Days: 0
      Hours: 0
      Milliseconds: 335
      Minutes: 0
      Seconds: 3
      TotalDays: 3.86023668981481e-05
      TotalHours: 0.000926456805555556
      TotalMilliseconds: 3335.2445
      TotalMinutes: 0.0555874083333333
      TotalSeconds: 3.3352445
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
    RelativeSpeed: 3.03137548099676
    GroupName: WildcardMiss
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 29.9828093562556
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2793
---
Comparing Command Lookup
------------------------
> @2793 Mhz


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005595|1x           |17871.5/s |
|Get-Command      |00:00:00.041162|7.36x        |2429.38/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005196|1x           |19243.72/s|
|Get-Command      |00:00:00.013744|2.64x        |7275.9/s  |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.601210|1x           |166.33/s  |
|Get-Command      |00:00:01.805595|3x           |55.38/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005515|1x           |18131.05/s|
|Get-Command      |00:00:00.012142|2.2x         |8235.27/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005526|1x           |18096.27/s|
|Get-Command      |00:00:00.012456|2.25x        |8027.81/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.100241|1x           |90.89/s   |
|Get-Command      |00:00:03.335244|3.03x        |29.98/s   |
