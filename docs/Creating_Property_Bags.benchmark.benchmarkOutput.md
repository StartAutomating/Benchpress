---
layout: Benchmark

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 73045
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.45428240740741e-08
      TotalHours: 2.02902777777778e-06
      TotalMilliseconds: 7.3045
      TotalMinutes: 0.000121741666666667
      TotalSeconds: 0.0073045
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
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 13690.1909781641
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 134340
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.55486111111111e-07
      TotalHours: 3.73166666666667e-06
      TotalMilliseconds: 13.434
      TotalMinutes: 0.0002239
      TotalSeconds: 0.013434
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 1.83914025600657
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 7443.79931517046
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 209138
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.4205787037037e-07
      TotalHours: 5.80938888888889e-06
      TotalMilliseconds: 20.9138
      TotalMinutes: 0.000348563333333333
      TotalSeconds: 0.0209138
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 2.86313916079129
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 4781.53181153114
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 234843
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.71809027777778e-07
      TotalHours: 6.52341666666667e-06
      TotalMilliseconds: 23.4843
      TotalMinutes: 0.000391405
      TotalSeconds: 0.0234843
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 3.215045519885
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 4258.16396486163
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 683148
      Days: 0
      Hours: 0
      Milliseconds: 68
      Minutes: 0
      Seconds: 0
      TotalDays: 7.90680555555556e-07
      TotalHours: 1.89763333333333e-05
      TotalMilliseconds: 68.3148
      TotalMinutes: 0.00113858
      TotalSeconds: 0.0683148
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        FileName: Creating Property Bags
        GroupName: (1 property)
    RelativeSpeed: 9.35242658635088
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 1463.81164842757
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 58262
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.74328703703704e-08
      TotalHours: 1.61838888888889e-06
      TotalMilliseconds: 5.8262
      TotalMinutes: 9.71033333333333e-05
      TotalSeconds: 0.0058262
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
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 17163.8460746284
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 87225
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.00954861111111e-07
      TotalHours: 2.42291666666667e-06
      TotalMilliseconds: 8.7225
      TotalMinutes: 0.000145375
      TotalSeconds: 0.0087225
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
    RelativeSpeed: 1.49711647385946
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 11464.6030381198
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 138537
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.6034375e-07
      TotalHours: 3.84825e-06
      TotalMilliseconds: 13.8537
      TotalMinutes: 0.000230895
      TotalSeconds: 0.0138537
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
    RelativeSpeed: 2.3778277436408
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 7218.28825512318
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 366823
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.24563657407407e-07
      TotalHours: 1.01895277777778e-05
      TotalMilliseconds: 36.6823
      TotalMinutes: 0.000611371666666667
      TotalSeconds: 0.0366823
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 6.29609350863341
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 2726.11041292394
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1125856
      Days: 0
      Hours: 0
      Milliseconds: 112
      Minutes: 0
      Seconds: 0
      TotalDays: 1.30307407407407e-06
      TotalHours: 3.12737777777778e-05
      TotalMilliseconds: 112.5856
      TotalMinutes: 0.00187642666666667
      TotalSeconds: 0.1125856
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        FileName: Creating Property Bags
        GroupName: (2 properties)
    RelativeSpeed: 19.3240190861968
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 888.213057442515
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
|PSCustomObject                   |00:00:00.007304|1x           |13690.19/s|
|New-Object PSObject -Property @{}|00:00:00.013434|1.84x        |7443.8/s  |
|Static Constructors Only         |00:00:00.020913|2.86x        |4781.53/s |
|New-Object ; Add-Member          |00:00:00.023484|3.22x        |4258.16/s |
|New-Object \| Add-Member         |00:00:00.068314|9.35x        |1463.81/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.005826|1x           |17163.85/s|
|Static Constructors Only         |00:00:00.008722|1.5x         |11464.6/s |
|New-Object PSObject -Property @{}|00:00:00.013853|2.38x        |7218.29/s |
|New-Object ; Add-Member          |00:00:00.036682|6.3x         |2726.11/s |
|New-Object \| Add-Member         |00:00:00.112585|19.32x       |888.21/s  |
