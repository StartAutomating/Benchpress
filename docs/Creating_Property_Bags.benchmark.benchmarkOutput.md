---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 81063
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.38229166666667e-08
      TotalHours: 2.25175e-06
      TotalMilliseconds: 8.1063
      TotalMinutes: 0.000135105
      TotalSeconds: 0.0081063
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
    Throughput: 12336.0842801278
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: Static Constructors Only
    Time: 
      Ticks: 147774
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.71034722222222e-07
      TotalHours: 4.10483333333333e-06
      TotalMilliseconds: 14.7774
      TotalMinutes: 0.00024629
      TotalSeconds: 0.0147774
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 1.82295251841161
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 6767.0902865186
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 219937
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.54556712962963e-07
      TotalHours: 6.10936111111111e-06
      TotalMilliseconds: 21.9937
      TotalMinutes: 0.000366561666666667
      TotalSeconds: 0.0219937
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 2.71316136831847
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 4546.75657119993
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 251748
      Days: 0
      Hours: 0
      Milliseconds: 25
      Minutes: 0
      Seconds: 0
      TotalDays: 2.91375e-07
      TotalHours: 6.993e-06
      TotalMilliseconds: 25.1748
      TotalMinutes: 0.00041958
      TotalSeconds: 0.0251748
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 3.10558454535361
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 3972.22619444842
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 695872
      Days: 0
      Hours: 0
      Milliseconds: 69
      Minutes: 0
      Seconds: 0
      TotalDays: 8.05407407407407e-07
      TotalHours: 1.93297777777778e-05
      TotalMilliseconds: 69.5872
      TotalMinutes: 0.00115978666666667
      TotalSeconds: 0.0695872
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 8.58433564018109
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 1437.04589349765
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: PSCustomObject
    Time: 
      Ticks: 59095
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.83969907407407e-08
      TotalHours: 1.64152777777778e-06
      TotalMilliseconds: 5.9095
      TotalMinutes: 9.84916666666667e-05
      TotalSeconds: 0.0059095
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
    Throughput: 16921.9054065488
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 139815
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.61822916666667e-07
      TotalHours: 3.88375e-06
      TotalMilliseconds: 13.9815
      TotalMinutes: 0.000233025
      TotalSeconds: 0.0139815
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
    RelativeSpeed: 2.36593620441662
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 7152.30840753853
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: Static Constructors Only
    Time: 
      Ticks: 187817
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.17380787037037e-07
      TotalHours: 5.21713888888889e-06
      TotalMilliseconds: 18.7817
      TotalMinutes: 0.000313028333333333
      TotalSeconds: 0.0187817
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
    RelativeSpeed: 3.17822150774177
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 5324.33166326797
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 350569
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.05751157407407e-07
      TotalHours: 9.73802777777778e-06
      TotalMilliseconds: 35.0569
      TotalMinutes: 0.000584281666666667
      TotalSeconds: 0.0350569
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 5.9322954564684
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 2852.50549820435
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1245510
      Days: 0
      Hours: 0
      Milliseconds: 124
      Minutes: 0
      Seconds: 0
      TotalDays: 1.4415625e-06
      TotalHours: 3.45975e-05
      TotalMilliseconds: 124.551
      TotalMinutes: 0.00207585
      TotalSeconds: 0.124551
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 21.0764024029106
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 802.88395918138
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
FileName: Creating Property Bags
ClockSpeed: 2594
---


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.008106|1x           |12336.08/s|
|Static Constructors Only         |00:00:00.014777|1.82x        |6767.09/s |
|New-Object PSObject -Property @{}|00:00:00.021993|2.71x        |4546.76/s |
|New-Object ; Add-Member          |00:00:00.025174|3.11x        |3972.23/s |
|New-Object \| Add-Member         |00:00:00.069587|8.58x        |1437.05/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.005909|1x           |16921.91/s|
|New-Object PSObject -Property @{}|00:00:00.013981|2.37x        |7152.31/s |
|Static Constructors Only         |00:00:00.018781|3.18x        |5324.33/s |
|New-Object ; Add-Member          |00:00:00.035056|5.93x        |2852.51/s |
|New-Object \| Add-Member         |00:00:00.124551|21.08x       |802.88/s  |
