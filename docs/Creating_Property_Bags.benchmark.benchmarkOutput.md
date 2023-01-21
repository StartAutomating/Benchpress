---
layout: Benchmark

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 76813
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.89039351851852e-08
      TotalHours: 2.13369444444444e-06
      TotalMilliseconds: 7.6813
      TotalMinutes: 0.000128021666666667
      TotalSeconds: 0.0076813
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                  }
              
        FileName: Creating Property Bags
    RelativeSpeed: 1
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 13018.6296590421
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 132586
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.53456018518519e-07
      TotalHours: 3.68294444444444e-06
      TotalMilliseconds: 13.2586
      TotalMinutes: 0.000220976666666667
      TotalSeconds: 0.0132586
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        FileName: Creating Property Bags
    RelativeSpeed: 1.72608803197375
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 7542.27444828262
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 133191
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.5415625e-07
      TotalHours: 3.69975e-06
      TotalMilliseconds: 13.3191
      TotalMinutes: 0.000221985
      TotalSeconds: 0.0133191
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        FileName: Creating Property Bags
    RelativeSpeed: 1.73396430291747
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 7508.0148058052
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 241505
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.79519675925926e-07
      TotalHours: 6.70847222222222e-06
      TotalMilliseconds: 24.1505
      TotalMinutes: 0.000402508333333333
      TotalSeconds: 0.0241505
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 3.14406415580696
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 4140.7010206828
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 655545
      Days: 0
      Hours: 0
      Milliseconds: 65
      Minutes: 0
      Seconds: 0
      TotalDays: 7.58732638888889e-07
      TotalHours: 1.82095833333333e-05
      TotalMilliseconds: 65.5545
      TotalMinutes: 0.001092575
      TotalSeconds: 0.0655545
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 8.53429757983675
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 1525.44829111655
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 58120
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.72685185185185e-08
      TotalHours: 1.61444444444444e-06
      TotalMilliseconds: 5.812
      TotalMinutes: 9.68666666666667e-05
      TotalSeconds: 0.005812
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        ScriptBlock: |
          
                  [PSCustomObject]@{
                      a='b'
                      c='d'
                  }
              
        FileName: Creating Property Bags
    RelativeSpeed: 1
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 17205.7811424639
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 90758
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05043981481481e-07
      TotalHours: 2.52105555555556e-06
      TotalMilliseconds: 9.0758
      TotalMinutes: 0.000151263333333333
      TotalSeconds: 0.0090758
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('c','d'))
                  $o
              
        FileName: Creating Property Bags
    RelativeSpeed: 1.56156228492774
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 11018.3124352674
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 137349
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.5896875e-07
      TotalHours: 3.81525e-06
      TotalMilliseconds: 13.7349
      TotalMinutes: 0.000228915
      TotalSeconds: 0.0137349
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                      c = 'd'
                  }
              
        FileName: Creating Property Bags
    RelativeSpeed: 2.36319683413627
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 7280.72283016258
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 366715
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.24438657407407e-07
      TotalHours: 1.01865277777778e-05
      TotalMilliseconds: 36.6715
      TotalMinutes: 0.000611191666666667
      TotalSeconds: 0.0366715
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 6.30961803165864
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 2726.91327052343
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1070012
      Days: 0
      Hours: 0
      Milliseconds: 107
      Minutes: 0
      Seconds: 0
      TotalDays: 1.23843981481481e-06
      TotalHours: 2.97225555555556e-05
      TotalMilliseconds: 107.0012
      TotalMinutes: 0.00178335333333333
      TotalSeconds: 0.1070012
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 18.41039229181
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 934.568958105143
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
FileName: Creating Property Bags
ClockSpeed: 2793
---
Creating Property Bags
----------------------
> @2793 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.007681|1x           |13018.63/s|
|Static Constructors Only         |00:00:00.013258|1.73x        |7542.27/s |
|New-Object PSObject -Property @{}|00:00:00.013319|1.73x        |7508.01/s |
|New-Object ; Add-Member          |00:00:00.024150|3.14x        |4140.7/s  |
|New-Object \| Add-Member         |00:00:00.065554|8.53x        |1525.45/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.005812|1x           |17205.78/s|
|Static Constructors Only         |00:00:00.009075|1.56x        |11018.31/s|
|New-Object PSObject -Property @{}|00:00:00.013734|2.36x        |7280.72/s |
|New-Object ; Add-Member          |00:00:00.036671|6.31x        |2726.91/s |
|New-Object \| Add-Member         |00:00:00.107001|18.41x       |934.57/s  |
