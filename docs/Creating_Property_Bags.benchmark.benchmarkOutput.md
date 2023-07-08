---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 104559
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.21017361111111e-07
      TotalHours: 2.90441666666667e-06
      TotalMilliseconds: 10.4559
      TotalMinutes: 0.000174265
      TotalSeconds: 0.0104559
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
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 9563.97823238554
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 192744
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.23083333333333e-07
      TotalHours: 5.354e-06
      TotalMilliseconds: 19.2744
      TotalMinutes: 0.00032124
      TotalSeconds: 0.0192744
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 1.84339942042292
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 5188.22894616694
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 339281
      Days: 0
      Hours: 0
      Milliseconds: 33
      Minutes: 0
      Seconds: 0
      TotalDays: 3.92686342592593e-07
      TotalHours: 9.42447222222222e-06
      TotalMilliseconds: 33.9281
      TotalMinutes: 0.000565468333333333
      TotalSeconds: 0.0339281
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 3.244876098662
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 2947.40937453026
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 403714
      Days: 0
      Hours: 0
      Milliseconds: 40
      Minutes: 0
      Seconds: 0
      TotalDays: 4.67261574074074e-07
      TotalHours: 1.12142777777778e-05
      TotalMilliseconds: 40.3714
      TotalMinutes: 0.000672856666666667
      TotalSeconds: 0.0403714
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 3.8611119081093
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 2477.00104529444
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1075823
      Days: 0
      Hours: 0
      Milliseconds: 107
      Minutes: 0
      Seconds: 0
      TotalDays: 1.24516550925926e-06
      TotalHours: 2.98839722222222e-05
      TotalMilliseconds: 107.5823
      TotalMinutes: 0.00179303833333333
      TotalSeconds: 0.1075823
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 10.2891477538997
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 929.52093420572
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 84903
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.82673611111111e-08
      TotalHours: 2.35841666666667e-06
      TotalMilliseconds: 8.4903
      TotalMinutes: 0.000141505
      TotalSeconds: 0.0084903
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
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 11778.1468263783
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 170096
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 1.9687037037037e-07
      TotalHours: 4.72488888888889e-06
      TotalMilliseconds: 17.0096
      TotalMinutes: 0.000283493333333333
      TotalSeconds: 0.0170096
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
    RelativeSpeed: 2.00341566257965
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 5879.03301664942
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 280330
      Days: 0
      Hours: 0
      Milliseconds: 28
      Minutes: 0
      Seconds: 0
      TotalDays: 3.24456018518519e-07
      TotalHours: 7.78694444444444e-06
      TotalMilliseconds: 28.033
      TotalMinutes: 0.000467216666666667
      TotalSeconds: 0.028033
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
    RelativeSpeed: 3.30176789983864
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 3567.22434273891
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 556155
      Days: 0
      Hours: 0
      Milliseconds: 55
      Minutes: 0
      Seconds: 0
      TotalDays: 6.43697916666667e-07
      TotalHours: 1.544875e-05
      TotalMilliseconds: 55.6155
      TotalMinutes: 0.000926925
      TotalSeconds: 0.0556155
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        GroupName: (2 properties)
        FileName: Creating Property Bags
    RelativeSpeed: 6.55047524822444
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 1798.05989337505
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1835357
      Days: 0
      Hours: 0
      Milliseconds: 183
      Minutes: 0
      Seconds: 0
      TotalDays: 2.12425578703704e-06
      TotalHours: 5.09821388888889e-05
      TotalMilliseconds: 183.5357
      TotalMinutes: 0.00305892833333333
      TotalSeconds: 0.1835357
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        GroupName: (2 properties)
        FileName: Creating Property Bags
    RelativeSpeed: 21.6171042248213
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 544.85312666691
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
FileName: Creating Property Bags
ClockSpeed: 2295
---
Creating Property Bags
----------------------
> @2295 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.010455|1x           |9563.98/s |
|Static Constructors Only         |00:00:00.019274|1.84x        |5188.23/s |
|New-Object PSObject -Property @{}|00:00:00.033928|3.24x        |2947.41/s |
|New-Object ; Add-Member          |00:00:00.040371|3.86x        |2477/s    |
|New-Object \| Add-Member         |00:00:00.107582|10.29x       |929.52/s  |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.008490|1x           |11778.15/s|
|Static Constructors Only         |00:00:00.017009|2x           |5879.03/s |
|New-Object PSObject -Property @{}|00:00:00.028033|3.3x         |3567.22/s |
|New-Object ; Add-Member          |00:00:00.055615|6.55x        |1798.06/s |
|New-Object \| Add-Member         |00:00:00.183535|21.62x       |544.85/s  |
