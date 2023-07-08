---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 83754
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.69375e-08
      TotalHours: 2.3265e-06
      TotalMilliseconds: 8.3754
      TotalMinutes: 0.00013959
      TotalSeconds: 0.0083754
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
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 11939.728251785
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 148344
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.71694444444444e-07
      TotalHours: 4.12066666666667e-06
      TotalMilliseconds: 14.8344
      TotalMinutes: 0.00024724
      TotalSeconds: 0.0148344
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        GroupName: (1 property)
    RelativeSpeed: 1.77118704778279
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 6741.08828129213
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 157810
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.82650462962963e-07
      TotalHours: 4.38361111111111e-06
      TotalMilliseconds: 15.781
      TotalMinutes: 0.000263016666666667
      TotalSeconds: 0.015781
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        GroupName: (1 property)
    RelativeSpeed: 1.88420851541419
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 6336.73404727204
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 282299
      Days: 0
      Hours: 0
      Milliseconds: 28
      Minutes: 0
      Seconds: 0
      TotalDays: 3.26734953703704e-07
      TotalHours: 7.84163888888889e-06
      TotalMilliseconds: 28.2299
      TotalMinutes: 0.000470498333333333
      TotalSeconds: 0.0282299
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        GroupName: (1 property)
    RelativeSpeed: 3.37057334575065
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 3542.34340185406
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 788187
      Days: 0
      Hours: 0
      Milliseconds: 78
      Minutes: 0
      Seconds: 0
      TotalDays: 9.12253472222222e-07
      TotalHours: 2.18940833333333e-05
      TotalMilliseconds: 78.8187
      TotalMinutes: 0.001313645
      TotalSeconds: 0.0788187
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        GroupName: (1 property)
    RelativeSpeed: 9.41073859158966
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 1268.7344500734
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 64382
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.45162037037037e-08
      TotalHours: 1.78838888888889e-06
      TotalMilliseconds: 6.4382
      TotalMinutes: 0.000107303333333333
      TotalSeconds: 0.0064382
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
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 15532.2916343077
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 101104
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.17018518518519e-07
      TotalHours: 2.80844444444444e-06
      TotalMilliseconds: 10.1104
      TotalMinutes: 0.000168506666666667
      TotalSeconds: 0.0101104
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
    RelativeSpeed: 1.57037681339505
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 9890.80550720051
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 157571
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.82373842592593e-07
      TotalHours: 4.37697222222222e-06
      TotalMilliseconds: 15.7571
      TotalMinutes: 0.000262618333333333
      TotalSeconds: 0.0157571
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
    RelativeSpeed: 2.4474387251095
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 6346.3454569686
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 498201
      Days: 0
      Hours: 0
      Milliseconds: 49
      Minutes: 0
      Seconds: 0
      TotalDays: 5.76621527777778e-07
      TotalHours: 1.38389166666667e-05
      TotalMilliseconds: 49.8201
      TotalMinutes: 0.000830335
      TotalSeconds: 0.0498201
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        GroupName: (2 properties)
    RelativeSpeed: 7.73820322450374
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 2007.22198470095
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1396963
      Days: 0
      Hours: 0
      Milliseconds: 139
      Minutes: 0
      Seconds: 0
      TotalDays: 1.61685532407407e-06
      TotalHours: 3.88045277777778e-05
      TotalMilliseconds: 139.6963
      TotalMinutes: 0.00232827166666667
      TotalSeconds: 0.1396963
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        GroupName: (2 properties)
    RelativeSpeed: 21.6980367183374
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 715.838572675153
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
FileName: Creating Property Bags
ClockSpeed: 2095
---


### (1 property)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.008375|1x           |11939.73/s|
|New-Object PSObject -Property @{}|100        |00:00:00.014834|1.77x        |6741.09/s |
|Static Constructors Only         |100        |00:00:00.015781|1.88x        |6336.73/s |
|New-Object ; Add-Member          |100        |00:00:00.028229|3.37x        |3542.34/s |
|New-Object \| Add-Member         |100        |00:00:00.078818|9.41x        |1268.73/s |


### (2 properties)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.006438|1x           |15532.29/s|
|Static Constructors Only         |100        |00:00:00.010110|1.57x        |9890.81/s |
|New-Object PSObject -Property @{}|100        |00:00:00.015757|2.45x        |6346.35/s |
|New-Object ; Add-Member          |100        |00:00:00.049820|7.74x        |2007.22/s |
|New-Object \| Add-Member         |100        |00:00:00.139696|21.7x        |715.84/s  |
