---
layout: Benchmark

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 147151
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.70313657407407e-07
      TotalHours: 4.08752777777778e-06
      TotalMilliseconds: 14.7151
      TotalMinutes: 0.000245251666666667
      TotalSeconds: 0.0147151
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
    Throughput: 6795.74042989854
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 212309
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.45728009259259e-07
      TotalHours: 5.89747222222222e-06
      TotalMilliseconds: 21.2309
      TotalMinutes: 0.000353848333333333
      TotalSeconds: 0.0212309
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 1.44279685493133
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 4710.11591595269
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 228557
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.64533564814815e-07
      TotalHours: 6.34880555555556e-06
      TotalMilliseconds: 22.8557
      TotalMinutes: 0.000380928333333333
      TotalSeconds: 0.0228557
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 1.55321404543632
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 4375.27618930945
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 368422
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.26414351851852e-07
      TotalHours: 1.02339444444444e-05
      TotalMilliseconds: 36.8422
      TotalMinutes: 0.000614036666666667
      TotalSeconds: 0.0368422
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 2.50370028066408
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 2714.27873471183
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1006717
      Days: 0
      Hours: 0
      Milliseconds: 100
      Minutes: 0
      Seconds: 0
      TotalDays: 1.16518171296296e-06
      TotalHours: 2.79643611111111e-05
      TotalMilliseconds: 100.6717
      TotalMinutes: 0.00167786166666667
      TotalSeconds: 0.1006717
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 6.84138741836617
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 993.327817052856
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 93805
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.08570601851852e-07
      TotalHours: 2.60569444444444e-06
      TotalMilliseconds: 9.3805
      TotalMinutes: 0.000156341666666667
      TotalSeconds: 0.0093805
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
    Throughput: 10660.412557966
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 155488
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.79962962962963e-07
      TotalHours: 4.31911111111111e-06
      TotalMilliseconds: 15.5488
      TotalMinutes: 0.000259146666666667
      TotalSeconds: 0.0155488
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
    RelativeSpeed: 1.65756622781302
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 6431.36447828771
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 208723
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.41577546296296e-07
      TotalHours: 5.79786111111111e-06
      TotalMilliseconds: 20.8723
      TotalMinutes: 0.000347871666666667
      TotalSeconds: 0.0208723
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
    RelativeSpeed: 2.22507329033634
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 4791.03884095188
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 490237
      Days: 0
      Hours: 0
      Milliseconds: 49
      Minutes: 0
      Seconds: 0
      TotalDays: 5.67403935185185e-07
      TotalHours: 1.36176944444444e-05
      TotalMilliseconds: 49.0237
      TotalMinutes: 0.000817061666666667
      TotalSeconds: 0.0490237
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 5.22612867117957
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 2039.82971501539
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1920517
      Days: 0
      Hours: 0
      Milliseconds: 192
      Minutes: 0
      Seconds: 0
      TotalDays: 2.22282060185185e-06
      TotalHours: 5.33476944444444e-05
      TotalMilliseconds: 192.0517
      TotalMinutes: 0.00320086166666667
      TotalSeconds: 0.1920517
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 20.4735035445872
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 520.693125861422
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
|PSCustomObject                   |00:00:00.014715|1x           |6795.74/s |
|Static Constructors Only         |00:00:00.021230|1.44x        |4710.12/s |
|New-Object PSObject -Property @{}|00:00:00.022855|1.55x        |4375.28/s |
|New-Object ; Add-Member          |00:00:00.036842|2.5x         |2714.28/s |
|New-Object \| Add-Member         |00:00:00.100671|6.84x        |993.33/s  |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.009380|1x           |10660.41/s|
|Static Constructors Only         |00:00:00.015548|1.66x        |6431.36/s |
|New-Object PSObject -Property @{}|00:00:00.020872|2.23x        |4791.04/s |
|New-Object ; Add-Member          |00:00:00.049023|5.23x        |2039.83/s |
|New-Object \| Add-Member         |00:00:00.192051|20.47x       |520.69/s  |
