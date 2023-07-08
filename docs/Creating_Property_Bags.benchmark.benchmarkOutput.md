---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 75654
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.75625e-08
      TotalHours: 2.1015e-06
      TotalMilliseconds: 7.5654
      TotalMinutes: 0.00012609
      TotalSeconds: 0.0075654
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
    Throughput: 13218.0717476934
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 126048
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.45888888888889e-07
      TotalHours: 3.50133333333333e-06
      TotalMilliseconds: 12.6048
      TotalMinutes: 0.00021008
      TotalSeconds: 0.0126048
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        GroupName: (1 property)
    RelativeSpeed: 1.66611150765326
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 7933.48565625793
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: Static Constructors Only
    Time: 
      Ticks: 145577
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.68491898148148e-07
      TotalHours: 4.04380555555556e-06
      TotalMilliseconds: 14.5577
      TotalMinutes: 0.000242628333333333
      TotalSeconds: 0.0145577
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        GroupName: (1 property)
    RelativeSpeed: 1.92424723081397
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 6869.21697795668
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 291204
      Days: 0
      Hours: 0
      Milliseconds: 29
      Minutes: 0
      Seconds: 0
      TotalDays: 3.37041666666667e-07
      TotalHours: 8.089e-06
      TotalMilliseconds: 29.1204
      TotalMinutes: 0.00048534
      TotalSeconds: 0.0291204
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        GroupName: (1 property)
    RelativeSpeed: 3.84915536521532
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 3434.01876347852
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 701213
      Days: 0
      Hours: 0
      Milliseconds: 70
      Minutes: 0
      Seconds: 0
      TotalDays: 8.1158912037037e-07
      TotalHours: 1.94781388888889e-05
      TotalMilliseconds: 70.1213
      TotalMinutes: 0.00116868833333333
      TotalSeconds: 0.0701213
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        GroupName: (1 property)
    RelativeSpeed: 9.26868374441536
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 1426.1002006523
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: PSCustomObject
    Time: 
      Ticks: 57489
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.65381944444444e-08
      TotalHours: 1.59691666666667e-06
      TotalMilliseconds: 5.7489
      TotalMinutes: 9.5815e-05
      TotalSeconds: 0.0057489
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
    Throughput: 17394.6320165597
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: Static Constructors Only
    Time: 
      Ticks: 81347
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.41516203703704e-08
      TotalHours: 2.25963888888889e-06
      TotalMilliseconds: 8.1347
      TotalMinutes: 0.000135578333333333
      TotalSeconds: 0.0081347
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
    RelativeSpeed: 1.41500113065108
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 12293.0163374187
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 191914
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.22122685185185e-07
      TotalHours: 5.33094444444444e-06
      TotalMilliseconds: 19.1914
      TotalMinutes: 0.000319856666666667
      TotalSeconds: 0.0191914
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
    RelativeSpeed: 3.33827340882604
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 5210.66727805163
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 352439
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.07915509259259e-07
      TotalHours: 9.78997222222222e-06
      TotalMilliseconds: 35.2439
      TotalMinutes: 0.000587398333333333
      TotalSeconds: 0.0352439
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        GroupName: (2 properties)
    RelativeSpeed: 6.13054671328428
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 2837.37043857235
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1244665
      Days: 0
      Hours: 0
      Milliseconds: 124
      Minutes: 0
      Seconds: 0
      TotalDays: 1.44058449074074e-06
      TotalHours: 3.45740277777778e-05
      TotalMilliseconds: 124.4665
      TotalMinutes: 0.00207444166666667
      TotalSeconds: 0.1244665
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        GroupName: (2 properties)
    RelativeSpeed: 21.6504896588913
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 803.4290351219
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
FileName: Creating Property Bags
ClockSpeed: 2095
---


### (1 property)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.007565|1x           |13218.07/s|
|New-Object PSObject -Property @{}|100        |00:00:00.012604|1.67x        |7933.49/s |
|Static Constructors Only         |100        |00:00:00.014557|1.92x        |6869.22/s |
|New-Object ; Add-Member          |100        |00:00:00.029120|3.85x        |3434.02/s |
|New-Object \| Add-Member         |100        |00:00:00.070121|9.27x        |1426.1/s  |


### (2 properties)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.005748|1x           |17394.63/s|
|Static Constructors Only         |100        |00:00:00.008134|1.42x        |12293.02/s|
|New-Object PSObject -Property @{}|100        |00:00:00.019191|3.34x        |5210.67/s |
|New-Object ; Add-Member          |100        |00:00:00.035243|6.13x        |2837.37/s |
|New-Object \| Add-Member         |100        |00:00:00.124466|21.65x       |803.43/s  |
