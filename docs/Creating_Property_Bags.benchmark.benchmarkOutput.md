---
layout: Benchmark

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 72145
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.35011574074074e-08
      TotalHours: 2.00402777777778e-06
      TotalMilliseconds: 7.2145
      TotalMinutes: 0.000120241666666667
      TotalSeconds: 0.0072145
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
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 13860.9744265022
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 134358
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.55506944444444e-07
      TotalHours: 3.73216666666667e-06
      TotalMilliseconds: 13.4358
      TotalMinutes: 0.00022393
      TotalSeconds: 0.0134358
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        FileName: Creating Property Bags
    RelativeSpeed: 1.86233280199598
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 7442.80206612185
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 190876
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.20921296296296e-07
      TotalHours: 5.30211111111111e-06
      TotalMilliseconds: 19.0876
      TotalMinutes: 0.000318126666666667
      TotalSeconds: 0.0190876
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        FileName: Creating Property Bags
    RelativeSpeed: 2.64572735463303
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 5239.00333200612
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 254111
      Days: 0
      Hours: 0
      Milliseconds: 25
      Minutes: 0
      Seconds: 0
      TotalDays: 2.94109953703704e-07
      TotalHours: 7.05863888888889e-06
      TotalMilliseconds: 25.4111
      TotalMinutes: 0.000423518333333333
      TotalSeconds: 0.0254111
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 3.5222260724929
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 3935.28812211986
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 695951
      Days: 0
      Hours: 0
      Milliseconds: 69
      Minutes: 0
      Seconds: 0
      TotalDays: 8.05498842592593e-07
      TotalHours: 1.93319722222222e-05
      TotalMilliseconds: 69.5951
      TotalMinutes: 0.00115991833333333
      TotalSeconds: 0.0695951
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        GroupName: (1 property)
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 9.64655901309862
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 1436.88276904552
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 56484
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.5375e-08
      TotalHours: 1.569e-06
      TotalMilliseconds: 5.6484
      TotalMinutes: 9.414e-05
      TotalSeconds: 0.0056484
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
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 17704.1286027902
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 87325
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01070601851852e-07
      TotalHours: 2.42569444444444e-06
      TotalMilliseconds: 8.7325
      TotalMinutes: 0.000145541666666667
      TotalSeconds: 0.0087325
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
    RelativeSpeed: 1.54601303023865
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 11451.4743773261
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 135336
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.56638888888889e-07
      TotalHours: 3.75933333333333e-06
      TotalMilliseconds: 13.5336
      TotalMinutes: 0.00022556
      TotalSeconds: 0.0135336
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
    RelativeSpeed: 2.39600594858721
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 7389.01696518295
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 415316
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.80689814814815e-07
      TotalHours: 1.15365555555556e-05
      TotalMilliseconds: 41.5316
      TotalMinutes: 0.000692193333333333
      TotalSeconds: 0.0415316
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 7.3528078747964
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 2407.80514114554
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1267972
      Days: 0
      Hours: 0
      Milliseconds: 126
      Minutes: 0
      Seconds: 0
      TotalDays: 1.46756018518519e-06
      TotalHours: 3.52214444444444e-05
      TotalMilliseconds: 126.7972
      TotalMinutes: 0.00211328666666667
      TotalSeconds: 0.1267972
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        GroupName: (2 properties)
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        FileName: Creating Property Bags
    RelativeSpeed: 22.4483393527371
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 788.660948349017
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
|PSCustomObject                   |00:00:00.007214|1x           |13860.97/s|
|New-Object PSObject -Property @{}|00:00:00.013435|1.86x        |7442.8/s  |
|Static Constructors Only         |00:00:00.019087|2.65x        |5239/s    |
|New-Object ; Add-Member          |00:00:00.025411|3.52x        |3935.29/s |
|New-Object \| Add-Member         |00:00:00.069595|9.65x        |1436.88/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.005648|1x           |17704.13/s|
|Static Constructors Only         |00:00:00.008732|1.55x        |11451.47/s|
|New-Object PSObject -Property @{}|00:00:00.013533|2.4x         |7389.02/s |
|New-Object ; Add-Member          |00:00:00.041531|7.35x        |2407.81/s |
|New-Object \| Add-Member         |00:00:00.126797|22.45x       |788.66/s  |
