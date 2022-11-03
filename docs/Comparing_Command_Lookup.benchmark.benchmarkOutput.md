---
layout: Benchmark

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 7202740
      Days: 0
      Hours: 0
      Milliseconds: 720
      Minutes: 0
      Seconds: 0
      TotalDays: 8.33650462962963e-06
      TotalHours: 0.000200076111111111
      TotalMilliseconds: 720.274
      TotalMinutes: 0.0120045666666667
      TotalSeconds: 0.720274
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        FileName: Comparing Command Lookup
        GroupName: Applications
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 138.836054057206
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 20988829
      Days: 0
      Hours: 0
      Milliseconds: 98
      Minutes: 0
      Seconds: 2
      TotalDays: 2.42926261574074e-05
      TotalHours: 0.000583023027777778
      TotalMilliseconds: 2098.8829
      TotalMinutes: 0.0349813816666667
      TotalSeconds: 2.0988829
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        FileName: Comparing Command Lookup
        GroupName: Applications
    RelativeSpeed: 2.91400619764145
    GroupName: Applications
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 47.6443921668998
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 93332
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08023148148148e-07
      TotalHours: 2.59255555555556e-06
      TotalMilliseconds: 9.3332
      TotalMinutes: 0.000155553333333333
      TotalSeconds: 0.0093332
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 10714.4387776968
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 185298
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.14465277777778e-07
      TotalHours: 5.14716666666667e-06
      TotalMilliseconds: 18.5298
      TotalMinutes: 0.00030883
      TotalSeconds: 0.0185298
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
    RelativeSpeed: 1.98536407662967
    GroupName: Cmdlets
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 5396.71232285292
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 79640
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.21759259259259e-08
      TotalHours: 2.21222222222222e-06
      TotalMilliseconds: 7.964
      TotalMinutes: 0.000132733333333333
      TotalSeconds: 0.007964
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        FileName: Comparing Command Lookup
        GroupName: Aliases
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 12556.5042692115
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 338215
      Days: 0
      Hours: 0
      Milliseconds: 33
      Minutes: 0
      Seconds: 0
      TotalDays: 3.91452546296296e-07
      TotalHours: 9.39486111111111e-06
      TotalMilliseconds: 33.8215
      TotalMinutes: 0.000563691666666667
      TotalSeconds: 0.0338215
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        FileName: Comparing Command Lookup
        GroupName: Aliases
    RelativeSpeed: 4.24679809141135
    GroupName: Aliases
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 2956.6991410789
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 81971
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.48738425925926e-08
      TotalHours: 2.27697222222222e-06
      TotalMilliseconds: 8.1971
      TotalMinutes: 0.000136618333333333
      TotalSeconds: 0.0081971
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        FileName: Comparing Command Lookup
        GroupName: Function
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 12199.436386039
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 181525
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.1009837962963e-07
      TotalHours: 5.04236111111111e-06
      TotalMilliseconds: 18.1525
      TotalMinutes: 0.000302541666666667
      TotalSeconds: 0.0181525
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        FileName: Comparing Command Lookup
        GroupName: Function
    RelativeSpeed: 2.21450268997572
    GroupName: Function
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 5508.88307395676
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 78473
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.08252314814815e-08
      TotalHours: 2.17980555555556e-06
      TotalMilliseconds: 7.8473
      TotalMinutes: 0.000130788333333333
      TotalSeconds: 0.0078473
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        FileName: Comparing Command Lookup
        GroupName: All
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 12743.2365272132
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 198936
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.3025e-07
      TotalHours: 5.526e-06
      TotalMilliseconds: 19.8936
      TotalMinutes: 0.00033156
      TotalSeconds: 0.0198936
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        FileName: Comparing Command Lookup
        GroupName: All
    RelativeSpeed: 2.53508850177768
    GroupName: All
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 5026.74226887039
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 13575161
      Days: 0
      Hours: 0
      Milliseconds: 357
      Minutes: 0
      Seconds: 1
      TotalDays: 1.57119918981481e-05
      TotalHours: 0.000377087805555556
      TotalMilliseconds: 1357.5161
      TotalMinutes: 0.0226252683333333
      TotalSeconds: 1.3575161
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 73.6639513888638
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 46247282
      Days: 0
      Hours: 0
      Milliseconds: 624
      Minutes: 0
      Seconds: 4
      TotalDays: 5.35269467592593e-05
      TotalHours: 0.00128464672222222
      TotalMilliseconds: 4624.7282
      TotalMinutes: 0.0770788033333333
      TotalSeconds: 4.6247282
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
    RelativeSpeed: 3.40675753311508
    GroupName: WildcardMiss
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 21.6228923464086
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2295
---
Comparing Command Lookup
------------------------
> @2295 Mhz


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.007964|1x           |12556.5/s |
|Get-Command      |00:00:00.033821|4.25x        |2956.7/s  |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.007847|1x           |12743.24/s|
|Get-Command      |00:00:00.019893|2.54x        |5026.74/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.720274|1x           |138.84/s  |
|Get-Command      |00:00:02.098882|2.91x        |47.64/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.009333|1x           |10714.44/s|
|Get-Command      |00:00:00.018529|1.99x        |5396.71/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.008197|1x           |12199.44/s|
|Get-Command      |00:00:00.018152|2.21x        |5508.88/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.357516|1x           |73.66/s   |
|Get-Command      |00:00:04.624728|3.41x        |21.62/s   |
