---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 7120289
      Days: 0
      Hours: 0
      Milliseconds: 712
      Minutes: 0
      Seconds: 0
      TotalDays: 8.24107523148148e-06
      TotalHours: 0.000197785805555556
      TotalMilliseconds: 712.0289
      TotalMinutes: 0.0118671483333333
      TotalSeconds: 0.7120289
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        GroupName: Applications
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 140.443737606718
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 20241092
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 2
      TotalDays: 2.34271898148148e-05
      TotalHours: 0.000562252555555556
      TotalMilliseconds: 2024.1092
      TotalMinutes: 0.0337351533333333
      TotalSeconds: 2.0241092
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        GroupName: Applications
    RelativeSpeed: 2.84273461372144
    GroupName: Applications
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 49.4044491275471
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 88511
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02443287037037e-07
      TotalHours: 2.45863888888889e-06
      TotalMilliseconds: 8.8511
      TotalMinutes: 0.000147518333333333
      TotalSeconds: 0.0088511
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        GroupName: Cmdlets
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 11298.0307532397
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 141987
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.64336805555556e-07
      TotalHours: 3.94408333333333e-06
      TotalMilliseconds: 14.1987
      TotalMinutes: 0.000236645
      TotalSeconds: 0.0141987
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        GroupName: Cmdlets
    RelativeSpeed: 1.60417349256025
    GroupName: Cmdlets
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 7042.89829350574
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 113212
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.31032407407407e-07
      TotalHours: 3.14477777777778e-06
      TotalMilliseconds: 11.3212
      TotalMinutes: 0.000188686666666667
      TotalSeconds: 0.0113212
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        GroupName: Aliases
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 8832.9859025545
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 166984
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.93268518518519e-07
      TotalHours: 4.63844444444444e-06
      TotalMilliseconds: 16.6984
      TotalMinutes: 0.000278306666666667
      TotalSeconds: 0.0166984
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        GroupName: Aliases
    RelativeSpeed: 1.47496731795216
    GroupName: Aliases
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 5988.59770996024
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 65002
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.52337962962963e-08
      TotalHours: 1.80561111111111e-06
      TotalMilliseconds: 6.5002
      TotalMinutes: 0.000108336666666667
      TotalSeconds: 0.0065002
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        GroupName: Function
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 15384.1420263992
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 144810
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.67604166666667e-07
      TotalHours: 4.0225e-06
      TotalMilliseconds: 14.481
      TotalMinutes: 0.00024135
      TotalSeconds: 0.014481
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        GroupName: Function
    RelativeSpeed: 2.22777760684287
    GroupName: Function
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 6905.60044195843
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 63588
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.35972222222222e-08
      TotalHours: 1.76633333333333e-06
      TotalMilliseconds: 6.3588
      TotalMinutes: 0.00010598
      TotalSeconds: 0.0063588
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        GroupName: All
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 15726.2376549034
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 202827
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.34753472222222e-07
      TotalHours: 5.63408333333333e-06
      TotalMilliseconds: 20.2827
      TotalMinutes: 0.000338045
      TotalSeconds: 0.0202827
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        GroupName: All
    RelativeSpeed: 3.1897056048311
    GroupName: All
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 4930.31006720013
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 13016307
      Days: 0
      Hours: 0
      Milliseconds: 301
      Minutes: 0
      Seconds: 1
      TotalDays: 1.50651701388889e-05
      TotalHours: 0.000361564083333333
      TotalMilliseconds: 1301.6307
      TotalMinutes: 0.021693845
      TotalSeconds: 1.3016307
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        GroupName: WildcardMiss
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 76.8267066841616
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 40805999
      Days: 0
      Hours: 0
      Milliseconds: 80
      Minutes: 0
      Seconds: 4
      TotalDays: 4.72291655092593e-05
      TotalHours: 0.00113349997222222
      TotalMilliseconds: 4080.5999
      TotalMinutes: 0.0680099983333333
      TotalSeconds: 4.0805999
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        GroupName: WildcardMiss
    RelativeSpeed: 3.13499051612719
    GroupName: WildcardMiss
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 24.5062006691712
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2095
---


### Aliases


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.011321|1x           |8832.99/s |
|Get-Command      |100        |00:00:00.016698|1.47x        |5988.6/s  |


### All


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.006358|1x           |15726.24/s|
|Get-Command      |100        |00:00:00.020282|3.19x        |4930.31/s |


### Applications


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.712028|1x           |140.44/s  |
|Get-Command      |100        |00:00:02.024109|2.84x        |49.4/s    |


### Cmdlets


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.008851|1x           |11298.03/s|
|Get-Command      |100        |00:00:00.014198|1.6x         |7042.9/s  |


### Function


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.006500|1x           |15384.14/s|
|Get-Command      |100        |00:00:00.014481|2.23x        |6905.6/s  |


### WildcardMiss


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:01.301630|1x           |76.83/s   |
|Get-Command      |100        |00:00:04.080599|3.13x        |24.51/s   |
