---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 7786693
      Days: 0
      Hours: 0
      Milliseconds: 778
      Minutes: 0
      Seconds: 0
      TotalDays: 9.01237615740741e-06
      TotalHours: 0.000216297027777778
      TotalMilliseconds: 778.6693
      TotalMinutes: 0.0129778216666667
      TotalSeconds: 0.7786693
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Applications
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 128.424223222875
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Applications
  - Technique: Get-Command
    Time: 
      Ticks: 22502664
      Days: 0
      Hours: 0
      Milliseconds: 250
      Minutes: 0
      Seconds: 2
      TotalDays: 2.604475e-05
      TotalHours: 0.000625074
      TotalMilliseconds: 2250.2664
      TotalMinutes: 0.03750444
      TotalSeconds: 2.2502664
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Applications
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
    RelativeSpeed: 2.88988714464536
    GroupName: Applications
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 44.4391828451956
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Applications
  - Technique: $executionContext
    Time: 
      Ticks: 90609
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04871527777778e-07
      TotalHours: 2.51691666666667e-06
      TotalMilliseconds: 9.0609
      TotalMinutes: 0.000151015
      TotalSeconds: 0.0090609
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 11036.4312595879
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
  - Technique: Get-Command
    Time: 
      Ticks: 192551
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.22859953703704e-07
      TotalHours: 5.34863888888889e-06
      TotalMilliseconds: 19.2551
      TotalMinutes: 0.000320918333333333
      TotalSeconds: 0.0192551
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Cmdlets
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
    RelativeSpeed: 2.12507587546491
    GroupName: Cmdlets
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 5193.42927328344
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
  - Technique: Get-Command
    Time: 
      Ticks: 230435
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.66707175925926e-07
      TotalHours: 6.40097222222222e-06
      TotalMilliseconds: 23.0435
      TotalMinutes: 0.000384058333333333
      TotalSeconds: 0.0230435
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Aliases
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 4339.61854752967
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Aliases
  - Technique: $executionContext
    Time: 
      Ticks: 474891
      Days: 0
      Hours: 0
      Milliseconds: 47
      Minutes: 0
      Seconds: 0
      TotalDays: 5.49642361111111e-07
      TotalHours: 1.31914166666667e-05
      TotalMilliseconds: 47.4891
      TotalMinutes: 0.000791485
      TotalSeconds: 0.0474891
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Aliases
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
    RelativeSpeed: 2.06084579165491
    GroupName: Aliases
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 2105.74637127257
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Aliases
  - Technique: $executionContext
    Time: 
      Ticks: 92758
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.07358796296296e-07
      TotalHours: 2.57661111111111e-06
      TotalMilliseconds: 9.2758
      TotalMinutes: 0.000154596666666667
      TotalSeconds: 0.0092758
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Function
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 10780.7412837707
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Function
  - Technique: Get-Command
    Time: 
      Ticks: 202016
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.33814814814815e-07
      TotalHours: 5.61155555555556e-06
      TotalMilliseconds: 20.2016
      TotalMinutes: 0.000336693333333333
      TotalSeconds: 0.0202016
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: Function
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
    RelativeSpeed: 2.17788223118222
    GroupName: Function
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 4950.10296214161
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Function
  - Technique: $executionContext
    Time: 
      Ticks: 79909
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.24872685185185e-08
      TotalHours: 2.21969444444444e-06
      TotalMilliseconds: 7.9909
      TotalMinutes: 0.000133181666666667
      TotalSeconds: 0.0079909
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: All
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 12514.2349422468
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: All
  - Technique: Get-Command
    Time: 
      Ticks: 227798
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.63655092592593e-07
      TotalHours: 6.32772222222222e-06
      TotalMilliseconds: 22.7798
      TotalMinutes: 0.000379663333333333
      TotalSeconds: 0.0227798
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: All
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
    RelativeSpeed: 2.85071769137394
    GroupName: All
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 4389.8541690445
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: All
  - Technique: $executionContext
    Time: 
      Ticks: 14142967
      Days: 0
      Hours: 0
      Milliseconds: 414
      Minutes: 0
      Seconds: 1
      TotalDays: 1.63691747685185e-05
      TotalHours: 0.000392860194444444
      TotalMilliseconds: 1414.2967
      TotalMinutes: 0.0235716116666667
      TotalSeconds: 1.4142967
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 70.7065214816665
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
  - Technique: Get-Command
    Time: 
      Ticks: 44727831
      Days: 0
      Hours: 0
      Milliseconds: 472
      Minutes: 0
      Seconds: 4
      TotalDays: 5.17683229166667e-05
      TotalHours: 0.00124243975
      TotalMilliseconds: 4472.7831
      TotalMinutes: 0.074546385
      TotalSeconds: 4.4727831
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        GroupName: WildcardMiss
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
    RelativeSpeed: 3.16254934342985
    GroupName: WildcardMiss
    ClockSpeed: 2295
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 22.3574445181569
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
FileName: Comparing Command Lookup
ClockSpeed: 2295
---


### Aliases


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|Get-Command      |100        |00:00:00.023043|1x           |4339.62/s |
|$executionContext|100        |00:00:00.047489|2.06x        |2105.75/s |


### All


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.007990|1x           |12514.23/s|
|Get-Command      |100        |00:00:00.022779|2.85x        |4389.85/s |


### Applications


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.778669|1x           |128.42/s  |
|Get-Command      |100        |00:00:02.250266|2.89x        |44.44/s   |


### Cmdlets


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.009060|1x           |11036.43/s|
|Get-Command      |100        |00:00:00.019255|2.13x        |5193.43/s |


### Function


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.009275|1x           |10780.74/s|
|Get-Command      |100        |00:00:00.020201|2.18x        |4950.1/s  |


### WildcardMiss


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:01.414296|1x           |70.71/s   |
|Get-Command      |100        |00:00:04.472783|3.16x        |22.36/s   |
