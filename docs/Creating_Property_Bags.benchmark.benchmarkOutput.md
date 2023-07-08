---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 118859
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.37568287037037e-07
      TotalHours: 3.30163888888889e-06
      TotalMilliseconds: 11.8859
      TotalMinutes: 0.000198098333333333
      TotalSeconds: 0.0118859
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
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 8413.33008017904
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: Static Constructors Only
    Time: 
      Ticks: 208392
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.41194444444444e-07
      TotalHours: 5.78866666666667e-06
      TotalMilliseconds: 20.8392
      TotalMinutes: 0.00034732
      TotalSeconds: 0.0208392
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (1 property)
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
    RelativeSpeed: 1.75327068206867
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 4798.64870052593
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 223811
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.59040509259259e-07
      TotalHours: 6.21697222222222e-06
      TotalMilliseconds: 22.3811
      TotalMinutes: 0.000373018333333333
      TotalSeconds: 0.0223811
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (1 property)
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
    RelativeSpeed: 1.88299581857495
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 4468.05563622878
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 371898
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.304375e-07
      TotalHours: 1.03305e-05
      TotalMilliseconds: 37.1898
      TotalMinutes: 0.00061983
      TotalSeconds: 0.0371898
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (1 property)
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
    RelativeSpeed: 3.12890063015842
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 2688.90932459976
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1056967
      Days: 0
      Hours: 0
      Milliseconds: 105
      Minutes: 0
      Seconds: 0
      TotalDays: 1.22334143518519e-06
      TotalHours: 2.93601944444444e-05
      TotalMilliseconds: 105.6967
      TotalMinutes: 0.00176161166666667
      TotalSeconds: 0.1056967
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (1 property)
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
    RelativeSpeed: 8.8926122548566
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 946.103331513661
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: PSCustomObject
    Time: 
      Ticks: 122996
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.42356481481481e-07
      TotalHours: 3.41655555555556e-06
      TotalMilliseconds: 12.2996
      TotalMinutes: 0.000204993333333333
      TotalSeconds: 0.0122996
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
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 8130.34570229926
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: Static Constructors Only
    Time: 
      Ticks: 142214
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.64599537037037e-07
      TotalHours: 3.95038888888889e-06
      TotalMilliseconds: 14.2214
      TotalMinutes: 0.000237023333333333
      TotalSeconds: 0.0142214
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
              
    RelativeSpeed: 1.15624898370679
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 7031.65651764243
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 216418
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.50483796296296e-07
      TotalHours: 6.01161111111111e-06
      TotalMilliseconds: 21.6418
      TotalMinutes: 0.000360696666666667
      TotalSeconds: 0.0216418
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
              
    RelativeSpeed: 1.7595531562002
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 4620.68774316369
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 527964
      Days: 0
      Hours: 0
      Milliseconds: 52
      Minutes: 0
      Seconds: 0
      TotalDays: 6.11069444444444e-07
      TotalHours: 1.46656666666667e-05
      TotalMilliseconds: 52.7964
      TotalMinutes: 0.00087994
      TotalSeconds: 0.0527964
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (2 properties)
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
    RelativeSpeed: 4.29252983836873
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 1894.06853497587
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1909905
      Days: 0
      Hours: 0
      Milliseconds: 190
      Minutes: 0
      Seconds: 0
      TotalDays: 2.21053819444444e-06
      TotalHours: 5.30529166666667e-05
      TotalMilliseconds: 190.9905
      TotalMinutes: 0.003183175
      TotalSeconds: 0.1909905
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        GroupName: (2 properties)
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
    RelativeSpeed: 15.5281879085499
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 523.586251672204
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
FileName: Creating Property Bags
ClockSpeed: 2295
---


### (1 property)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.011885|1x           |8413.33/s |
|Static Constructors Only         |100        |00:00:00.020839|1.75x        |4798.65/s |
|New-Object PSObject -Property @{}|100        |00:00:00.022381|1.88x        |4468.06/s |
|New-Object ; Add-Member          |100        |00:00:00.037189|3.13x        |2688.91/s |
|New-Object \| Add-Member         |100        |00:00:00.105696|8.89x        |946.1/s   |


### (2 properties)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.012299|1x           |8130.35/s |
|Static Constructors Only         |100        |00:00:00.014221|1.16x        |7031.66/s |
|New-Object PSObject -Property @{}|100        |00:00:00.021641|1.76x        |4620.69/s |
|New-Object ; Add-Member          |100        |00:00:00.052796|4.29x        |1894.07/s |
|New-Object \| Add-Member         |100        |00:00:00.190990|15.53x       |523.59/s  |
