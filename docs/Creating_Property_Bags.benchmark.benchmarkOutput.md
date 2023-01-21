---
layout: Benchmark

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 84754
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.80949074074074e-08
      TotalHours: 2.35427777777778e-06
      TotalMilliseconds: 8.4754
      TotalMinutes: 0.000141256666666667
      TotalSeconds: 0.0084754
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                  }
              
    RelativeSpeed: 1
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 11798.8531514737
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 161383
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.8678587962963e-07
      TotalHours: 4.48286111111111e-06
      TotalMilliseconds: 16.1383
      TotalMinutes: 0.000268971666666667
      TotalSeconds: 0.0161383
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
    RelativeSpeed: 1.90413431814428
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 6196.43952584845
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 206531
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.39040509259259e-07
      TotalHours: 5.73697222222222e-06
      TotalMilliseconds: 20.6531
      TotalMinutes: 0.000344218333333333
      TotalSeconds: 0.0206531
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
    RelativeSpeed: 2.43682894022701
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 4841.88814270013
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 294242
      Days: 0
      Hours: 0
      Milliseconds: 29
      Minutes: 0
      Seconds: 0
      TotalDays: 3.4055787037037e-07
      TotalHours: 8.17338888888889e-06
      TotalMilliseconds: 29.4242
      TotalMinutes: 0.000490403333333333
      TotalSeconds: 0.0294242
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
    RelativeSpeed: 3.47171814899592
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 3398.56308752659
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 817240
      Days: 0
      Hours: 0
      Milliseconds: 81
      Minutes: 0
      Seconds: 0
      TotalDays: 9.4587962962963e-07
      TotalHours: 2.27011111111111e-05
      TotalMilliseconds: 81.724
      TotalMinutes: 0.00136206666666667
      TotalSeconds: 0.081724
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        FileName: Creating Property Bags
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
    RelativeSpeed: 9.64249474951035
    GroupName: (1 property)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 1223.63075718271
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 68115
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.88368055555556e-08
      TotalHours: 1.89208333333333e-06
      TotalMilliseconds: 6.8115
      TotalMinutes: 0.000113525
      TotalSeconds: 0.0068115
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                      c='d'
                  }
              
    RelativeSpeed: 1
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 14681.0540996844
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 104106
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.20493055555556e-07
      TotalHours: 2.89183333333333e-06
      TotalMilliseconds: 10.4106
      TotalMinutes: 0.00017351
      TotalSeconds: 0.0104106
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('c','d'))
                  $o
              
    RelativeSpeed: 1.52838581810174
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 9605.59429811922
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 163230
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.88923611111111e-07
      TotalHours: 4.53416666666667e-06
      TotalMilliseconds: 16.323
      TotalMinutes: 0.00027205
      TotalSeconds: 0.016323
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                      c = 'd'
                  }
              
    RelativeSpeed: 2.39638846069148
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 6126.32481774184
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 446921
      Days: 0
      Hours: 0
      Milliseconds: 44
      Minutes: 0
      Seconds: 0
      TotalDays: 5.17269675925926e-07
      TotalHours: 1.24144722222222e-05
      TotalMilliseconds: 44.6921
      TotalMinutes: 0.000744868333333333
      TotalSeconds: 0.0446921
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
    RelativeSpeed: 6.56127137928503
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 2237.53191279891
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1473317
      Days: 0
      Hours: 0
      Milliseconds: 147
      Minutes: 0
      Seconds: 0
      TotalDays: 1.70522800925926e-06
      TotalHours: 4.09254722222222e-05
      TotalMilliseconds: 147.3317
      TotalMinutes: 0.00245552833333333
      TotalSeconds: 0.1473317
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        FileName: Creating Property Bags
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
    RelativeSpeed: 21.6298465829847
    GroupName: (2 properties)
    ClockSpeed: 2095
    FileName: Creating Property Bags
    Throughput: 678.740556173586
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
FileName: Creating Property Bags
ClockSpeed: 2095
---
Creating Property Bags
----------------------
> @2095 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.008475|1x           |11798.85/s|
|New-Object PSObject -Property @{}|00:00:00.016138|1.9x         |6196.44/s |
|Static Constructors Only         |00:00:00.020653|2.44x        |4841.89/s |
|New-Object ; Add-Member          |00:00:00.029424|3.47x        |3398.56/s |
|New-Object \| Add-Member         |00:00:00.081724|9.64x        |1223.63/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.006811|1x           |14681.05/s|
|Static Constructors Only         |00:00:00.010410|1.53x        |9605.59/s |
|New-Object PSObject -Property @{}|00:00:00.016323|2.4x         |6126.32/s |
|New-Object ; Add-Member          |00:00:00.044692|6.56x        |2237.53/s |
|New-Object \| Add-Member         |00:00:00.147331|21.63x       |678.74/s  |
