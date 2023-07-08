---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 6229353
      Days: 0
      Hours: 0
      Milliseconds: 622
      Minutes: 0
      Seconds: 0
      TotalDays: 7.20989930555556e-06
      TotalHours: 0.000173037583333333
      TotalMilliseconds: 622.9353
      TotalMinutes: 0.010382255
      TotalSeconds: 0.6229353
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
    Throughput: 160.530315106561
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Applications
  - Technique: Get-Command
    Time: 
      Ticks: 17364840
      Days: 0
      Hours: 0
      Milliseconds: 736
      Minutes: 0
      Seconds: 1
      TotalDays: 2.00981944444444e-05
      TotalHours: 0.000482356666666667
      TotalMilliseconds: 1736.484
      TotalMinutes: 0.0289414
      TotalSeconds: 1.736484
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        FileName: Comparing Command Lookup
        GroupName: Applications
    RelativeSpeed: 2.78758323697501
    GroupName: Applications
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 57.5876310982422
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Applications
  - Technique: $executionContext
    Time: 
      Ticks: 58344
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.75277777777778e-08
      TotalHours: 1.62066666666667e-06
      TotalMilliseconds: 5.8344
      TotalMinutes: 9.724e-05
      TotalSeconds: 0.0058344
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
    Throughput: 17139.723022076
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
  - Technique: Get-Command
    Time: 
      Ticks: 122639
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.41943287037037e-07
      TotalHours: 3.40663888888889e-06
      TotalMilliseconds: 12.2639
      TotalMinutes: 0.000204398333333333
      TotalSeconds: 0.0122639
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
    RelativeSpeed: 2.10199849170437
    GroupName: Cmdlets
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 8154.01299749672
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
  - Technique: $executionContext
    Time: 
      Ticks: 96574
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.11775462962963e-07
      TotalHours: 2.68261111111111e-06
      TotalMilliseconds: 9.6574
      TotalMinutes: 0.000160956666666667
      TotalSeconds: 0.0096574
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
    Throughput: 10354.7538675006
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Aliases
  - Technique: Get-Command
    Time: 
      Ticks: 148970
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.72418981481481e-07
      TotalHours: 4.13805555555556e-06
      TotalMilliseconds: 14.897
      TotalMinutes: 0.000248283333333333
      TotalSeconds: 0.014897
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        FileName: Comparing Command Lookup
        GroupName: Aliases
    RelativeSpeed: 1.54254768364156
    GroupName: Aliases
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 6712.76095858226
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Aliases
  - Technique: $executionContext
    Time: 
      Ticks: 55409
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.4130787037037e-08
      TotalHours: 1.53913888888889e-06
      TotalMilliseconds: 5.5409
      TotalMinutes: 9.23483333333333e-05
      TotalSeconds: 0.0055409
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
    Throughput: 18047.6095941093
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Function
  - Technique: Get-Command
    Time: 
      Ticks: 124325
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.43894675925926e-07
      TotalHours: 3.45347222222222e-06
      TotalMilliseconds: 12.4325
      TotalMinutes: 0.000207208333333333
      TotalSeconds: 0.0124325
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        FileName: Comparing Command Lookup
        GroupName: Function
    RelativeSpeed: 2.24376906278763
    GroupName: Function
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 8043.43454655138
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Function
  - Technique: $executionContext
    Time: 
      Ticks: 53230
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.16087962962963e-08
      TotalHours: 1.47861111111111e-06
      TotalMilliseconds: 5.323
      TotalMinutes: 8.87166666666667e-05
      TotalSeconds: 0.005323
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
    Throughput: 18786.3986473793
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: All
  - Technique: Get-Command
    Time: 
      Ticks: 175005
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.02552083333333e-07
      TotalHours: 4.86125e-06
      TotalMilliseconds: 17.5005
      TotalMinutes: 0.000291675
      TotalSeconds: 0.0175005
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        FileName: Comparing Command Lookup
        GroupName: All
    RelativeSpeed: 3.28771369528461
    GroupName: All
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 5714.12245364418
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: All
  - Technique: $executionContext
    Time: 
      Ticks: 11228666
      Days: 0
      Hours: 0
      Milliseconds: 122
      Minutes: 0
      Seconds: 1
      TotalDays: 1.29961412037037e-05
      TotalHours: 0.000311907388888889
      TotalMilliseconds: 1122.8666
      TotalMinutes: 0.0187144433333333
      TotalSeconds: 1.1228666
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
    Throughput: 89.0577740935566
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
  - Technique: Get-Command
    Time: 
      Ticks: 36358299
      Days: 0
      Hours: 0
      Milliseconds: 635
      Minutes: 0
      Seconds: 3
      TotalDays: 4.20813645833333e-05
      TotalHours: 0.00100995275
      TotalMilliseconds: 3635.8299
      TotalMinutes: 0.060597165
      TotalSeconds: 3.6358299
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
    RelativeSpeed: 3.23798917876799
    GroupName: WildcardMiss
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 27.5040369737869
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
FileName: Comparing Command Lookup
ClockSpeed: 2594
---


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.009657|1x           |10354.75/s|
|Get-Command      |00:00:00.014897|1.54x        |6712.76/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005323|1x           |18786.4/s |
|Get-Command      |00:00:00.017500|3.29x        |5714.12/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.622935|1x           |160.53/s  |
|Get-Command      |00:00:01.736484|2.79x        |57.59/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005834|1x           |17139.72/s|
|Get-Command      |00:00:00.012263|2.1x         |8154.01/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005540|1x           |18047.61/s|
|Get-Command      |00:00:00.012432|2.24x        |8043.43/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.122866|1x           |89.06/s   |
|Get-Command      |00:00:03.635829|3.24x        |27.5/s    |
