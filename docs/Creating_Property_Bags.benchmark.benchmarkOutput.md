---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 121630
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.40775462962963e-07
      TotalHours: 3.37861111111111e-06
      TotalMilliseconds: 12.163
      TotalMinutes: 0.000202716666666667
      TotalSeconds: 0.012163
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
    ClockSpeed: 2397
    FileName: Creating Property Bags
    Throughput: 8221.65584148648
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 198949
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.30265046296296e-07
      TotalHours: 5.52636111111111e-06
      TotalMilliseconds: 19.8949
      TotalMinutes: 0.000331581666666667
      TotalSeconds: 0.0198949
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 1.63569020800789
    GroupName: (1 property)
    ClockSpeed: 2397
    FileName: Creating Property Bags
    Throughput: 5026.41380454287
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 215666
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.49613425925926e-07
      TotalHours: 5.99072222222222e-06
      TotalMilliseconds: 21.5666
      TotalMinutes: 0.000359443333333333
      TotalSeconds: 0.0215666
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 1.77313162871002
    GroupName: (1 property)
    ClockSpeed: 2397
    FileName: Creating Property Bags
    Throughput: 4636.79949551621
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 371843
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.30373842592593e-07
      TotalHours: 1.03289722222222e-05
      TotalMilliseconds: 37.1843
      TotalMinutes: 0.000619738333333333
      TotalSeconds: 0.0371843
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 3.05716517306586
    GroupName: (1 property)
    ClockSpeed: 2397
    FileName: Creating Property Bags
    Throughput: 2689.30704625339
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1059324
      Days: 0
      Hours: 0
      Milliseconds: 105
      Minutes: 0
      Seconds: 0
      TotalDays: 1.22606944444444e-06
      TotalHours: 2.94256666666667e-05
      TotalMilliseconds: 105.9324
      TotalMinutes: 0.00176554
      TotalSeconds: 0.1059324
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 8.70939735262682
    GroupName: (1 property)
    ClockSpeed: 2397
    FileName: Creating Property Bags
    Throughput: 943.998247939252
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 97458
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.12798611111111e-07
      TotalHours: 2.70716666666667e-06
      TotalMilliseconds: 9.7458
      TotalMinutes: 0.00016243
      TotalSeconds: 0.0097458
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
    ClockSpeed: 2397
    FileName: Creating Property Bags
    Throughput: 10260.8303063884
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 139155
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.61059027777778e-07
      TotalHours: 3.86541666666667e-06
      TotalMilliseconds: 13.9155
      TotalMinutes: 0.000231925
      TotalSeconds: 0.0139155
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
    RelativeSpeed: 1.42784584128548
    GroupName: (2 properties)
    ClockSpeed: 2397
    FileName: Creating Property Bags
    Throughput: 7186.23118105709
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 259227
      Days: 0
      Hours: 0
      Milliseconds: 25
      Minutes: 0
      Seconds: 0
      TotalDays: 3.0003125e-07
      TotalHours: 7.20075e-06
      TotalMilliseconds: 25.9227
      TotalMinutes: 0.000432045
      TotalSeconds: 0.0259227
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
    RelativeSpeed: 2.65988425783414
    GroupName: (2 properties)
    ClockSpeed: 2397
    FileName: Creating Property Bags
    Throughput: 3857.6228556439
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 543413
      Days: 0
      Hours: 0
      Milliseconds: 54
      Minutes: 0
      Seconds: 0
      TotalDays: 6.28950231481482e-07
      TotalHours: 1.50948055555556e-05
      TotalMilliseconds: 54.3413
      TotalMinutes: 0.000905688333333333
      TotalSeconds: 0.0543413
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 5.57586857928544
    GroupName: (2 properties)
    ClockSpeed: 2397
    FileName: Creating Property Bags
    Throughput: 1840.22097373453
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1846084
      Days: 0
      Hours: 0
      Milliseconds: 184
      Minutes: 0
      Seconds: 0
      TotalDays: 2.1366712962963e-06
      TotalHours: 5.12801111111111e-05
      TotalMilliseconds: 184.6084
      TotalMinutes: 0.00307680666666667
      TotalSeconds: 0.1846084
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 18.9423546553387
    GroupName: (2 properties)
    ClockSpeed: 2397
    FileName: Creating Property Bags
    Throughput: 541.687160497572
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
FileName: Creating Property Bags
ClockSpeed: 2397
---


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.012163|1x           |8221.66/s |
|Static Constructors Only         |00:00:00.019894|1.64x        |5026.41/s |
|New-Object PSObject -Property @{}|00:00:00.021566|1.77x        |4636.8/s  |
|New-Object ; Add-Member          |00:00:00.037184|3.06x        |2689.31/s |
|New-Object \| Add-Member         |00:00:00.105932|8.71x        |944/s     |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.009745|1x           |10260.83/s|
|Static Constructors Only         |00:00:00.013915|1.43x        |7186.23/s |
|New-Object PSObject -Property @{}|00:00:00.025922|2.66x        |3857.62/s |
|New-Object ; Add-Member          |00:00:00.054341|5.58x        |1840.22/s |
|New-Object \| Add-Member         |00:00:00.184608|18.94x       |541.69/s  |
