---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 95202
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.101875e-07
      TotalHours: 2.6445e-06
      TotalMilliseconds: 9.5202
      TotalMinutes: 0.00015867
      TotalSeconds: 0.0095202
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
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 10503.9810088023
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 160362
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.85604166666667e-07
      TotalHours: 4.4545e-06
      TotalMilliseconds: 16.0362
      TotalMinutes: 0.00026727
      TotalSeconds: 0.0160362
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        FileName: Creating Property Bags
    RelativeSpeed: 1.68443940253356
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 6235.89129594293
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 166226
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.92391203703704e-07
      TotalHours: 4.61738888888889e-06
      TotalMilliseconds: 16.6226
      TotalMinutes: 0.000277043333333333
      TotalSeconds: 0.0166226
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        FileName: Creating Property Bags
    RelativeSpeed: 1.74603474716918
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 6015.90605561104
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 292458
      Days: 0
      Hours: 0
      Milliseconds: 29
      Minutes: 0
      Seconds: 0
      TotalDays: 3.38493055555556e-07
      TotalHours: 8.12383333333333e-06
      TotalMilliseconds: 29.2458
      TotalMinutes: 0.00048743
      TotalSeconds: 0.0292458
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 3.07197327787231
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 3419.29439440877
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 874229
      Days: 0
      Hours: 0
      Milliseconds: 87
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01183912037037e-06
      TotalHours: 2.42841388888889e-05
      TotalMilliseconds: 87.4229
      TotalMinutes: 0.00145704833333333
      TotalSeconds: 0.0874229
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 9.18288481334426
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 1143.8650513767
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 71312
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.2537037037037e-08
      TotalHours: 1.98088888888889e-06
      TotalMilliseconds: 7.1312
      TotalMinutes: 0.000118853333333333
      TotalSeconds: 0.0071312
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
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 14022.8853488894
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 105807
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.22461805555556e-07
      TotalHours: 2.93908333333333e-06
      TotalMilliseconds: 10.5807
      TotalMinutes: 0.000176345
      TotalSeconds: 0.0105807
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
    RelativeSpeed: 1.48371943010994
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 9451.17052746983
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 163712
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.89481481481481e-07
      TotalHours: 4.54755555555556e-06
      TotalMilliseconds: 16.3712
      TotalMinutes: 0.000272853333333333
      TotalSeconds: 0.0163712
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
    RelativeSpeed: 2.29571460623738
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 6108.28772478499
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 427317
      Days: 0
      Hours: 0
      Milliseconds: 42
      Minutes: 0
      Seconds: 0
      TotalDays: 4.94579861111111e-07
      TotalHours: 1.18699166666667e-05
      TotalMilliseconds: 42.7317
      TotalMinutes: 0.000712195
      TotalSeconds: 0.0427317
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 5.99221729863137
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 2340.1830491181
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1468703
      Days: 0
      Hours: 0
      Milliseconds: 146
      Minutes: 0
      Seconds: 0
      TotalDays: 1.69988773148148e-06
      TotalHours: 4.07973055555556e-05
      TotalMilliseconds: 146.8703
      TotalMinutes: 0.00244783833333333
      TotalSeconds: 0.1468703
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 20.5954537805699
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 680.872851761044
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
FileName: Creating Property Bags
ClockSpeed: 2095
---


### (1 property)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.009520|1x           |10503.98/s|
|New-Object PSObject -Property @{}|100        |00:00:00.016036|1.68x        |6235.89/s |
|Static Constructors Only         |100        |00:00:00.016622|1.75x        |6015.91/s |
|New-Object ; Add-Member          |100        |00:00:00.029245|3.07x        |3419.29/s |
|New-Object \| Add-Member         |100        |00:00:00.087422|9.18x        |1143.87/s |


### (2 properties)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.007131|1x           |14022.89/s|
|Static Constructors Only         |100        |00:00:00.010580|1.48x        |9451.17/s |
|New-Object PSObject -Property @{}|100        |00:00:00.016371|2.3x         |6108.29/s |
|New-Object ; Add-Member          |100        |00:00:00.042731|5.99x        |2340.18/s |
|New-Object \| Add-Member         |100        |00:00:00.146870|20.6x        |680.87/s  |
