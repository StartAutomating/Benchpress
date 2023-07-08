---
layout: Benchmark
title: Comparing Command Lookup

Data: 
  - Technique: $executionContext
    Time: 
      Ticks: 5981303
      Days: 0
      Hours: 0
      Milliseconds: 598
      Minutes: 0
      Seconds: 0
      TotalDays: 6.92280439814815e-06
      TotalHours: 0.000166147305555556
      TotalMilliseconds: 598.1303
      TotalMinutes: 0.00996883833333333
      TotalSeconds: 0.5981303
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('git','Application')
              
        GroupName: Applications
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 167.187651252578
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Applications
  - Technique: Get-Command
    Time: 
      Ticks: 18311929
      Days: 0
      Hours: 0
      Milliseconds: 831
      Minutes: 0
      Seconds: 1
      TotalDays: 2.11943622685185e-05
      TotalHours: 0.000508664694444444
      TotalMilliseconds: 1831.1929
      TotalMinutes: 0.0305198816666667
      TotalSeconds: 1.8311929
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command git -CommandType Application
              
        GroupName: Applications
    RelativeSpeed: 3.06152839941397
    GroupName: Applications
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 54.6092112960901
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Applications
  - Technique: $executionContext
    Time: 
      Ticks: 60275
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 6.97627314814815e-08
      TotalHours: 1.67430555555556e-06
      TotalMilliseconds: 6.0275
      TotalMinutes: 0.000100458333333333
      TotalSeconds: 0.0060275
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Get-Process','Cmdlet')
              
        GroupName: Cmdlets
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 16590.6262961427
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
  - Technique: Get-Command
    Time: 
      Ticks: 125722
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.45511574074074e-07
      TotalHours: 3.49227777777778e-06
      TotalMilliseconds: 12.5722
      TotalMinutes: 0.000209536666666667
      TotalSeconds: 0.0125722
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Get-Process -CommandType Cmdlet
              
        GroupName: Cmdlets
    RelativeSpeed: 2.08580671920365
    GroupName: Cmdlets
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 7954.05736466171
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
  - Technique: $executionContext
    Time: 
      Ticks: 57815
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.69155092592593e-08
      TotalHours: 1.60597222222222e-06
      TotalMilliseconds: 5.7815
      TotalMinutes: 9.63583333333333e-05
      TotalSeconds: 0.0057815
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('gps','Alias')
              
        GroupName: Aliases
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 17296.549338407
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Aliases
  - Technique: Get-Command
    Time: 
      Ticks: 185241
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.14399305555556e-07
      TotalHours: 5.14558333333333e-06
      TotalMilliseconds: 18.5241
      TotalMinutes: 0.000308735
      TotalSeconds: 0.0185241
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command gps -CommandType Alias
              
        GroupName: Aliases
    RelativeSpeed: 3.20403009599585
    GroupName: Aliases
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 5398.37293039878
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Aliases
  - Technique: $executionContext
    Time: 
      Ticks: 61283
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.09293981481482e-08
      TotalHours: 1.70230555555556e-06
      TotalMilliseconds: 6.1283
      TotalMinutes: 0.000102138333333333
      TotalSeconds: 0.0061283
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','Function')
              
        GroupName: Function
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 16317.7390140822
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Function
  - Technique: Get-Command
    Time: 
      Ticks: 125664
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.45444444444444e-07
      TotalHours: 3.49066666666667e-06
      TotalMilliseconds: 12.5664
      TotalMinutes: 0.00020944
      TotalSeconds: 0.0125664
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark -CommandType Function
              
        GroupName: Function
    RelativeSpeed: 2.05055235546563
    GroupName: Function
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 7957.72854596384
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: Function
  - Technique: $executionContext
    Time: 
      Ticks: 80799
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.35173611111111e-08
      TotalHours: 2.24441666666667e-06
      TotalMilliseconds: 8.0799
      TotalMinutes: 0.000134665
      TotalSeconds: 0.0080799
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommand('Measure-Benchmark','All')
              
        GroupName: All
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 12376.3907969158
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: All
  - Technique: Get-Command
    Time: 
      Ticks: 149711
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.7327662037037e-07
      TotalHours: 4.15863888888889e-06
      TotalMilliseconds: 14.9711
      TotalMinutes: 0.000249518333333333
      TotalSeconds: 0.0149711
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command Measure-Benchmark
              
        GroupName: All
    RelativeSpeed: 1.85288184259706
    GroupName: All
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 6679.53590584526
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: All
  - Technique: $executionContext
    Time: 
      Ticks: 10663847
      Days: 0
      Hours: 0
      Milliseconds: 66
      Minutes: 0
      Seconds: 1
      TotalDays: 1.23424155092593e-05
      TotalHours: 0.000296217972222222
      TotalMilliseconds: 1066.3847
      TotalMinutes: 0.0177730783333333
      TotalSeconds: 1.0663847
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  $ExecutionContext.SessionState.InvokeCommand.GetCommands('*ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*','All', $true)
              
        GroupName: WildcardMiss
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 93.7747887793214
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
  - Technique: Get-Command
    Time: 
      Ticks: 32983781
      Days: 0
      Hours: 0
      Milliseconds: 298
      Minutes: 0
      Seconds: 3
      TotalDays: 3.81756724537037e-05
      TotalHours: 0.000916216138888889
      TotalMilliseconds: 3298.3781
      TotalMinutes: 0.0549729683333333
      TotalSeconds: 3.2983781
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: 
        FileName: Comparing Command Lookup
        ScriptBlock: |
          
                  Get-Command *ThereShouldBeNoCommandNamedLikeThisOrSomeoneIsBeingVeryRude*
              
        GroupName: WildcardMiss
    RelativeSpeed: 3.09304709641839
    GroupName: WildcardMiss
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    RepeatCount: 100
    Throughput: 30.3179311068067
    BenchmarkInput: 
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
FileName: Comparing Command Lookup
ClockSpeed: 2095
---


### Aliases


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.005781|1x           |17296.55/s|
|Get-Command      |100        |00:00:00.018524|3.2x         |5398.37/s |


### All


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.008079|1x           |12376.39/s|
|Get-Command      |100        |00:00:00.014971|1.85x        |6679.54/s |


### Applications


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.598130|1x           |167.19/s  |
|Get-Command      |100        |00:00:01.831192|3.06x        |54.61/s   |


### Cmdlets


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.006027|1x           |16590.63/s|
|Get-Command      |100        |00:00:00.012572|2.09x        |7954.06/s |


### Function


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:00.006128|1x           |16317.74/s|
|Get-Command      |100        |00:00:00.012566|2.05x        |7957.73/s |


### WildcardMiss


|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|$executionContext|100        |00:00:01.066384|1x           |93.77/s   |
|Get-Command      |100        |00:00:03.298378|3.09x        |30.32/s   |
