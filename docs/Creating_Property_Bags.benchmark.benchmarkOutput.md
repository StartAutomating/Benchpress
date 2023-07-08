---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 79817
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.2380787037037e-08
      TotalHours: 2.21713888888889e-06
      TotalMilliseconds: 7.9817
      TotalMinutes: 0.000133028333333333
      TotalSeconds: 0.0079817
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                  }
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 1
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 12528.6593081674
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: Static Constructors Only
    Time: 
      Ticks: 135351
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.5665625e-07
      TotalHours: 3.75975e-06
      TotalMilliseconds: 13.5351
      TotalMinutes: 0.000225585
      TotalSeconds: 0.0135351
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 1.69576656601977
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 7388.19809236725
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 141703
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.64008101851852e-07
      TotalHours: 3.93619444444444e-06
      TotalMilliseconds: 14.1703
      TotalMinutes: 0.000236171666666667
      TotalSeconds: 0.0141703
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 1.77534860994525
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 7057.01361297926
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 244778
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.8330787037037e-07
      TotalHours: 6.79938888888889e-06
      TotalMilliseconds: 24.4778
      TotalMinutes: 0.000407963333333333
      TotalSeconds: 0.0244778
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 3.06674016813461
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 4085.33446633276
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 730142
      Days: 0
      Hours: 0
      Milliseconds: 73
      Minutes: 0
      Seconds: 0
      TotalDays: 8.45071759259259e-07
      TotalHours: 2.02817222222222e-05
      TotalMilliseconds: 73.0142
      TotalMinutes: 0.00121690333333333
      TotalSeconds: 0.0730142
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 9.14770036458399
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 1369.59659901773
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: PSCustomObject
    Time: 
      Ticks: 62463
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.22951388888889e-08
      TotalHours: 1.73508333333333e-06
      TotalMilliseconds: 6.2463
      TotalMinutes: 0.000104105
      TotalSeconds: 0.0062463
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                      c='d'
                  }
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 1
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 16009.4776107456
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: Static Constructors Only
    Time: 
      Ticks: 89077
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0309837962963e-07
      TotalHours: 2.47436111111111e-06
      TotalMilliseconds: 8.9077
      TotalMinutes: 0.000148461666666667
      TotalSeconds: 0.0089077
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('c','d'))
                  $o
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 1.42607623713238
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 11226.2424643847
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 139613
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.6158912037037e-07
      TotalHours: 3.87813888888889e-06
      TotalMilliseconds: 13.9613
      TotalMinutes: 0.000232688333333333
      TotalSeconds: 0.0139613
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                      c = 'd'
                  }
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 2.23513119766902
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 7162.65677265011
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 380170
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 0
      TotalDays: 4.40011574074074e-07
      TotalHours: 1.05602777777778e-05
      TotalMilliseconds: 38.017
      TotalMinutes: 0.000633616666666667
      TotalSeconds: 0.038017
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 6.08632310327714
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 2630.40218849462
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1214679
      Days: 0
      Hours: 0
      Milliseconds: 121
      Minutes: 0
      Seconds: 0
      TotalDays: 1.40587847222222e-06
      TotalHours: 3.37410833333333e-05
      TotalMilliseconds: 121.4679
      TotalMinutes: 0.002024465
      TotalSeconds: 0.1214679
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 19.4463762547428
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 823.26277148119
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
FileName: Creating Property Bags
ClockSpeed: 2594
---


### (1 property)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.007981|1x           |12528.66/s|
|Static Constructors Only         |100        |00:00:00.013535|1.7x         |7388.2/s  |
|New-Object PSObject -Property @{}|100        |00:00:00.014170|1.78x        |7057.01/s |
|New-Object ; Add-Member          |100        |00:00:00.024477|3.07x        |4085.33/s |
|New-Object \| Add-Member         |100        |00:00:00.073014|9.15x        |1369.6/s  |


### (2 properties)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.006246|1x           |16009.48/s|
|Static Constructors Only         |100        |00:00:00.008907|1.43x        |11226.24/s|
|New-Object PSObject -Property @{}|100        |00:00:00.013961|2.24x        |7162.66/s |
|New-Object ; Add-Member          |100        |00:00:00.038017|6.09x        |2630.4/s  |
|New-Object \| Add-Member         |100        |00:00:00.121467|19.45x       |823.26/s  |
