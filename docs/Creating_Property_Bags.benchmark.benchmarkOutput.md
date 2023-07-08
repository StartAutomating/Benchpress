---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 94289
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.09130787037037e-07
      TotalHours: 2.61913888888889e-06
      TotalMilliseconds: 9.4289
      TotalMinutes: 0.000157148333333333
      TotalSeconds: 0.0094289
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                  }
              
    RelativeSpeed: 1
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 10605.691013798
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: Static Constructors Only
    Time: 
      Ticks: 163860
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.89652777777778e-07
      TotalHours: 4.55166666666667e-06
      TotalMilliseconds: 16.386
      TotalMinutes: 0.0002731
      TotalSeconds: 0.016386
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
    RelativeSpeed: 1.73784852952094
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 6102.77065787868
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 171081
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 1.98010416666667e-07
      TotalHours: 4.75225e-06
      TotalMilliseconds: 17.1081
      TotalMinutes: 0.000285135
      TotalSeconds: 0.0171081
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
    RelativeSpeed: 1.81443222433158
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 5845.18444479516
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 298185
      Days: 0
      Hours: 0
      Milliseconds: 29
      Minutes: 0
      Seconds: 0
      TotalDays: 3.45121527777778e-07
      TotalHours: 8.28291666666667e-06
      TotalMilliseconds: 29.8185
      TotalMinutes: 0.000496975
      TotalSeconds: 0.0298185
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
    RelativeSpeed: 3.16245797494936
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 3353.62275097674
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 870679
      Days: 0
      Hours: 0
      Milliseconds: 87
      Minutes: 0
      Seconds: 0
      TotalDays: 1.00773032407407e-06
      TotalHours: 2.41855277777778e-05
      TotalMilliseconds: 87.0679
      TotalMinutes: 0.00145113166666667
      TotalSeconds: 0.0870679
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        FileName: Creating Property Bags
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
    RelativeSpeed: 9.23415244620263
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 1148.52890674979
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: PSCustomObject
    Time: 
      Ticks: 69700
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 8.06712962962963e-08
      TotalHours: 1.93611111111111e-06
      TotalMilliseconds: 6.97
      TotalMinutes: 0.000116166666666667
      TotalSeconds: 0.00697
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                      c='d'
                  }
              
    RelativeSpeed: 1
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 14347.2022955524
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: Static Constructors Only
    Time: 
      Ticks: 106338
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.23076388888889e-07
      TotalHours: 2.95383333333333e-06
      TotalMilliseconds: 10.6338
      TotalMinutes: 0.00017723
      TotalSeconds: 0.0106338
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('c','d'))
                  $o
              
    RelativeSpeed: 1.52565279770445
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 9403.97600105324
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 168954
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.95548611111111e-07
      TotalHours: 4.69316666666667e-06
      TotalMilliseconds: 16.8954
      TotalMinutes: 0.00028159
      TotalSeconds: 0.0168954
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                      c = 'd'
                  }
              
    RelativeSpeed: 2.42401721664275
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 5918.7707896824
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 458924
      Days: 0
      Hours: 0
      Milliseconds: 45
      Minutes: 0
      Seconds: 0
      TotalDays: 5.31162037037037e-07
      TotalHours: 1.27478888888889e-05
      TotalMilliseconds: 45.8924
      TotalMinutes: 0.000764873333333333
      TotalSeconds: 0.0458924
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
    RelativeSpeed: 6.58427546628408
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 2179.01003216219
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1461194
      Days: 0
      Hours: 0
      Milliseconds: 146
      Minutes: 0
      Seconds: 0
      TotalDays: 1.69119675925926e-06
      TotalHours: 4.05887222222222e-05
      TotalMilliseconds: 146.1194
      TotalMinutes: 0.00243532333333333
      TotalSeconds: 0.1461194
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        FileName: Creating Property Bags
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
    RelativeSpeed: 20.9640459110474
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 684.371821948352
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
FileName: Creating Property Bags
ClockSpeed: 2095
---


### (1 property)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.009428|1x           |10605.69/s|
|Static Constructors Only         |100        |00:00:00.016386|1.74x        |6102.77/s |
|New-Object PSObject -Property @{}|100        |00:00:00.017108|1.81x        |5845.18/s |
|New-Object ; Add-Member          |100        |00:00:00.029818|3.16x        |3353.62/s |
|New-Object \| Add-Member         |100        |00:00:00.087067|9.23x        |1148.53/s |


### (2 properties)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.006970|1x           |14347.2/s |
|Static Constructors Only         |100        |00:00:00.010633|1.53x        |9403.98/s |
|New-Object PSObject -Property @{}|100        |00:00:00.016895|2.42x        |5918.77/s |
|New-Object ; Add-Member          |100        |00:00:00.045892|6.58x        |2179.01/s |
|New-Object \| Add-Member         |100        |00:00:00.146119|20.96x       |684.37/s  |
