---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 87991
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01841435185185e-07
      TotalHours: 2.44419444444444e-06
      TotalMilliseconds: 8.7991
      TotalMinutes: 0.000146651666666667
      TotalSeconds: 0.0087991
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
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 11364.7986725915
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 152509
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.76515046296296e-07
      TotalHours: 4.23636111111111e-06
      TotalMilliseconds: 15.2509
      TotalMinutes: 0.000254181666666667
      TotalSeconds: 0.0152509
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (1 property)
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
    RelativeSpeed: 1.73323408075826
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 6556.99007927401
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 155570
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.8005787037037e-07
      TotalHours: 4.32138888888889e-06
      TotalMilliseconds: 15.557
      TotalMinutes: 0.000259283333333333
      TotalSeconds: 0.015557
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (1 property)
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
    RelativeSpeed: 1.76802172949506
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 6427.9745452208
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 280300
      Days: 0
      Hours: 0
      Milliseconds: 28
      Minutes: 0
      Seconds: 0
      TotalDays: 3.24421296296296e-07
      TotalHours: 7.78611111111111e-06
      TotalMilliseconds: 28.03
      TotalMinutes: 0.000467166666666667
      TotalSeconds: 0.02803
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (1 property)
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
    RelativeSpeed: 3.1855530679274
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 3567.60613628255
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 806772
      Days: 0
      Hours: 0
      Milliseconds: 80
      Minutes: 0
      Seconds: 0
      TotalDays: 9.33763888888889e-07
      TotalHours: 2.24103333333333e-05
      TotalMilliseconds: 80.6772
      TotalMinutes: 0.00134462
      TotalSeconds: 0.0806772
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (1 property)
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
    RelativeSpeed: 9.168801354684
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 1239.50756843321
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 84013
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.72372685185185e-08
      TotalHours: 2.33369444444444e-06
      TotalMilliseconds: 8.4013
      TotalMinutes: 0.000140021666666667
      TotalSeconds: 0.0084013
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
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 11902.9197862236
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 98701
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.14237268518519e-07
      TotalHours: 2.74169444444444e-06
      TotalMilliseconds: 9.8701
      TotalMinutes: 0.000164501666666667
      TotalSeconds: 0.0098701
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
              
    RelativeSpeed: 1.17483008582005
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 10131.6096088186
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 151403
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.75234953703704e-07
      TotalHours: 4.20563888888889e-06
      TotalMilliseconds: 15.1403
      TotalMinutes: 0.000252338333333333
      TotalSeconds: 0.0151403
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
              
    RelativeSpeed: 1.80213776439361
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 6604.88893879249
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 406584
      Days: 0
      Hours: 0
      Milliseconds: 40
      Minutes: 0
      Seconds: 0
      TotalDays: 4.70583333333333e-07
      TotalHours: 1.1294e-05
      TotalMilliseconds: 40.6584
      TotalMinutes: 0.00067764
      TotalSeconds: 0.0406584
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (2 properties)
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
    RelativeSpeed: 4.83953673836192
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 2459.51636070283
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1296568
      Days: 0
      Hours: 0
      Milliseconds: 129
      Minutes: 0
      Seconds: 0
      TotalDays: 1.50065740740741e-06
      TotalHours: 3.60157777777778e-05
      TotalMilliseconds: 129.6568
      TotalMinutes: 0.00216094666666667
      TotalSeconds: 0.1296568
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (2 properties)
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
    RelativeSpeed: 15.4329449013843
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 771.266913883422
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
FileName: Creating Property Bags
ClockSpeed: 2095
---


### (1 property)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.008799|1x           |11364.8/s |
|New-Object PSObject -Property @{}|100        |00:00:00.015250|1.73x        |6556.99/s |
|Static Constructors Only         |100        |00:00:00.015557|1.77x        |6427.97/s |
|New-Object ; Add-Member          |100        |00:00:00.028030|3.19x        |3567.61/s |
|New-Object \| Add-Member         |100        |00:00:00.080677|9.17x        |1239.51/s |


### (2 properties)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.008401|1x           |11902.92/s|
|Static Constructors Only         |100        |00:00:00.009870|1.17x        |10131.61/s|
|New-Object PSObject -Property @{}|100        |00:00:00.015140|1.8x         |6604.89/s |
|New-Object ; Add-Member          |100        |00:00:00.040658|4.84x        |2459.52/s |
|New-Object \| Add-Member         |100        |00:00:00.129656|15.43x       |771.27/s  |
