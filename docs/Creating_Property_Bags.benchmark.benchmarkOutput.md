---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 106953
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.23788194444444e-07
      TotalHours: 2.97091666666667e-06
      TotalMilliseconds: 10.6953
      TotalMinutes: 0.000178255
      TotalSeconds: 0.0106953
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                  }
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 1
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 9349.90135854067
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: Static Constructors Only
    Time: 
      Ticks: 190952
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.21009259259259e-07
      TotalHours: 5.30422222222222e-06
      TotalMilliseconds: 19.0952
      TotalMinutes: 0.000318253333333333
      TotalSeconds: 0.0190952
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 1.78538236421606
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 5236.91817839038
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 341278
      Days: 0
      Hours: 0
      Milliseconds: 34
      Minutes: 0
      Seconds: 0
      TotalDays: 3.94997685185185e-07
      TotalHours: 9.47994444444444e-06
      TotalMilliseconds: 34.1278
      TotalMinutes: 0.000568796666666667
      TotalSeconds: 0.0341278
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 3.19091563584004
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 2930.16250681263
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 344657
      Days: 0
      Hours: 0
      Milliseconds: 34
      Minutes: 0
      Seconds: 0
      TotalDays: 3.98908564814815e-07
      TotalHours: 9.57380555555556e-06
      TotalMilliseconds: 34.4657
      TotalMinutes: 0.000574428333333333
      TotalSeconds: 0.0344657
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 3.22250895253055
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 2901.43534006273
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1050043
      Days: 0
      Hours: 0
      Milliseconds: 105
      Minutes: 0
      Seconds: 0
      TotalDays: 1.2153275462963e-06
      TotalHours: 2.91678611111111e-05
      TotalMilliseconds: 105.0043
      TotalMinutes: 0.00175007166666667
      TotalSeconds: 0.1050043
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 9.81779847222612
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 952.341951710549
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: PSCustomObject
    Time: 
      Ticks: 83932
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.71435185185185e-08
      TotalHours: 2.33144444444444e-06
      TotalMilliseconds: 8.3932
      TotalMinutes: 0.000139886666666667
      TotalSeconds: 0.0083932
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                      c='d'
                  }
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 1
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 11914.4069008245
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 204591
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.36795138888889e-07
      TotalHours: 5.68308333333333e-06
      TotalMilliseconds: 20.4591
      TotalMinutes: 0.000340985
      TotalSeconds: 0.0204591
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                      c = 'd'
                  }
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 2.43758042224658
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 4887.80053863562
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: Static Constructors Only
    Time: 
      Ticks: 218743
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.53174768518518e-07
      TotalHours: 6.07619444444444e-06
      TotalMilliseconds: 21.8743
      TotalMinutes: 0.000364571666666667
      TotalSeconds: 0.0218743
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('c','d'))
                  $o
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 2.60619310870705
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 4571.57486182415
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 742664
      Days: 0
      Hours: 0
      Milliseconds: 74
      Minutes: 0
      Seconds: 0
      TotalDays: 8.59564814814815e-07
      TotalHours: 2.06295555555556e-05
      TotalMilliseconds: 74.2664
      TotalMinutes: 0.00123777333333333
      TotalSeconds: 0.0742664
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 8.84840108659391
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 1346.50393717751
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1740545
      Days: 0
      Hours: 0
      Milliseconds: 174
      Minutes: 0
      Seconds: 0
      TotalDays: 2.01451967592593e-06
      TotalHours: 4.83484722222222e-05
      TotalMilliseconds: 174.0545
      TotalMinutes: 0.00290090833333333
      TotalSeconds: 0.1740545
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 20.7375613591955
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 574.532689473699
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
FileName: Creating Property Bags
ClockSpeed: 2295
---


### (1 property)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.010695|1x           |9349.9/s  |
|Static Constructors Only         |100        |00:00:00.019095|1.79x        |5236.92/s |
|New-Object PSObject -Property @{}|100        |00:00:00.034127|3.19x        |2930.16/s |
|New-Object ; Add-Member          |100        |00:00:00.034465|3.22x        |2901.44/s |
|New-Object \| Add-Member         |100        |00:00:00.105004|9.82x        |952.34/s  |


### (2 properties)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.008393|1x           |11914.41/s|
|New-Object PSObject -Property @{}|100        |00:00:00.020459|2.44x        |4887.8/s  |
|Static Constructors Only         |100        |00:00:00.021874|2.61x        |4571.57/s |
|New-Object ; Add-Member          |100        |00:00:00.074266|8.85x        |1346.5/s  |
|New-Object \| Add-Member         |100        |00:00:00.174054|20.74x       |574.53/s  |
