---
layout: Benchmark

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 6057345
      Days: 0
      Hours: 0
      Milliseconds: 605
      Minutes: 0
      Seconds: 0
      TotalDays: 7.01081597222222e-06
      TotalHours: 0.000168259583333333
      TotalMilliseconds: 605.7345
      TotalMinutes: 0.010095575
      TotalSeconds: 0.6057345
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        GroupName: Applications
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 165.088830172295
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 18871452
      Days: 0
      Hours: 0
      Milliseconds: 887
      Minutes: 0
      Seconds: 1
      TotalDays: 2.18419583333333e-05
      TotalHours: 0.000524207
      TotalMilliseconds: 1887.1452
      TotalMinutes: 0.03145242
      TotalSeconds: 1.8871452
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        GroupName: Applications
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.11546593433262
    GroupName: Applications
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 52.9900931841387
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 54640
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.32407407407407e-08
      TotalHours: 1.51777777777778e-06
      TotalMilliseconds: 5.464
      TotalMinutes: 9.10666666666667e-05
      TotalSeconds: 0.005464
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        GroupName: Cmdlets
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 18301.6105417277
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 121260
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.40347222222222e-07
      TotalHours: 3.36833333333333e-06
      TotalMilliseconds: 12.126
      TotalMinutes: 0.0002021
      TotalSeconds: 0.012126
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        GroupName: Cmdlets
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.2192532942899
    GroupName: Cmdlets
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 8246.742536698
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 56040
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.48611111111111e-08
      TotalHours: 1.55666666666667e-06
      TotalMilliseconds: 5.604
      TotalMinutes: 9.34e-05
      TotalSeconds: 0.005604
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        GroupName: Aliases
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 17844.3968593862
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 422071
      Days: 0
      Hours: 0
      Milliseconds: 42
      Minutes: 0
      Seconds: 0
      TotalDays: 4.88508101851852e-07
      TotalHours: 1.17241944444444e-05
      TotalMilliseconds: 42.2071
      TotalMinutes: 0.000703451666666667
      TotalSeconds: 0.0422071
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        GroupName: Aliases
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 7.53160242683797
    GroupName: Aliases
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 2369.26962525262
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 54582
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.31736111111111e-08
      TotalHours: 1.51616666666667e-06
      TotalMilliseconds: 5.4582
      TotalMinutes: 9.097e-05
      TotalSeconds: 0.0054582
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        GroupName: Function
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 18321.058224323
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 123025
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.42390046296296e-07
      TotalHours: 3.41736111111111e-06
      TotalMilliseconds: 12.3025
      TotalMinutes: 0.000205041666666667
      TotalSeconds: 0.0123025
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        GroupName: Function
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.25394818804734
    GroupName: Function
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 8128.42918106076
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 51116
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.9162037037037e-08
      TotalHours: 1.41988888888889e-06
      TotalMilliseconds: 5.1116
      TotalMinutes: 8.51933333333333e-05
      TotalSeconds: 0.0051116
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        GroupName: All
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 19563.3461147195
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 137845
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.59542824074074e-07
      TotalHours: 3.82902777777778e-06
      TotalMilliseconds: 13.7845
      TotalMinutes: 0.000229741666666667
      TotalSeconds: 0.0137845
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        GroupName: All
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.6967094451835
    GroupName: All
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 7254.52500997497
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 11054944
      Days: 0
      Hours: 0
      Milliseconds: 105
      Minutes: 0
      Seconds: 1
      TotalDays: 1.27950740740741e-05
      TotalHours: 0.000307081777777778
      TotalMilliseconds: 1105.4944
      TotalMinutes: 0.0184249066666667
      TotalSeconds: 1.1054944
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        GroupName: WildcardMiss
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 90.4572650933374
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 33865501
      Days: 0
      Hours: 0
      Milliseconds: 386
      Minutes: 0
      Seconds: 3
      TotalDays: 3.9196181712963e-05
      TotalHours: 0.000940708361111111
      TotalMilliseconds: 3386.5501
      TotalMinutes: 0.0564425016666667
      TotalSeconds: 3.3865501
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        GroupName: WildcardMiss
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.06338060147568
    GroupName: WildcardMiss
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 29.5285754077579
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
|$executionContext|00:00:00.005604|1x           |17844.4/s |
|Get-Command      |00:00:00.042207|7.53x        |2369.27/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005111|1x           |19563.35/s|
|Get-Command      |00:00:00.013784|2.7x         |7254.53/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.605734|1x           |165.09/s  |
|Get-Command      |00:00:01.887145|3.12x        |52.99/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005464|1x           |18301.61/s|
|Get-Command      |00:00:00.012126|2.22x        |8246.74/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005458|1x           |18321.06/s|
|Get-Command      |00:00:00.012302|2.25x        |8128.43/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.105494|1x           |90.46/s   |
|Get-Command      |00:00:03.386550|3.06x        |29.53/s   |
