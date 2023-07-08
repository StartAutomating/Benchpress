---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 75247
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.70914351851852e-08
      TotalHours: 2.09019444444444e-06
      TotalMilliseconds: 7.5247
      TotalMinutes: 0.000125411666666667
      TotalSeconds: 0.0075247
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (1 property)
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                  }
              
    RelativeSpeed: 1
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 13289.5663614496
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 137485
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.59126157407407e-07
      TotalHours: 3.81902777777778e-06
      TotalMilliseconds: 13.7485
      TotalMinutes: 0.000229141666666667
      TotalSeconds: 0.0137485
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (1 property)
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
    RelativeSpeed: 1.8271160312039
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 7273.52074771793
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 149747
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.73318287037037e-07
      TotalHours: 4.15963888888889e-06
      TotalMilliseconds: 14.9747
      TotalMinutes: 0.000249578333333333
      TotalSeconds: 0.0149747
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (1 property)
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
    RelativeSpeed: 1.990072693928
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 6677.93010878348
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 299060
      Days: 0
      Hours: 0
      Milliseconds: 29
      Minutes: 0
      Seconds: 0
      TotalDays: 3.46134259259259e-07
      TotalHours: 8.30722222222222e-06
      TotalMilliseconds: 29.906
      TotalMinutes: 0.000498433333333333
      TotalSeconds: 0.029906
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (1 property)
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
    RelativeSpeed: 3.97437771605513
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 3343.81060656724
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 701226
      Days: 0
      Hours: 0
      Milliseconds: 70
      Minutes: 0
      Seconds: 0
      TotalDays: 8.11604166666667e-07
      TotalHours: 1.94785e-05
      TotalMilliseconds: 70.1226
      TotalMinutes: 0.00116871
      TotalSeconds: 0.0701226
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (1 property)
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
    RelativeSpeed: 9.31898946137388
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 1426.07376223928
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 58220
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.73842592592593e-08
      TotalHours: 1.61722222222222e-06
      TotalMilliseconds: 5.822
      TotalMinutes: 9.70333333333333e-05
      TotalSeconds: 0.005822
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (2 properties)
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                      c='d'
                  }
              
    RelativeSpeed: 1
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 17176.2281003092
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 135291
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.56586805555556e-07
      TotalHours: 3.75808333333333e-06
      TotalMilliseconds: 13.5291
      TotalMinutes: 0.000225485
      TotalSeconds: 0.0135291
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (2 properties)
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('c','d'))
                  $o
              
    RelativeSpeed: 2.32378907591893
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 7391.47467311203
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 142046
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.64405092592593e-07
      TotalHours: 3.94572222222222e-06
      TotalMilliseconds: 14.2046
      TotalMinutes: 0.000236743333333333
      TotalSeconds: 0.0142046
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (2 properties)
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                      c = 'd'
                  }
              
    RelativeSpeed: 2.43981449673652
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 7039.97296650381
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 347418
      Days: 0
      Hours: 0
      Milliseconds: 34
      Minutes: 0
      Seconds: 0
      TotalDays: 4.02104166666667e-07
      TotalHours: 9.6505e-06
      TotalMilliseconds: 34.7418
      TotalMinutes: 0.00057903
      TotalSeconds: 0.0347418
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (2 properties)
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
    RelativeSpeed: 5.96733081415321
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 2878.37705588081
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1285254
      Days: 0
      Hours: 0
      Milliseconds: 128
      Minutes: 0
      Seconds: 0
      TotalDays: 1.4875625e-06
      TotalHours: 3.57015e-05
      TotalMilliseconds: 128.5254
      TotalMinutes: 0.00214209
      TotalSeconds: 0.1285254
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (2 properties)
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
    RelativeSpeed: 22.0758158708348
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 778.056321941033
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
FileName: Creating Property Bags
ClockSpeed: 2594
---


### (1 property)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.007524|1x           |13289.57/s|
|New-Object PSObject -Property @{}|100        |00:00:00.013748|1.83x        |7273.52/s |
|Static Constructors Only         |100        |00:00:00.014974|1.99x        |6677.93/s |
|New-Object ; Add-Member          |100        |00:00:00.029906|3.97x        |3343.81/s |
|New-Object \| Add-Member         |100        |00:00:00.070122|9.32x        |1426.07/s |


### (2 properties)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.005822|1x           |17176.23/s|
|Static Constructors Only         |100        |00:00:00.013529|2.32x        |7391.47/s |
|New-Object PSObject -Property @{}|100        |00:00:00.014204|2.44x        |7039.97/s |
|New-Object ; Add-Member          |100        |00:00:00.034741|5.97x        |2878.38/s |
|New-Object \| Add-Member         |100        |00:00:00.128525|22.08x       |778.06/s  |
