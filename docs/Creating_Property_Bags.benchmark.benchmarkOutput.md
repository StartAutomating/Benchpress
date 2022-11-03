---
layout: Benchmark

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 79382
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.18773148148148e-08
      TotalHours: 2.20505555555556e-06
      TotalMilliseconds: 7.9382
      TotalMinutes: 0.000132303333333333
      TotalSeconds: 0.0079382
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
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 12597.3142526013
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 138104
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.59842592592593e-07
      TotalHours: 3.83622222222222e-06
      TotalMilliseconds: 13.8104
      TotalMinutes: 0.000230173333333333
      TotalSeconds: 0.0138104
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        GroupName: (1 property)
    RelativeSpeed: 1.73973948754126
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 7240.91988646238
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 173945
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.01325231481481e-07
      TotalHours: 4.83180555555556e-06
      TotalMilliseconds: 17.3945
      TotalMinutes: 0.000289908333333333
      TotalSeconds: 0.0173945
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        GroupName: (1 property)
    RelativeSpeed: 2.19123982766874
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 5748.94363160769
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 276826
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.20400462962963e-07
      TotalHours: 7.68961111111111e-06
      TotalMilliseconds: 27.6826
      TotalMinutes: 0.000461376666666667
      TotalSeconds: 0.0276826
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        GroupName: (1 property)
    RelativeSpeed: 3.48726411529062
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 3612.37745009501
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 707427
      Days: 0
      Hours: 0
      Milliseconds: 70
      Minutes: 0
      Seconds: 0
      TotalDays: 8.1878125e-07
      TotalHours: 1.965075e-05
      TotalMilliseconds: 70.7427
      TotalMinutes: 0.001179045
      TotalSeconds: 0.0707427
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        GroupName: (1 property)
    RelativeSpeed: 8.91168022977501
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 1413.57341464208
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 59187
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.85034722222222e-08
      TotalHours: 1.64408333333333e-06
      TotalMilliseconds: 5.9187
      TotalMinutes: 9.8645e-05
      TotalSeconds: 0.0059187
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
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 16895.6020747799
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 89968
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0412962962963e-07
      TotalHours: 2.49911111111111e-06
      TotalMilliseconds: 8.9968
      TotalMinutes: 0.000149946666666667
      TotalSeconds: 0.0089968
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
    RelativeSpeed: 1.5200635274638
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 11115.0631335586
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 139979
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.62012731481481e-07
      TotalHours: 3.88830555555556e-06
      TotalMilliseconds: 13.9979
      TotalMinutes: 0.000233298333333333
      TotalSeconds: 0.0139979
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
    RelativeSpeed: 2.36502948282562
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 7143.92873216697
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 371916
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.30458333333333e-07
      TotalHours: 1.0331e-05
      TotalMilliseconds: 37.1916
      TotalMinutes: 0.00061986
      TotalSeconds: 0.0371916
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        GroupName: (2 properties)
    RelativeSpeed: 6.28374474124385
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 2688.77918669807
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1252450
      Days: 0
      Hours: 0
      Milliseconds: 125
      Minutes: 0
      Seconds: 0
      TotalDays: 1.44959490740741e-06
      TotalHours: 3.47902777777778e-05
      TotalMilliseconds: 125.245
      TotalMinutes: 0.00208741666666667
      TotalSeconds: 0.125245
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        FileName: Creating Property Bags
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        GroupName: (2 properties)
    RelativeSpeed: 21.1608968185581
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 798.435067268154
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
FileName: Creating Property Bags
ClockSpeed: 2594
---
Creating Property Bags
----------------------
> @2594 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.007938|1x           |12597.31/s|
|Static Constructors Only         |00:00:00.013810|1.74x        |7240.92/s |
|New-Object PSObject -Property @{}|00:00:00.017394|2.19x        |5748.94/s |
|New-Object ; Add-Member          |00:00:00.027682|3.49x        |3612.38/s |
|New-Object \| Add-Member         |00:00:00.070742|8.91x        |1413.57/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.005918|1x           |16895.6/s |
|Static Constructors Only         |00:00:00.008996|1.52x        |11115.06/s|
|New-Object PSObject -Property @{}|00:00:00.013997|2.37x        |7143.93/s |
|New-Object ; Add-Member          |00:00:00.037191|6.28x        |2688.78/s |
|New-Object \| Add-Member         |00:00:00.125245|21.16x       |798.44/s  |
