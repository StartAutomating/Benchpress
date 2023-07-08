---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 81914
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.48078703703704e-08
      TotalHours: 2.27538888888889e-06
      TotalMilliseconds: 8.1914
      TotalMinutes: 0.000136523333333333
      TotalSeconds: 0.0081914
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                  }
              
        FileName: Creating Property Bags
    RelativeSpeed: 1
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 12207.92538516
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 137438
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.59071759259259e-07
      TotalHours: 3.81772222222222e-06
      TotalMilliseconds: 13.7438
      TotalMinutes: 0.000229063333333333
      TotalSeconds: 0.0137438
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        FileName: Creating Property Bags
    RelativeSpeed: 1.67783284908563
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 7276.008090921
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 201768
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.33527777777778e-07
      TotalHours: 5.60466666666667e-06
      TotalMilliseconds: 20.1768
      TotalMinutes: 0.00033628
      TotalSeconds: 0.0201768
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        FileName: Creating Property Bags
    RelativeSpeed: 2.46316868911297
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 4956.1873042306
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 380654
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 0
      TotalDays: 4.40571759259259e-07
      TotalHours: 1.05737222222222e-05
      TotalMilliseconds: 38.0654
      TotalMinutes: 0.000634423333333333
      TotalSeconds: 0.0380654
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 4.64699562956271
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 2627.0576428988
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 700942
      Days: 0
      Hours: 0
      Milliseconds: 70
      Minutes: 0
      Seconds: 0
      TotalDays: 8.11275462962963e-07
      TotalHours: 1.94706111111111e-05
      TotalMilliseconds: 70.0942
      TotalMinutes: 0.00116823666666667
      TotalSeconds: 0.0700942
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 8.55704763532485
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 1426.65156318212
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 59542
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.89143518518519e-08
      TotalHours: 1.65394444444444e-06
      TotalMilliseconds: 5.9542
      TotalMinutes: 9.92366666666667e-05
      TotalSeconds: 0.0059542
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                      c='d'
                  }
              
        FileName: Creating Property Bags
    RelativeSpeed: 1
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 16794.8674884955
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 90086
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04266203703704e-07
      TotalHours: 2.50238888888889e-06
      TotalMilliseconds: 9.0086
      TotalMinutes: 0.000150143333333333
      TotalSeconds: 0.0090086
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('c','d'))
                  $o
              
        FileName: Creating Property Bags
    RelativeSpeed: 1.51298243256861
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 11100.5039628799
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 241758
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.798125e-07
      TotalHours: 6.7155e-06
      TotalMilliseconds: 24.1758
      TotalMinutes: 0.00040293
      TotalSeconds: 0.0241758
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                      c = 'd'
                  }
              
        FileName: Creating Property Bags
    RelativeSpeed: 4.0602935742837
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 4136.36777273141
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 351950
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.07349537037037e-07
      TotalHours: 9.77638888888889e-06
      TotalMilliseconds: 35.195
      TotalMinutes: 0.000586583333333333
      TotalSeconds: 0.035195
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 5.910953612576
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 2841.31268646115
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1209589
      Days: 0
      Hours: 0
      Milliseconds: 120
      Minutes: 0
      Seconds: 0
      TotalDays: 1.39998726851852e-06
      TotalHours: 3.35996944444444e-05
      TotalMilliseconds: 120.9589
      TotalMinutes: 0.00201598166666667
      TotalSeconds: 0.1209589
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 20.3148869705418
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 826.72709490579
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
FileName: Creating Property Bags
ClockSpeed: 2594
---


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.008191|1x           |12207.93/s|
|New-Object PSObject -Property @{}|00:00:00.013743|1.68x        |7276.01/s |
|Static Constructors Only         |00:00:00.020176|2.46x        |4956.19/s |
|New-Object ; Add-Member          |00:00:00.038065|4.65x        |2627.06/s |
|New-Object \| Add-Member         |00:00:00.070094|8.56x        |1426.65/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.005954|1x           |16794.87/s|
|Static Constructors Only         |00:00:00.009008|1.51x        |11100.5/s |
|New-Object PSObject -Property @{}|00:00:00.024175|4.06x        |4136.37/s |
|New-Object ; Add-Member          |00:00:00.035195|5.91x        |2841.31/s |
|New-Object \| Add-Member         |00:00:00.120958|20.31x       |826.73/s  |
