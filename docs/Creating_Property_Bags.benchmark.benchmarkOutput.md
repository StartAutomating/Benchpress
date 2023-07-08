---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 123764
      Days: 0
      Hours: 0
      Milliseconds: 12
      Minutes: 0
      Seconds: 0
      TotalDays: 1.4324537037037e-07
      TotalHours: 3.43788888888889e-06
      TotalMilliseconds: 12.3764
      TotalMinutes: 0.000206273333333333
      TotalSeconds: 0.0123764
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
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 8079.89399179083
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: Static Constructors Only
    Time: 
      Ticks: 216234
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.50270833333333e-07
      TotalHours: 6.0065e-06
      TotalMilliseconds: 21.6234
      TotalMinutes: 0.00036039
      TotalSeconds: 0.0216234
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 1.7471477974209
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 4624.61962503584
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 288427
      Days: 0
      Hours: 0
      Milliseconds: 28
      Minutes: 0
      Seconds: 0
      TotalDays: 3.33827546296296e-07
      TotalHours: 8.01186111111111e-06
      TotalMilliseconds: 28.8427
      TotalMinutes: 0.000480711666666667
      TotalSeconds: 0.0288427
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 2.33045958437025
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 3467.08179192655
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 394238
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.56293981481481e-07
      TotalHours: 1.09510555555556e-05
      TotalMilliseconds: 39.4238
      TotalMinutes: 0.000657063333333333
      TotalSeconds: 0.0394238
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 3.18540124753563
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 2536.53884201929
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1109735
      Days: 0
      Hours: 0
      Milliseconds: 110
      Minutes: 0
      Seconds: 0
      TotalDays: 1.28441550925926e-06
      TotalHours: 3.08259722222222e-05
      TotalMilliseconds: 110.9735
      TotalMinutes: 0.00184955833333333
      TotalSeconds: 0.1109735
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 8.96654115897999
    GroupName: (1 property)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 901.116032205887
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (1 property)
  - Technique: PSCustomObject
    Time: 
      Ticks: 99013
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.1459837962963e-07
      TotalHours: 2.75036111111111e-06
      TotalMilliseconds: 9.9013
      TotalMinutes: 0.000165021666666667
      TotalSeconds: 0.0099013
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
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 10099.6838798946
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: Static Constructors Only
    Time: 
      Ticks: 149693
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.73255787037037e-07
      TotalHours: 4.15813888888889e-06
      TotalMilliseconds: 14.9693
      TotalMinutes: 0.000249488333333333
      TotalSeconds: 0.0149693
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
    RelativeSpeed: 1.51185197903306
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 6680.33909401241
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 233772
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.70569444444444e-07
      TotalHours: 6.49366666666667e-06
      TotalMilliseconds: 23.3772
      TotalMinutes: 0.00038962
      TotalSeconds: 0.0233772
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
    RelativeSpeed: 2.36102329997071
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 4277.67226186199
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 579826
      Days: 0
      Hours: 0
      Milliseconds: 57
      Minutes: 0
      Seconds: 0
      TotalDays: 6.71094907407407e-07
      TotalHours: 1.61062777777778e-05
      TotalMilliseconds: 57.9826
      TotalMinutes: 0.000966376666666667
      TotalSeconds: 0.0579826
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        GroupName: (2 properties)
        FileName: Creating Property Bags
    RelativeSpeed: 5.85605930534374
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 1724.65532763277
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1877314
      Days: 0
      Hours: 0
      Milliseconds: 187
      Minutes: 0
      Seconds: 0
      TotalDays: 2.17281712962963e-06
      TotalHours: 5.21476111111111e-05
      TotalMilliseconds: 187.7314
      TotalMinutes: 0.00312885666666667
      TotalSeconds: 0.1877314
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        GroupName: (2 properties)
        FileName: Creating Property Bags
    RelativeSpeed: 18.9602779433004
    GroupName: (2 properties)
    ClockSpeed: 2295
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 532.675940199668
    BenchmarkInput: 
      FileName: Creating Property Bags
      GroupName: (2 properties)
FileName: Creating Property Bags
ClockSpeed: 2295
---


### (1 property)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.012376|1x           |8079.89/s |
|Static Constructors Only         |100        |00:00:00.021623|1.75x        |4624.62/s |
|New-Object PSObject -Property @{}|100        |00:00:00.028842|2.33x        |3467.08/s |
|New-Object ; Add-Member          |100        |00:00:00.039423|3.19x        |2536.54/s |
|New-Object \| Add-Member         |100        |00:00:00.110973|8.97x        |901.12/s  |


### (2 properties)


|Technique                        |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------------------------|-----------|---------------|-------------|----------|
|PSCustomObject                   |100        |00:00:00.009901|1x           |10099.68/s|
|Static Constructors Only         |100        |00:00:00.014969|1.51x        |6680.34/s |
|New-Object PSObject -Property @{}|100        |00:00:00.023377|2.36x        |4277.67/s |
|New-Object ; Add-Member          |100        |00:00:00.057982|5.86x        |1724.66/s |
|New-Object \| Add-Member         |100        |00:00:00.187731|18.96x       |532.68/s  |
