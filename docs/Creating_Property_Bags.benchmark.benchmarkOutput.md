---
layout: Benchmark

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 140121
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.62177083333333e-07
      TotalHours: 3.89225e-06
      TotalMilliseconds: 14.0121
      TotalMinutes: 0.000233535
      TotalSeconds: 0.0140121
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
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 7136.68900450325
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 216977
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.51130787037037e-07
      TotalHours: 6.02713888888889e-06
      TotalMilliseconds: 21.6977
      TotalMinutes: 0.000361628333333333
      TotalSeconds: 0.0216977
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
    RelativeSpeed: 1.5484973701301
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 4608.78341944077
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 245110
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.8369212962963e-07
      TotalHours: 6.80861111111111e-06
      TotalMilliseconds: 24.511
      TotalMinutes: 0.000408516666666667
      TotalSeconds: 0.024511
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
    RelativeSpeed: 1.74927384189379
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 4079.8009057158
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 506984
      Days: 0
      Hours: 0
      Milliseconds: 50
      Minutes: 0
      Seconds: 0
      TotalDays: 5.86787037037037e-07
      TotalHours: 1.40828888888889e-05
      TotalMilliseconds: 50.6984
      TotalMinutes: 0.000844973333333333
      TotalSeconds: 0.0506984
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
    RelativeSpeed: 3.61818713825908
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 1972.44883467723
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1230058
      Days: 0
      Hours: 0
      Milliseconds: 123
      Minutes: 0
      Seconds: 0
      TotalDays: 1.42367824074074e-06
      TotalHours: 3.41682777777778e-05
      TotalMilliseconds: 123.0058
      TotalMinutes: 0.00205009666666667
      TotalSeconds: 0.1230058
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        FileName: Creating Property Bags
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
    RelativeSpeed: 8.77854140350126
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 812.96979492024
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 135637
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.56987268518519e-07
      TotalHours: 3.76769444444444e-06
      TotalMilliseconds: 13.5637
      TotalMinutes: 0.000226061666666667
      TotalSeconds: 0.0135637
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
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 7372.6195654578
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 146085
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.69079861111111e-07
      TotalHours: 4.05791666666667e-06
      TotalMilliseconds: 14.6085
      TotalMinutes: 0.000243475
      TotalSeconds: 0.0146085
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
              
    RelativeSpeed: 1.0770291292199
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 6845.32977376185
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 205311
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.37628472222222e-07
      TotalHours: 5.70308333333333e-06
      TotalMilliseconds: 20.5311
      TotalMinutes: 0.000342185
      TotalSeconds: 0.0205311
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
              
    RelativeSpeed: 1.51367989560371
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 4870.65963343416
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 571232
      Days: 0
      Hours: 0
      Milliseconds: 57
      Minutes: 0
      Seconds: 0
      TotalDays: 6.61148148148148e-07
      TotalHours: 1.58675555555556e-05
      TotalMilliseconds: 57.1232
      TotalMinutes: 0.000952053333333333
      TotalSeconds: 0.0571232
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
    RelativeSpeed: 4.21147621961559
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 1750.60220715926
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1806046
      Days: 0
      Hours: 0
      Milliseconds: 180
      Minutes: 0
      Seconds: 0
      TotalDays: 2.09033101851852e-06
      TotalHours: 5.01679444444444e-05
      TotalMilliseconds: 180.6046
      TotalMinutes: 0.00301007666666667
      TotalSeconds: 0.1806046
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        FileName: Creating Property Bags
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
    RelativeSpeed: 13.3152900757168
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    Throughput: 553.695753042835
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
|PSCustomObject                   |00:00:00.014012|1x           |7136.69/s |
|Static Constructors Only         |00:00:00.021697|1.55x        |4608.78/s |
|New-Object PSObject -Property @{}|00:00:00.024511|1.75x        |4079.8/s  |
|New-Object ; Add-Member          |00:00:00.050698|3.62x        |1972.45/s |
|New-Object \| Add-Member         |00:00:00.123005|8.78x        |812.97/s  |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.013563|1x           |7372.62/s |
|Static Constructors Only         |00:00:00.014608|1.08x        |6845.33/s |
|New-Object PSObject -Property @{}|00:00:00.020531|1.51x        |4870.66/s |
|New-Object ; Add-Member          |00:00:00.057123|4.21x        |1750.6/s  |
|New-Object \| Add-Member         |00:00:00.180604|13.32x       |553.7/s   |
