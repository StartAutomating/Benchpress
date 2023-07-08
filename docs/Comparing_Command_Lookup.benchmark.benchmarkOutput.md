---
layout: Benchmark

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 6243490
      Days: 0
      Hours: 0
      Milliseconds: 624
      Minutes: 0
      Seconds: 0
      TotalDays: 7.22626157407407e-06
      TotalHours: 0.000173430277777778
      TotalMilliseconds: 624.349
      TotalMinutes: 0.0104058166666667
      TotalSeconds: 0.624349
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
    Throughput: 160.166829769888
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 17120503
      Days: 0
      Hours: 0
      Milliseconds: 712
      Minutes: 0
      Seconds: 1
      TotalDays: 1.98153969907407e-05
      TotalHours: 0.000475569527777778
      TotalMilliseconds: 1712.0503
      TotalMinutes: 0.0285341716666667
      TotalSeconds: 1.7120503
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        GroupName: Applications
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.74213668957586
    GroupName: Applications
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 58.4094988330658
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 60139
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 6.96053240740741e-08
      TotalHours: 1.67052777777778e-06
      TotalMilliseconds: 6.0139
      TotalMinutes: 0.000100231666666667
      TotalSeconds: 0.0060139
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
    Throughput: 16628.1447978849
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 120514
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.39483796296296e-07
      TotalHours: 3.34761111111111e-06
      TotalMilliseconds: 12.0514
      TotalMinutes: 0.000200856666666667
      TotalSeconds: 0.0120514
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        GroupName: Cmdlets
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.0039242421723
    GroupName: Cmdlets
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 8297.79112800173
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 56711
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.56377314814815e-08
      TotalHours: 1.57530555555556e-06
      TotalMilliseconds: 5.6711
      TotalMinutes: 9.45183333333333e-05
      TotalSeconds: 0.0056711
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
    Throughput: 17633.2633880552
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 180327
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.08711805555556e-07
      TotalHours: 5.00908333333333e-06
      TotalMilliseconds: 18.0327
      TotalMinutes: 0.000300545
      TotalSeconds: 0.0180327
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        GroupName: Aliases
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.17975348697783
    GroupName: Aliases
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 5545.48126459155
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 55264
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.3962962962963e-08
      TotalHours: 1.53511111111111e-06
      TotalMilliseconds: 5.5264
      TotalMinutes: 9.21066666666667e-05
      TotalSeconds: 0.0055264
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
    Throughput: 18094.9623624783
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 121083
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.40142361111111e-07
      TotalHours: 3.36341666666667e-06
      TotalMilliseconds: 12.1083
      TotalMinutes: 0.000201805
      TotalSeconds: 0.0121083
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        GroupName: Function
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 2.19099232773596
    GroupName: Function
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 8258.79768423313
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 51868
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.00324074074074e-08
      TotalHours: 1.44077777777778e-06
      TotalMilliseconds: 5.1868
      TotalMinutes: 8.64466666666667e-05
      TotalSeconds: 0.0051868
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
    Throughput: 19279.7100331611
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 164185
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.90028935185185e-07
      TotalHours: 4.56069444444444e-06
      TotalMilliseconds: 16.4185
      TotalMinutes: 0.000273641666666667
      TotalSeconds: 0.0164185
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        GroupName: All
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.16543919179456
    GroupName: All
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 6090.69037975455
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 11194781
      Days: 0
      Hours: 0
      Milliseconds: 119
      Minutes: 0
      Seconds: 1
      TotalDays: 1.29569224537037e-05
      TotalHours: 0.000310966138888889
      TotalMilliseconds: 1119.4781
      TotalMinutes: 0.0186579683333333
      TotalSeconds: 1.1194781
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
    Throughput: 89.3273392306647
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 33791299
      Days: 0
      Hours: 0
      Milliseconds: 379
      Minutes: 0
      Seconds: 3
      TotalDays: 3.91102997685185e-05
      TotalHours: 0.000938647194444444
      TotalMilliseconds: 3379.1299
      TotalMinutes: 0.0563188316666667
      TotalSeconds: 3.3791299
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        GroupName: WildcardMiss
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        FileName: Comparing Command Lookup
    RelativeSpeed: 3.01848682881782
    GroupName: WildcardMiss
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 29.593416932566
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2594
---
Comparing Command Lookup
------------------------
> @2594 Mhz


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005671|1x           |17633.26/s|
|Get-Command      |00:00:00.018032|3.18x        |5545.48/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005186|1x           |19279.71/s|
|Get-Command      |00:00:00.016418|3.17x        |6090.69/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.624349|1x           |160.17/s  |
|Get-Command      |00:00:01.712050|2.74x        |58.41/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006013|1x           |16628.14/s|
|Get-Command      |00:00:00.012051|2x           |8297.79/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005526|1x           |18094.96/s|
|Get-Command      |00:00:00.012108|2.19x        |8258.8/s  |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.119478|1x           |89.33/s   |
|Get-Command      |00:00:03.379129|3.02x        |29.59/s   |
