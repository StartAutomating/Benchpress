---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 6345986
      Days: 0
      Hours: 0
      Milliseconds: 634
      Minutes: 0
      Seconds: 0
      TotalDays: 7.3448912037037e-06
      TotalHours: 0.000176277388888889
      TotalMilliseconds: 634.5986
      TotalMinutes: 0.0105766433333333
      TotalSeconds: 0.6345986
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        GroupName: Applications
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 157.579925326025
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 18129226
      Days: 0
      Hours: 0
      Milliseconds: 812
      Minutes: 0
      Seconds: 1
      TotalDays: 2.0982900462963e-05
      TotalHours: 0.000503589611111111
      TotalMilliseconds: 1812.9226
      TotalMinutes: 0.0302153766666667
      TotalSeconds: 1.8129226
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        GroupName: Applications
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.85680207929863
    GroupName: Applications
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 55.1595528678389
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 57636
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.67083333333333e-08
      TotalHours: 1.601e-06
      TotalMilliseconds: 5.7636
      TotalMinutes: 9.606e-05
      TotalSeconds: 0.0057636
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 17350.2671941148
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 224838
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.60229166666667e-07
      TotalHours: 6.2455e-06
      TotalMilliseconds: 22.4838
      TotalMinutes: 0.00037473
      TotalSeconds: 0.0224838
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.90099937539038
    GroupName: Cmdlets
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 4447.64675010452
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 57991
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.7119212962963e-08
      TotalHours: 1.61086111111111e-06
      TotalMilliseconds: 5.7991
      TotalMinutes: 9.66516666666667e-05
      TotalSeconds: 0.0057991
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        GroupName: Aliases
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 17244.0551120001
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 143129
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.65658564814815e-07
      TotalHours: 3.97580555555556e-06
      TotalMilliseconds: 14.3129
      TotalMinutes: 0.000238548333333333
      TotalSeconds: 0.0143129
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        GroupName: Aliases
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.46812436412547
    GroupName: Aliases
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 6986.70430171384
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 53878
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.23587962962963e-08
      TotalHours: 1.49661111111111e-06
      TotalMilliseconds: 5.3878
      TotalMinutes: 8.97966666666667e-05
      TotalSeconds: 0.0053878
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        GroupName: Function
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 18560.4513901778
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 123378
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.42798611111111e-07
      TotalHours: 3.42716666666667e-06
      TotalMilliseconds: 12.3378
      TotalMinutes: 0.00020563
      TotalSeconds: 0.0123378
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        GroupName: Function
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.28995137161736
    GroupName: Function
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 8105.17272123069
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 52682
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.0974537037037e-08
      TotalHours: 1.46338888888889e-06
      TotalMilliseconds: 5.2682
      TotalMinutes: 8.78033333333333e-05
      TotalSeconds: 0.0052682
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        GroupName: All
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 18981.8154208268
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 159985
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.85167824074074e-07
      TotalHours: 4.44402777777778e-06
      TotalMilliseconds: 15.9985
      TotalMinutes: 0.000266641666666667
      TotalSeconds: 0.0159985
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        GroupName: All
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.03680574010098
    GroupName: All
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 6250.58599243679
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 11021450
      Days: 0
      Hours: 0
      Milliseconds: 102
      Minutes: 0
      Seconds: 1
      TotalDays: 1.27563078703704e-05
      TotalHours: 0.000306151388888889
      TotalMilliseconds: 1102.145
      TotalMinutes: 0.0183690833333333
      TotalSeconds: 1.102145
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 90.7321631908687
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 34169456
      Days: 0
      Hours: 0
      Milliseconds: 416
      Minutes: 0
      Seconds: 3
      TotalDays: 3.95479814814815e-05
      TotalHours: 0.000949151555555556
      TotalMilliseconds: 3416.9456
      TotalMinutes: 0.0569490933333333
      TotalSeconds: 3.4169456
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.10026865793521
    GroupName: WildcardMiss
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 29.2659034431218
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
|$executionContext|00:00:00.005799|1x           |17244.06/s|
|Get-Command      |00:00:00.014312|2.47x        |6986.7/s  |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005268|1x           |18981.82/s|
|Get-Command      |00:00:00.015998|3.04x        |6250.59/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.634598|1x           |157.58/s  |
|Get-Command      |00:00:01.812922|2.86x        |55.16/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005763|1x           |17350.27/s|
|Get-Command      |00:00:00.022483|3.9x         |4447.65/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005387|1x           |18560.45/s|
|Get-Command      |00:00:00.012337|2.29x        |8105.17/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.102145|1x           |90.73/s   |
|Get-Command      |00:00:03.416945|3.1x         |29.27/s   |
