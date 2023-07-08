---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 7010751
      Days: 0
      Hours: 0
      Milliseconds: 701
      Minutes: 0
      Seconds: 0
      TotalDays: 8.11429513888889e-06
      TotalHours: 0.000194743083333333
      TotalMilliseconds: 701.0751
      TotalMinutes: 0.011684585
      TotalSeconds: 0.7010751
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        GroupName: Applications
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 142.638071156713
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 21382234
      Days: 0
      Hours: 0
      Milliseconds: 138
      Minutes: 0
      Seconds: 2
      TotalDays: 2.47479560185185e-05
      TotalHours: 0.000593950944444444
      TotalMilliseconds: 2138.2234
      TotalMinutes: 0.0356370566666667
      TotalSeconds: 2.1382234
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        GroupName: Applications
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.0499206147815
    GroupName: Applications
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 46.7677979765819
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 65912
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.6287037037037e-08
      TotalHours: 1.83088888888889e-06
      TotalMilliseconds: 6.5912
      TotalMinutes: 0.000109853333333333
      TotalSeconds: 0.0065912
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        GroupName: Cmdlets
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 15171.7441437068
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 144709
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.67487268518519e-07
      TotalHours: 4.01969444444444e-06
      TotalMilliseconds: 14.4709
      TotalMinutes: 0.000241181666666667
      TotalSeconds: 0.0144709
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        GroupName: Cmdlets
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.19548792329166
    GroupName: Cmdlets
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 6910.42022265374
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 68462
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.92384259259259e-08
      TotalHours: 1.90172222222222e-06
      TotalMilliseconds: 6.8462
      TotalMinutes: 0.000114103333333333
      TotalSeconds: 0.0068462
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        GroupName: Aliases
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 14606.6431012825
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 220183
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.54841435185185e-07
      TotalHours: 6.11619444444444e-06
      TotalMilliseconds: 22.0183
      TotalMinutes: 0.000366971666666667
      TotalSeconds: 0.0220183
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        GroupName: Aliases
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.21613449796968
    GroupName: Aliases
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 4541.6766962027
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 66588
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.70694444444444e-08
      TotalHours: 1.84966666666667e-06
      TotalMilliseconds: 6.6588
      TotalMinutes: 0.00011098
      TotalSeconds: 0.0066588
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        GroupName: Function
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 15017.7209106746
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 148161
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.71482638888889e-07
      TotalHours: 4.11558333333333e-06
      TotalMilliseconds: 14.8161
      TotalMinutes: 0.000246935
      TotalSeconds: 0.0148161
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        GroupName: Function
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.22504054784646
    GroupName: Function
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 6749.41448829314
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 63402
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.33819444444444e-08
      TotalHours: 1.76116666666667e-06
      TotalMilliseconds: 6.3402
      TotalMinutes: 0.00010567
      TotalSeconds: 0.0063402
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        GroupName: All
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 15772.3731112583
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 203850
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.359375e-07
      TotalHours: 5.6625e-06
      TotalMilliseconds: 20.385
      TotalMinutes: 0.00033975
      TotalSeconds: 0.020385
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        GroupName: All
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.21519825873001
    GroupName: All
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 4905.5678194751
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 13434958
      Days: 0
      Hours: 0
      Milliseconds: 343
      Minutes: 0
      Seconds: 1
      TotalDays: 1.55497199074074e-05
      TotalHours: 0.000373193277777778
      TotalMilliseconds: 1343.4958
      TotalMinutes: 0.0223915966666667
      TotalSeconds: 1.3434958
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        GroupName: WildcardMiss
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 74.4326852380186
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 42431907
      Days: 0
      Hours: 0
      Milliseconds: 243
      Minutes: 0
      Seconds: 4
      TotalDays: 4.91110034722222e-05
      TotalHours: 0.00117866408333333
      TotalMilliseconds: 4243.1907
      TotalMinutes: 0.070719845
      TotalSeconds: 4.2431907
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        GroupName: WildcardMiss
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.15832077777988
    GroupName: WildcardMiss
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 23.5671708085144
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2095
---


### Aliases


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.006846|1x           |14606.64/s|
|Get-Command      |100        |00:00:00.022018|3.22x        |4541.68/s |


### All


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.006340|1x           |15772.37/s|
|Get-Command      |100        |00:00:00.020385|3.22x        |4905.57/s |


### Applications


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.701075|1x           |142.64/s  |
|Get-Command      |100        |00:00:02.138223|3.05x        |46.77/s   |


### Cmdlets


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.006591|1x           |15171.74/s|
|Get-Command      |100        |00:00:00.014470|2.2x         |6910.42/s |


### Function


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.006658|1x           |15017.72/s|
|Get-Command      |100        |00:00:00.014816|2.23x        |6749.41/s |


### WildcardMiss


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:01.343495|1x           |74.43/s   |
|Get-Command      |100        |00:00:04.243190|3.16x        |23.57/s   |
