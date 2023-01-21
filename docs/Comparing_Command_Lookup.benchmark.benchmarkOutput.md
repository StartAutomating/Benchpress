---
layout: Benchmark

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 7147615
      Days: 0
      Hours: 0
      Milliseconds: 714
      Minutes: 0
      Seconds: 0
      TotalDays: 8.2727025462963e-06
      TotalHours: 0.000198544861111111
      TotalMilliseconds: 714.7615
      TotalMinutes: 0.0119126916666667
      TotalSeconds: 0.7147615
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        GroupName: Applications
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 139.906808075141
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 20125116
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 2
      TotalDays: 2.32929583333333e-05
      TotalHours: 0.000559031
      TotalMilliseconds: 2012.5116
      TotalMinutes: 0.03354186
      TotalSeconds: 2.0125116
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        GroupName: Applications
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
    RelativeSpeed: 2.81564074170195
    GroupName: Applications
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 49.6891545867363
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 67998
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.87013888888889e-08
      TotalHours: 1.88883333333333e-06
      TotalMilliseconds: 6.7998
      TotalMinutes: 0.00011333
      TotalSeconds: 0.0067998
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 14706.3148916145
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 139438
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.61386574074074e-07
      TotalHours: 3.87327777777778e-06
      TotalMilliseconds: 13.9438
      TotalMinutes: 0.000232396666666667
      TotalSeconds: 0.0139438
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
    RelativeSpeed: 2.05061913585694
    GroupName: Cmdlets
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 7171.64617966408
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 68348
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.91064814814815e-08
      TotalHours: 1.89855555555556e-06
      TotalMilliseconds: 6.8348
      TotalMinutes: 0.000113913333333333
      TotalSeconds: 0.0068348
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        GroupName: Aliases
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 14631.0060279745
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 202994
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.34946759259259e-07
      TotalHours: 5.63872222222222e-06
      TotalMilliseconds: 20.2994
      TotalMinutes: 0.000338323333333333
      TotalSeconds: 0.0202994
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        GroupName: Aliases
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
    RelativeSpeed: 2.97000643764265
    GroupName: Aliases
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 4926.25397795009
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 64674
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.48541666666667e-08
      TotalHours: 1.7965e-06
      TotalMilliseconds: 6.4674
      TotalMinutes: 0.00010779
      TotalSeconds: 0.0064674
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        GroupName: Function
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 15462.1640844853
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 144723
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.67503472222222e-07
      TotalHours: 4.02008333333333e-06
      TotalMilliseconds: 14.4723
      TotalMinutes: 0.000241205
      TotalSeconds: 0.0144723
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        GroupName: Function
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
    RelativeSpeed: 2.23773077279896
    GroupName: Function
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 6909.75173262025
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 61234
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.08726851851852e-08
      TotalHours: 1.70094444444444e-06
      TotalMilliseconds: 6.1234
      TotalMinutes: 0.000102056666666667
      TotalSeconds: 0.0061234
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        GroupName: All
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 16330.7966162589
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 164191
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.9003587962963e-07
      TotalHours: 4.56086111111111e-06
      TotalMilliseconds: 16.4191
      TotalMinutes: 0.000273651666666667
      TotalSeconds: 0.0164191
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        GroupName: All
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
    RelativeSpeed: 2.68136982722017
    GroupName: All
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 6090.4678088324
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 12668715
      Days: 0
      Hours: 0
      Milliseconds: 266
      Minutes: 0
      Seconds: 1
      TotalDays: 1.46628645833333e-05
      TotalHours: 0.00035190875
      TotalMilliseconds: 1266.8715
      TotalMinutes: 0.021114525
      TotalSeconds: 1.2668715
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 78.9346038647171
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 41870233
      Days: 0
      Hours: 0
      Milliseconds: 187
      Minutes: 0
      Seconds: 4
      TotalDays: 4.84609178240741e-05
      TotalHours: 0.00116306202777778
      TotalMilliseconds: 4187.0233
      TotalMinutes: 0.0697837216666667
      TotalSeconds: 4.1870233
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
    RelativeSpeed: 3.30501025557841
    GroupName: WildcardMiss
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 23.8833158630858
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
FileName: Comparing Command Lookup
ClockSpeed: 2095
---
Comparing Command Lookup
------------------------
> @2095 Mhz


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006834|1x           |14631.01/s|
|Get-Command      |00:00:00.020299|2.97x        |4926.25/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006123|1x           |16330.8/s |
|Get-Command      |00:00:00.016419|2.68x        |6090.47/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.714761|1x           |139.91/s  |
|Get-Command      |00:00:02.012511|2.82x        |49.69/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006799|1x           |14706.31/s|
|Get-Command      |00:00:00.013943|2.05x        |7171.65/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006467|1x           |15462.16/s|
|Get-Command      |00:00:00.014472|2.24x        |6909.75/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.266871|1x           |78.93/s   |
|Get-Command      |00:00:04.187023|3.31x        |23.88/s   |
