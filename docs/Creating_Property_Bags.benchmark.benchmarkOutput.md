---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 80886
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.36180555555556e-08
      TotalHours: 2.24683333333333e-06
      TotalMilliseconds: 8.0886
      TotalMinutes: 0.00013481
      TotalSeconds: 0.0080886
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                  }
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 1
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 12363.0789011695
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 136763
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.58290509259259e-07
      TotalHours: 3.79897222222222e-06
      TotalMilliseconds: 13.6763
      TotalMinutes: 0.000227938333333333
      TotalSeconds: 0.0136763
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 1.69081175976065
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 7311.91915942177
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 139801
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.61806712962963e-07
      TotalHours: 3.88336111111111e-06
      TotalMilliseconds: 13.9801
      TotalMinutes: 0.000233001666666667
      TotalSeconds: 0.0139801
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 1.7283707934624
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 7153.02465647599
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 253785
      Days: 0
      Hours: 0
      Milliseconds: 25
      Minutes: 0
      Seconds: 0
      TotalDays: 2.93732638888889e-07
      TotalHours: 7.04958333333333e-06
      TotalMilliseconds: 25.3785
      TotalMinutes: 0.000422975
      TotalSeconds: 0.0253785
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 3.13756397893331
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 3940.34320389306
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 738967
      Days: 0
      Hours: 0
      Milliseconds: 73
      Minutes: 0
      Seconds: 0
      TotalDays: 8.5528587962963e-07
      TotalHours: 2.05268611111111e-05
      TotalMilliseconds: 73.8967
      TotalMinutes: 0.00123161166666667
      TotalSeconds: 0.0738967
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 9.13590732636056
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 1353.24040180414
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 76954
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.90671296296296e-08
      TotalHours: 2.13761111111111e-06
      TotalMilliseconds: 7.6954
      TotalMinutes: 0.000128256666666667
      TotalSeconds: 0.0076954
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                      c='d'
                  }
              
        GroupName: (2 properties)
        FileName: Creating Property Bags
    RelativeSpeed: 1
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 12994.7761000078
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 130113
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.5059375e-07
      TotalHours: 3.61425e-06
      TotalMilliseconds: 13.0113
      TotalMinutes: 0.000216855
      TotalSeconds: 0.0130113
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('c','d'))
                  $o
              
        GroupName: (2 properties)
        FileName: Creating Property Bags
    RelativeSpeed: 1.69078930270031
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 7685.62710874394
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 145713
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.68649305555556e-07
      TotalHours: 4.04758333333333e-06
      TotalMilliseconds: 14.5713
      TotalMinutes: 0.000242855
      TotalSeconds: 0.0145713
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                      c = 'd'
                  }
              
        GroupName: (2 properties)
        FileName: Creating Property Bags
    RelativeSpeed: 1.89350780986044
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 6862.80565220673
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 392731
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.54549768518519e-07
      TotalHours: 1.09091944444444e-05
      TotalMilliseconds: 39.2731
      TotalMinutes: 0.000654551666666667
      TotalSeconds: 0.0392731
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        GroupName: (2 properties)
        FileName: Creating Property Bags
    RelativeSpeed: 5.10345141253216
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 2546.27213028765
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1207854
      Days: 0
      Hours: 0
      Milliseconds: 120
      Minutes: 0
      Seconds: 0
      TotalDays: 1.39797916666667e-06
      TotalHours: 3.35515e-05
      TotalMilliseconds: 120.7854
      TotalMinutes: 0.00201309
      TotalSeconds: 0.1207854
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        GroupName: (2 properties)
        FileName: Creating Property Bags
    RelativeSpeed: 15.6957922914988
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 827.914632066458
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
FileName: Creating Property Bags
ClockSpeed: 2594
---


### (1 property)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.008088|1x           |12363.08/s|
|New-Object PSObject -Property @{}|100        |00:00:00.013676|1.69x        |7311.92/s |
|Static Constructors Only         |100        |00:00:00.013980|1.73x        |7153.02/s |
|New-Object ; Add-Member          |100        |00:00:00.025378|3.14x        |3940.34/s |
|New-Object \| Add-Member         |100        |00:00:00.073896|9.14x        |1353.24/s |


### (2 properties)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.007695|1x           |12994.78/s|
|Static Constructors Only         |100        |00:00:00.013011|1.69x        |7685.63/s |
|New-Object PSObject -Property @{}|100        |00:00:00.014571|1.89x        |6862.81/s |
|New-Object ; Add-Member          |100        |00:00:00.039273|5.1x         |2546.27/s |
|New-Object \| Add-Member         |100        |00:00:00.120785|15.7x        |827.91/s  |
