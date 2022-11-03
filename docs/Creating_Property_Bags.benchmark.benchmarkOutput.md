---
layout: Benchmark

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 119284
      Days: 0
      Hours: 0
      Milliseconds: 11
      Minutes: 0
      Seconds: 0
      TotalDays: 1.38060185185185e-07
      TotalHours: 3.31344444444444e-06
      TotalMilliseconds: 11.9284
      TotalMinutes: 0.000198806666666667
      TotalSeconds: 0.0119284
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
    ClockSpeed: 2394
    FileName: Creating Property Bags
    Throughput: 8383.35401227323
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 208237
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.41015046296296e-07
      TotalHours: 5.78436111111111e-06
      TotalMilliseconds: 20.8237
      TotalMinutes: 0.000347061666666667
      TotalSeconds: 0.0208237
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 1.74572448945374
    GroupName: (1 property)
    ClockSpeed: 2394
    FileName: Creating Property Bags
    Throughput: 4802.22054678083
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 230102
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.66321759259259e-07
      TotalHours: 6.39172222222222e-06
      TotalMilliseconds: 23.0102
      TotalMinutes: 0.000383503333333333
      TotalSeconds: 0.0230102
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 1.9290265249321
    GroupName: (1 property)
    ClockSpeed: 2394
    FileName: Creating Property Bags
    Throughput: 4345.89877532573
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 414083
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.79262731481482e-07
      TotalHours: 1.15023055555556e-05
      TotalMilliseconds: 41.4083
      TotalMinutes: 0.000690138333333333
      TotalSeconds: 0.0414083
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 3.47140437946414
    GroupName: (1 property)
    ClockSpeed: 2394
    FileName: Creating Property Bags
    Throughput: 2414.97477558847
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 976166
      Days: 0
      Hours: 0
      Milliseconds: 97
      Minutes: 0
      Seconds: 0
      TotalDays: 1.12982175925926e-06
      TotalHours: 2.71157222222222e-05
      TotalMilliseconds: 97.6166
      TotalMinutes: 0.00162694333333333
      TotalSeconds: 0.0976166
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 8.18354515274471
    GroupName: (1 property)
    ClockSpeed: 2394
    FileName: Creating Property Bags
    Throughput: 1024.41592925793
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 97692
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.13069444444444e-07
      TotalHours: 2.71366666666667e-06
      TotalMilliseconds: 9.7692
      TotalMinutes: 0.00016282
      TotalSeconds: 0.0097692
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
    ClockSpeed: 2394
    FileName: Creating Property Bags
    Throughput: 10236.252712607
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 134785
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.56001157407407e-07
      TotalHours: 3.74402777777778e-06
      TotalMilliseconds: 13.4785
      TotalMinutes: 0.000224641666666667
      TotalSeconds: 0.0134785
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
    RelativeSpeed: 1.37969332186873
    GroupName: (2 properties)
    ClockSpeed: 2394
    FileName: Creating Property Bags
    Throughput: 7419.22320733019
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 214407
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.4815625e-07
      TotalHours: 5.95575e-06
      TotalMilliseconds: 21.4407
      TotalMinutes: 0.000357345
      TotalSeconds: 0.0214407
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
    RelativeSpeed: 2.19472423535192
    GroupName: (2 properties)
    ClockSpeed: 2394
    FileName: Creating Property Bags
    Throughput: 4664.02682748231
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 584971
      Days: 0
      Hours: 0
      Milliseconds: 58
      Minutes: 0
      Seconds: 0
      TotalDays: 6.77049768518518e-07
      TotalHours: 1.62491944444444e-05
      TotalMilliseconds: 58.4971
      TotalMinutes: 0.000974951666666667
      TotalSeconds: 0.0584971
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        GroupName: (2 properties)
        FileName: Creating Property Bags
    RelativeSpeed: 5.98791098554641
    GroupName: (2 properties)
    ClockSpeed: 2394
    FileName: Creating Property Bags
    Throughput: 1709.4864531746
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1787714
      Days: 0
      Hours: 0
      Milliseconds: 178
      Minutes: 0
      Seconds: 0
      TotalDays: 2.06911342592593e-06
      TotalHours: 4.96587222222222e-05
      TotalMilliseconds: 178.7714
      TotalMinutes: 0.00297952333333333
      TotalSeconds: 0.1787714
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        GroupName: (2 properties)
        FileName: Creating Property Bags
    RelativeSpeed: 18.2994922818655
    GroupName: (2 properties)
    ClockSpeed: 2394
    FileName: Creating Property Bags
    Throughput: 559.373591077768
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
FileName: Creating Property Bags
ClockSpeed: 2394
---
Creating Property Bags
----------------------
> @2394 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.011928|1x           |8383.35/s |
|Static Constructors Only         |00:00:00.020823|1.75x        |4802.22/s |
|New-Object PSObject -Property @{}|00:00:00.023010|1.93x        |4345.9/s  |
|New-Object ; Add-Member          |00:00:00.041408|3.47x        |2414.97/s |
|New-Object \| Add-Member         |00:00:00.097616|8.18x        |1024.42/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.009769|1x           |10236.25/s|
|Static Constructors Only         |00:00:00.013478|1.38x        |7419.22/s |
|New-Object PSObject -Property @{}|00:00:00.021440|2.19x        |4664.03/s |
|New-Object ; Add-Member          |00:00:00.058497|5.99x        |1709.49/s |
|New-Object \| Add-Member         |00:00:00.178771|18.3x        |559.37/s  |
