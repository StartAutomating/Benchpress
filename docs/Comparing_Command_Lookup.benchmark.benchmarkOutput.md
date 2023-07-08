---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 7890867
      Days: 0
      Hours: 0
      Milliseconds: 789
      Minutes: 0
      Seconds: 0
      TotalDays: 9.13294791666667e-06
      TotalHours: 0.00021919075
      TotalMilliseconds: 789.0867
      TotalMinutes: 0.013151445
      TotalSeconds: 0.7890867
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        FileName: Comparing Command Lookup
        GroupName: Applications
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2397
    FileName: Comparing Command Lookup
    Throughput: 126.728786583274
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 20976381
      Days: 0
      Hours: 0
      Milliseconds: 97
      Minutes: 0
      Seconds: 2
      TotalDays: 2.427821875e-05
      TotalHours: 0.00058267725
      TotalMilliseconds: 2097.6381
      TotalMinutes: 0.034960635
      TotalSeconds: 2.0976381
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        FileName: Comparing Command Lookup
        GroupName: Applications
    RelativeSpeed: 2.65831131103845
    GroupName: Applications
    ClockSpeed: 2397
    FileName: Comparing Command Lookup
    Throughput: 47.6726657472516
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 101102
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.17016203703704e-07
      TotalHours: 2.80838888888889e-06
      TotalMilliseconds: 10.1102
      TotalMinutes: 0.000168503333333333
      TotalSeconds: 0.0101102
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2397
    FileName: Comparing Command Lookup
    Throughput: 9891.00116713814
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 196759
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.27730324074074e-07
      TotalHours: 5.46552777777778e-06
      TotalMilliseconds: 19.6759
      TotalMinutes: 0.000327931666666667
      TotalSeconds: 0.0196759
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
    RelativeSpeed: 1.94614349864493
    GroupName: Cmdlets
    ClockSpeed: 2397
    FileName: Comparing Command Lookup
    Throughput: 5082.3596379327
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 89957
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04116898148148e-07
      TotalHours: 2.49880555555556e-06
      TotalMilliseconds: 8.9957
      TotalMinutes: 0.000149928333333333
      TotalSeconds: 0.0089957
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        FileName: Comparing Command Lookup
        GroupName: Aliases
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2397
    FileName: Comparing Command Lookup
    Throughput: 11116.42229065
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 262384
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 0
      TotalDays: 3.03685185185185e-07
      TotalHours: 7.28844444444444e-06
      TotalMilliseconds: 26.2384
      TotalMinutes: 0.000437306666666667
      TotalSeconds: 0.0262384
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        FileName: Comparing Command Lookup
        GroupName: Aliases
    RelativeSpeed: 2.9167713463099
    GroupName: Aliases
    ClockSpeed: 2397
    FileName: Comparing Command Lookup
    Throughput: 3811.20800048783
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 90989
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05311342592593e-07
      TotalHours: 2.52747222222222e-06
      TotalMilliseconds: 9.0989
      TotalMinutes: 0.000151648333333333
      TotalSeconds: 0.0090989
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        FileName: Comparing Command Lookup
        GroupName: Function
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2397
    FileName: Comparing Command Lookup
    Throughput: 10990.3394915869
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 203594
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.35641203703704e-07
      TotalHours: 5.65538888888889e-06
      TotalMilliseconds: 20.3594
      TotalMinutes: 0.000339323333333333
      TotalSeconds: 0.0203594
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        FileName: Comparing Command Lookup
        GroupName: Function
    RelativeSpeed: 2.23756717845014
    GroupName: Function
    ClockSpeed: 2397
    FileName: Comparing Command Lookup
    Throughput: 4911.7361022427
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 87437
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01200231481481e-07
      TotalHours: 2.42880555555556e-06
      TotalMilliseconds: 8.7437
      TotalMinutes: 0.000145728333333333
      TotalSeconds: 0.0087437
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        FileName: Comparing Command Lookup
        GroupName: All
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2397
    FileName: Comparing Command Lookup
    Throughput: 11436.8059288402
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 305016
      Days: 0
      Hours: 0
      Milliseconds: 30
      Minutes: 0
      Seconds: 0
      TotalDays: 3.53027777777778e-07
      TotalHours: 8.47266666666667e-06
      TotalMilliseconds: 30.5016
      TotalMinutes: 0.00050836
      TotalSeconds: 0.0305016
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        FileName: Comparing Command Lookup
        GroupName: All
    RelativeSpeed: 3.48840879719112
    GroupName: All
    ClockSpeed: 2397
    FileName: Comparing Command Lookup
    Throughput: 3278.51653683741
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 12512776
      Days: 0
      Hours: 0
      Milliseconds: 251
      Minutes: 0
      Seconds: 1
      TotalDays: 1.44823796296296e-05
      TotalHours: 0.000347577111111111
      TotalMilliseconds: 1251.2776
      TotalMinutes: 0.0208546266666667
      TotalSeconds: 1.2512776
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2397
    FileName: Comparing Command Lookup
    Throughput: 79.9183170864723
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 42990140
      Days: 0
      Hours: 0
      Milliseconds: 299
      Minutes: 0
      Seconds: 4
      TotalDays: 4.97571064814815e-05
      TotalHours: 0.00119417055555556
      TotalMilliseconds: 4299.014
      TotalMinutes: 0.0716502333333333
      TotalSeconds: 4.299014
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
    RelativeSpeed: 3.43569964011183
    GroupName: WildcardMiss
    ClockSpeed: 2397
    FileName: Comparing Command Lookup
    Throughput: 23.261147788772
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2397
---


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.008995|1x           |11116.42/s|
|Get-Command      |00:00:00.026238|2.92x        |3811.21/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.008743|1x           |11436.81/s|
|Get-Command      |00:00:00.030501|3.49x        |3278.52/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.789086|1x           |126.73/s  |
|Get-Command      |00:00:02.097638|2.66x        |47.67/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.010110|1x           |9891/s    |
|Get-Command      |00:00:00.019675|1.95x        |5082.36/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.009098|1x           |10990.34/s|
|Get-Command      |00:00:00.020359|2.24x        |4911.74/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.251277|1x           |79.92/s   |
|Get-Command      |00:00:04.299014|3.44x        |23.26/s   |
