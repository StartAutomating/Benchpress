---
layout: Benchmark

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 7648623
      Days: 0
      Hours: 0
      Milliseconds: 764
      Minutes: 0
      Seconds: 0
      TotalDays: 8.85257291666667e-06
      TotalHours: 0.00021246175
      TotalMilliseconds: 764.8623
      TotalMinutes: 0.012747705
      TotalSeconds: 0.7648623
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        GroupName: Applications
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 130.742487896187
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 22791090
      Days: 0
      Hours: 0
      Milliseconds: 279
      Minutes: 0
      Seconds: 2
      TotalDays: 2.63785763888889e-05
      TotalHours: 0.000633085833333333
      TotalMilliseconds: 2279.109
      TotalMinutes: 0.03798515
      TotalSeconds: 2.279109
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        GroupName: Applications
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
    RelativeSpeed: 2.97976380846592
    GroupName: Applications
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 43.8767957127105
    BenchmarkInput: 
      GroupName: Applications
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 89867
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04012731481481e-07
      TotalHours: 2.49630555555556e-06
      TotalMilliseconds: 8.9867
      TotalMinutes: 0.000149778333333333
      TotalSeconds: 0.0089867
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 11127.5551648547
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 190960
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.21018518518519e-07
      TotalHours: 5.30444444444444e-06
      TotalMilliseconds: 19.096
      TotalMinutes: 0.000318266666666667
      TotalSeconds: 0.019096
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        GroupName: Cmdlets
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
    RelativeSpeed: 2.12491793428066
    GroupName: Cmdlets
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 5236.69878508588
    BenchmarkInput: 
      GroupName: Cmdlets
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 96897
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.12149305555556e-07
      TotalHours: 2.69158333333333e-06
      TotalMilliseconds: 9.6897
      TotalMinutes: 0.000161495
      TotalSeconds: 0.0096897
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        GroupName: Aliases
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 10320.2369526404
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 365013
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.2246875e-07
      TotalHours: 1.013925e-05
      TotalMilliseconds: 36.5013
      TotalMinutes: 0.000608355
      TotalSeconds: 0.0365013
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        GroupName: Aliases
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
    RelativeSpeed: 3.76702065079414
    GroupName: Aliases
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 2739.6284515894
    BenchmarkInput: 
      GroupName: Aliases
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 98019
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.13447916666667e-07
      TotalHours: 2.72275e-06
      TotalMilliseconds: 9.8019
      TotalMinutes: 0.000163365
      TotalSeconds: 0.0098019
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        GroupName: Function
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 10202.1036737775
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 205548
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.37902777777778e-07
      TotalHours: 5.70966666666667e-06
      TotalMilliseconds: 20.5548
      TotalMinutes: 0.00034258
      TotalSeconds: 0.0205548
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        GroupName: Function
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
    RelativeSpeed: 2.09702200593762
    GroupName: Function
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 4865.04368809232
    BenchmarkInput: 
      GroupName: Function
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 95467
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.10494212962963e-07
      TotalHours: 2.65186111111111e-06
      TotalMilliseconds: 9.5467
      TotalMinutes: 0.000159111666666667
      TotalSeconds: 0.0095467
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        GroupName: All
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 10474.8237610902
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 218326
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.5269212962963e-07
      TotalHours: 6.06461111111111e-06
      TotalMilliseconds: 21.8326
      TotalMinutes: 0.000363876666666667
      TotalSeconds: 0.0218326
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        GroupName: All
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
    RelativeSpeed: 2.28692637246378
    GroupName: All
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 4580.30651411192
    BenchmarkInput: 
      GroupName: All
      FileName: Comparing Command Lookup
  - Technique: $executionContext
    Time: 
      Ticks: 14300642
      Days: 0
      Hours: 0
      Milliseconds: 430
      Minutes: 0
      Seconds: 1
      TotalDays: 1.65516689814815e-05
      TotalHours: 0.000397240055555556
      TotalMilliseconds: 1430.0642
      TotalMinutes: 0.0238344033333333
      TotalSeconds: 1.4300642
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 69.9269305531878
    BenchmarkInput: 
      GroupName: WildcardMiss
      FileName: Comparing Command Lookup
  - Technique: Get-Command
    Time: 
      Ticks: 45709172
      Days: 0
      Hours: 0
      Milliseconds: 570
      Minutes: 0
      Seconds: 4
      TotalDays: 5.29041342592593e-05
      TotalHours: 0.00126969922222222
      TotalMilliseconds: 4570.9172
      TotalMinutes: 0.0761819533333333
      TotalSeconds: 4.5709172
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        GroupName: WildcardMiss
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
    RelativeSpeed: 3.19630209608771
    GroupName: WildcardMiss
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    Throughput: 21.8774472659448
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
|$executionContext|00:00:00.009689|1x           |10320.24/s|
|Get-Command      |00:00:00.036501|3.77x        |2739.63/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.009546|1x           |10474.82/s|
|Get-Command      |00:00:00.021832|2.29x        |4580.31/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.764862|1x           |130.74/s  |
|Get-Command      |00:00:02.279109|2.98x        |43.88/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.008986|1x           |11127.56/s|
|Get-Command      |00:00:00.019096|2.12x        |5236.7/s  |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.009801|1x           |10202.1/s |
|Get-Command      |00:00:00.020554|2.1x         |4865.04/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.430064|1x           |69.93/s   |
|Get-Command      |00:00:04.570917|3.2x         |21.88/s   |
