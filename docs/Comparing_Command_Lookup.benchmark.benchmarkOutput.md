---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 6304081
      Days: 0
      Hours: 0
      Milliseconds: 630
      Minutes: 0
      Seconds: 0
      TotalDays: 7.2963900462963e-06
      TotalHours: 0.000175113361111111
      TotalMilliseconds: 630.4081
      TotalMinutes: 0.0105068016666667
      TotalSeconds: 0.6304081
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        GroupName: Applications
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 158.627403423275
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 17371990
      Days: 0
      Hours: 0
      Milliseconds: 737
      Minutes: 0
      Seconds: 1
      TotalDays: 2.01064699074074e-05
      TotalHours: 0.000482555277777778
      TotalMilliseconds: 1737.199
      TotalMinutes: 0.0289533166666667
      TotalSeconds: 1.737199
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        GroupName: Applications
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.75567366599509
    GroupName: Applications
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 57.5639290605164
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 62671
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.25358796296296e-08
      TotalHours: 1.74086111111111e-06
      TotalMilliseconds: 6.2671
      TotalMinutes: 0.000104451666666667
      TotalSeconds: 0.0062671
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        GroupName: Cmdlets
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 15956.3434443363
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 122871
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.42211805555556e-07
      TotalHours: 3.41308333333333e-06
      TotalMilliseconds: 12.2871
      TotalMinutes: 0.000204785
      TotalSeconds: 0.0122871
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        GroupName: Cmdlets
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1.96057187534905
    GroupName: Cmdlets
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 8138.61692344003
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 97162
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.12456018518519e-07
      TotalHours: 2.69894444444444e-06
      TotalMilliseconds: 9.7162
      TotalMinutes: 0.000161936666666667
      TotalSeconds: 0.0097162
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        GroupName: Aliases
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 10292.0895000103
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 150551
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.74248842592593e-07
      TotalHours: 4.18197222222222e-06
      TotalMilliseconds: 15.0551
      TotalMinutes: 0.000250918333333333
      TotalSeconds: 0.0150551
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        GroupName: Aliases
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1.54948436631605
    GroupName: Aliases
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 6642.26740440117
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 56632
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.55462962962963e-08
      TotalHours: 1.57311111111111e-06
      TotalMilliseconds: 5.6632
      TotalMinutes: 9.43866666666667e-05
      TotalSeconds: 0.0056632
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        GroupName: Function
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 17657.8612798418
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 127815
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.47934027777778e-07
      TotalHours: 3.55041666666667e-06
      TotalMilliseconds: 12.7815
      TotalMinutes: 0.000213025
      TotalSeconds: 0.0127815
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        GroupName: Function
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.25693953948298
    GroupName: Function
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 7823.80784727927
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 54737
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.33530092592593e-08
      TotalHours: 1.52047222222222e-06
      TotalMilliseconds: 5.4737
      TotalMinutes: 9.12283333333333e-05
      TotalSeconds: 0.0054737
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        GroupName: All
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 18269.1780696786
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 177934
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.0594212962963e-07
      TotalHours: 4.94261111111111e-06
      TotalMilliseconds: 17.7934
      TotalMinutes: 0.000296556666666667
      TotalSeconds: 0.0177934
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        GroupName: All
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.2507079306502
    GroupName: All
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 5620.06137107017
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 11207545
      Days: 0
      Hours: 0
      Milliseconds: 120
      Minutes: 0
      Seconds: 1
      TotalDays: 1.29716956018519e-05
      TotalHours: 0.000311320694444444
      TotalMilliseconds: 1120.7545
      TotalMinutes: 0.0186792416666667
      TotalSeconds: 1.1207545
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        GroupName: WildcardMiss
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 89.225606499907
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 35176811
      Days: 0
      Hours: 0
      Milliseconds: 517
      Minutes: 0
      Seconds: 3
      TotalDays: 4.07139016203704e-05
      TotalHours: 0.000977133638888889
      TotalMilliseconds: 3517.6811
      TotalMinutes: 0.0586280183333333
      TotalSeconds: 3.5176811
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        GroupName: WildcardMiss
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.1386722962076
    GroupName: WildcardMiss
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 28.427818542164
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2594
---


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.009716|1x           |10292.09/s|
|Get-Command      |00:00:00.015055|1.55x        |6642.27/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005473|1x           |18269.18/s|
|Get-Command      |00:00:00.017793|3.25x        |5620.06/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.630408|1x           |158.63/s  |
|Get-Command      |00:00:01.737199|2.76x        |57.56/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006267|1x           |15956.34/s|
|Get-Command      |00:00:00.012287|1.96x        |8138.62/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005663|1x           |17657.86/s|
|Get-Command      |00:00:00.012781|2.26x        |7823.81/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.120754|1x           |89.23/s   |
|Get-Command      |00:00:03.517681|3.14x        |28.43/s   |
