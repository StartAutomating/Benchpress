---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 77804
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.00509259259259e-08
      TotalHours: 2.16122222222222e-06
      TotalMilliseconds: 7.7804
      TotalMinutes: 0.000129673333333333
      TotalSeconds: 0.0077804
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                  }
              
        GroupName: (1 property)
    RelativeSpeed: 1
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 12852.8096241838
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 144227
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.66929398148148e-07
      TotalHours: 4.00630555555556e-06
      TotalMilliseconds: 14.4227
      TotalMinutes: 0.000240378333333333
      TotalSeconds: 0.0144227
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        GroupName: (1 property)
    RelativeSpeed: 1.85372217366716
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 6933.5145291797
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 230539
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.66827546296296e-07
      TotalHours: 6.40386111111111e-06
      TotalMilliseconds: 23.0539
      TotalMinutes: 0.000384231666666667
      TotalSeconds: 0.0230539
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        GroupName: (1 property)
    RelativeSpeed: 2.96307387794972
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 4337.66087299763
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 248257
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.87334490740741e-07
      TotalHours: 6.89602777777778e-06
      TotalMilliseconds: 24.8257
      TotalMinutes: 0.000413761666666667
      TotalSeconds: 0.0248257
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        GroupName: (1 property)
    RelativeSpeed: 3.19079995887101
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 4028.08380025538
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 666238
      Days: 0
      Hours: 0
      Milliseconds: 66
      Minutes: 0
      Seconds: 0
      TotalDays: 7.71108796296296e-07
      TotalHours: 1.85066111111111e-05
      TotalMilliseconds: 66.6238
      TotalMinutes: 0.00111039666666667
      TotalSeconds: 0.0666238
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        GroupName: (1 property)
    RelativeSpeed: 8.563030178397
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 1500.96512057253
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 59278
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.86087962962963e-08
      TotalHours: 1.64661111111111e-06
      TotalMilliseconds: 5.9278
      TotalMinutes: 9.87966666666667e-05
      TotalSeconds: 0.0059278
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                      c='d'
                  }
              
        GroupName: (2 properties)
    RelativeSpeed: 1
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 16869.6649684537
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 88158
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02034722222222e-07
      TotalHours: 2.44883333333333e-06
      TotalMilliseconds: 8.8158
      TotalMinutes: 0.00014693
      TotalSeconds: 0.0088158
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('c','d'))
                  $o
              
        GroupName: (2 properties)
    RelativeSpeed: 1.48719592428894
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 11343.2700378865
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 139598
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.61571759259259e-07
      TotalHours: 3.87772222222222e-06
      TotalMilliseconds: 13.9598
      TotalMinutes: 0.000232663333333333
      TotalSeconds: 0.0139598
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                      c = 'd'
                  }
              
        GroupName: (2 properties)
    RelativeSpeed: 2.3549714902662
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 7163.42641012049
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 328806
      Days: 0
      Hours: 0
      Milliseconds: 32
      Minutes: 0
      Seconds: 0
      TotalDays: 3.805625e-07
      TotalHours: 9.1335e-06
      TotalMilliseconds: 32.8806
      TotalMinutes: 0.00054801
      TotalSeconds: 0.0328806
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        GroupName: (2 properties)
    RelativeSpeed: 5.5468470596174
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 3041.30703211012
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1113061
      Days: 0
      Hours: 0
      Milliseconds: 111
      Minutes: 0
      Seconds: 0
      TotalDays: 1.2882650462963e-06
      TotalHours: 3.09183611111111e-05
      TotalMilliseconds: 111.3061
      TotalMinutes: 0.00185510166666667
      TotalSeconds: 0.1113061
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        GroupName: (2 properties)
    RelativeSpeed: 18.7769661594521
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 898.423356851062
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
FileName: Creating Property Bags
ClockSpeed: 2793
---


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.007780|1x           |12852.81/s|
|Static Constructors Only         |00:00:00.014422|1.85x        |6933.51/s |
|New-Object PSObject -Property @{}|00:00:00.023053|2.96x        |4337.66/s |
|New-Object ; Add-Member          |00:00:00.024825|3.19x        |4028.08/s |
|New-Object \| Add-Member         |00:00:00.066623|8.56x        |1500.97/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.005927|1x           |16869.66/s|
|Static Constructors Only         |00:00:00.008815|1.49x        |11343.27/s|
|New-Object PSObject -Property @{}|00:00:00.013959|2.35x        |7163.43/s |
|New-Object ; Add-Member          |00:00:00.032880|5.55x        |3041.31/s |
|New-Object \| Add-Member         |00:00:00.111306|18.78x       |898.42/s  |
