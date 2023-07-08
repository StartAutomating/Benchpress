---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 6602377
      Days: 0
      Hours: 0
      Milliseconds: 660
      Minutes: 0
      Seconds: 0
      TotalDays: 7.6416400462963e-06
      TotalHours: 0.000183399361111111
      TotalMilliseconds: 660.2377
      TotalMinutes: 0.0110039616666667
      TotalSeconds: 0.6602377
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        GroupName: Applications
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 151.460602749585
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 18619783
      Days: 0
      Hours: 0
      Milliseconds: 861
      Minutes: 0
      Seconds: 1
      TotalDays: 2.15506747685185e-05
      TotalHours: 0.000517216194444444
      TotalMilliseconds: 1861.9783
      TotalMinutes: 0.0310329716666667
      TotalSeconds: 1.8619783
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        GroupName: Applications
    RelativeSpeed: 2.82016355624649
    GroupName: Applications
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 53.7063187041439
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 60349
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 6.98483796296296e-08
      TotalHours: 1.67636111111111e-06
      TotalMilliseconds: 6.0349
      TotalMinutes: 0.000100581666666667
      TotalSeconds: 0.0060349
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        GroupName: Cmdlets
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 16570.2828547283
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 223106
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.58224537037037e-07
      TotalHours: 6.19738888888889e-06
      TotalMilliseconds: 22.3106
      TotalMinutes: 0.000371843333333333
      TotalSeconds: 0.0223106
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        GroupName: Cmdlets
    RelativeSpeed: 3.69692952658702
    GroupName: Cmdlets
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 4482.17439244126
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 55488
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.42222222222222e-08
      TotalHours: 1.54133333333333e-06
      TotalMilliseconds: 5.5488
      TotalMinutes: 9.248e-05
      TotalSeconds: 0.0055488
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        GroupName: Aliases
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 18021.9146482122
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 144858
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.67659722222222e-07
      TotalHours: 4.02383333333333e-06
      TotalMilliseconds: 14.4858
      TotalMinutes: 0.00024143
      TotalSeconds: 0.0144858
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        GroupName: Aliases
    RelativeSpeed: 2.61061851211073
    GroupName: Aliases
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 6903.31220919797
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 56566
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.54699074074074e-08
      TotalHours: 1.57127777777778e-06
      TotalMilliseconds: 5.6566
      TotalMinutes: 9.42766666666667e-05
      TotalSeconds: 0.0056566
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        GroupName: Function
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 17678.4640950394
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 125276
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.4499537037037e-07
      TotalHours: 3.47988888888889e-06
      TotalMilliseconds: 12.5276
      TotalMinutes: 0.000208793333333333
      TotalSeconds: 0.0125276
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        GroupName: Function
    RelativeSpeed: 2.21468726797016
    GroupName: Function
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 7982.37491618506
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 51694
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.98310185185185e-08
      TotalHours: 1.43594444444444e-06
      TotalMilliseconds: 5.1694
      TotalMinutes: 8.61566666666667e-05
      TotalSeconds: 0.0051694
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        GroupName: All
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 19344.6047897241
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 161737
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.87195601851852e-07
      TotalHours: 4.49269444444444e-06
      TotalMilliseconds: 16.1737
      TotalMinutes: 0.000269561666666667
      TotalSeconds: 0.0161737
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        GroupName: All
    RelativeSpeed: 3.12873834487561
    GroupName: All
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 6182.87714004835
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 11356514
      Days: 0
      Hours: 0
      Milliseconds: 135
      Minutes: 0
      Seconds: 1
      TotalDays: 1.31441134259259e-05
      TotalHours: 0.000315458722222222
      TotalMilliseconds: 1135.6514
      TotalMinutes: 0.0189275233333333
      TotalSeconds: 1.1356514
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        GroupName: WildcardMiss
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 88.0551901754359
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 35054152
      Days: 0
      Hours: 0
      Milliseconds: 505
      Minutes: 0
      Seconds: 3
      TotalDays: 4.05719351851852e-05
      TotalHours: 0.000973726444444444
      TotalMilliseconds: 3505.4152
      TotalMinutes: 0.0584235866666667
      TotalSeconds: 3.5054152
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        GroupName: WildcardMiss
    RelativeSpeed: 3.08670002079864
    GroupName: WildcardMiss
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 28.5272911465666
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2793
---


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005548|1x           |18021.91/s|
|Get-Command      |00:00:00.014485|2.61x        |6903.31/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005169|1x           |19344.6/s |
|Get-Command      |00:00:00.016173|3.13x        |6182.88/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.660237|1x           |151.46/s  |
|Get-Command      |00:00:01.861978|2.82x        |53.71/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006034|1x           |16570.28/s|
|Get-Command      |00:00:00.022310|3.7x         |4482.17/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005656|1x           |17678.46/s|
|Get-Command      |00:00:00.012527|2.21x        |7982.37/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.135651|1x           |88.06/s   |
|Get-Command      |00:00:03.505415|3.09x        |28.53/s   |
