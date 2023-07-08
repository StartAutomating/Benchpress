---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 71533
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.27928240740741e-08
      TotalHours: 1.98702777777778e-06
      TotalMilliseconds: 7.1533
      TotalMinutes: 0.000119221666666667
      TotalSeconds: 0.0071533
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
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 13979.5618805307
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 135184
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.56462962962963e-07
      TotalHours: 3.75511111111111e-06
      TotalMilliseconds: 13.5184
      TotalMinutes: 0.000225306666666667
      TotalSeconds: 0.0135184
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 1.88981309325766
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 7397.32512723399
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 141216
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.63444444444444e-07
      TotalHours: 3.92266666666667e-06
      TotalMilliseconds: 14.1216
      TotalMinutes: 0.00023536
      TotalSeconds: 0.0141216
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 1.97413781052102
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 7081.35055517788
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 262926
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 0
      TotalDays: 3.043125e-07
      TotalHours: 7.3035e-06
      TotalMilliseconds: 26.2926
      TotalMinutes: 0.00043821
      TotalSeconds: 0.0262926
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 3.67559028700041
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 3803.35151335357
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 670408
      Days: 0
      Hours: 0
      Milliseconds: 67
      Minutes: 0
      Seconds: 0
      TotalDays: 7.75935185185185e-07
      TotalHours: 1.86224444444444e-05
      TotalMilliseconds: 67.0408
      TotalMinutes: 0.00111734666666667
      TotalSeconds: 0.0670408
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 9.3720101212028
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 1491.62897817448
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 62485
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.23206018518518e-08
      TotalHours: 1.73569444444444e-06
      TotalMilliseconds: 6.2485
      TotalMinutes: 0.000104141666666667
      TotalSeconds: 0.0062485
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
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 16003.8409218212
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 86498
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.00113425925926e-07
      TotalHours: 2.40272222222222e-06
      TotalMilliseconds: 8.6498
      TotalMinutes: 0.000144163333333333
      TotalSeconds: 0.0086498
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
    RelativeSpeed: 1.38430023205569
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 11560.9609470739
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 159828
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.84986111111111e-07
      TotalHours: 4.43966666666667e-06
      TotalMilliseconds: 15.9828
      TotalMinutes: 0.00026638
      TotalSeconds: 0.0159828
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
    RelativeSpeed: 2.55786188685284
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 6256.72598042896
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 328022
      Days: 0
      Hours: 0
      Milliseconds: 32
      Minutes: 0
      Seconds: 0
      TotalDays: 3.79655092592593e-07
      TotalHours: 9.11172222222222e-06
      TotalMilliseconds: 32.8022
      TotalMinutes: 0.000546703333333333
      TotalSeconds: 0.0328022
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        GroupName: (2 properties)
        FileName: Creating Property Bags
    RelativeSpeed: 5.24961190685765
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 3048.57601014566
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1081893
      Days: 0
      Hours: 0
      Milliseconds: 108
      Minutes: 0
      Seconds: 0
      TotalDays: 1.25219097222222e-06
      TotalHours: 3.00525833333333e-05
      TotalMilliseconds: 108.1893
      TotalMinutes: 0.001803155
      TotalSeconds: 0.1081893
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        GroupName: (2 properties)
        FileName: Creating Property Bags
    RelativeSpeed: 17.3144434664319
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 924.305823219117
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
FileName: Creating Property Bags
ClockSpeed: 2793
---
Creating Property Bags
----------------------
> @2793 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.007153|1x           |13979.56/s|
|New-Object PSObject -Property @{}|00:00:00.013518|1.89x        |7397.33/s |
|Static Constructors Only         |00:00:00.014121|1.97x        |7081.35/s |
|New-Object ; Add-Member          |00:00:00.026292|3.68x        |3803.35/s |
|New-Object \| Add-Member         |00:00:00.067040|9.37x        |1491.63/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.006248|1x           |16003.84/s|
|Static Constructors Only         |00:00:00.008649|1.38x        |11560.96/s|
|New-Object PSObject -Property @{}|00:00:00.015982|2.56x        |6256.73/s |
|New-Object ; Add-Member          |00:00:00.032802|5.25x        |3048.58/s |
|New-Object \| Add-Member         |00:00:00.108189|17.31x       |924.31/s  |
