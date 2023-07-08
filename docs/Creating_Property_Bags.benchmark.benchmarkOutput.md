---
layout: Benchmark
title: Creating Property Bags

Data: 
  - Technique: PSCustomObject
    Time: 
      Ticks: 72596
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.40231481481481e-08
      TotalHours: 2.01655555555556e-06
      TotalMilliseconds: 7.2596
      TotalMinutes: 0.000120993333333333
      TotalSeconds: 0.0072596
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
    ClockSpeed: 2793
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 13774.8636288501
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 132280
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.53101851851852e-07
      TotalHours: 3.67444444444444e-06
      TotalMilliseconds: 13.228
      TotalMinutes: 0.000220466666666667
      TotalSeconds: 0.013228
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  New-Object PSObject -Property @{
                      a = 'b'
                  }
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 1.82213896082429
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 7559.72180223768
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 212329
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.45751157407407e-07
      TotalHours: 5.89802777777778e-06
      TotalMilliseconds: 21.2329
      TotalMinutes: 0.000353881666666667
      TotalSeconds: 0.0212329
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = [PSObject]::new()
                  $o.psobject.Properties.Add([Management.Automation.PSNoteProperty]::new('a','b'))
                  $o
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 2.92480301945011
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 4709.67225390785
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 234869
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.7183912037037e-07
      TotalHours: 6.52413888888889e-06
      TotalMilliseconds: 23.4869
      TotalMinutes: 0.000391448333333333
      TotalSeconds: 0.0234869
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  -PassThru
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 3.23528844564439
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 4257.6925860799
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 710644
      Days: 0
      Hours: 0
      Milliseconds: 71
      Minutes: 0
      Seconds: 0
      TotalDays: 8.2250462962963e-07
      TotalHours: 1.97401111111111e-05
      TotalMilliseconds: 71.0644
      TotalMinutes: 0.00118440666666667
      TotalSeconds: 0.0710644
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru
              
        GroupName: (1 property)
        FileName: Creating Property Bags
    RelativeSpeed: 9.78902418866053
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 1407.17433764304
    BenchmarkInput: 
      GroupName: (1 property)
      FileName: Creating Property Bags
  - Technique: PSCustomObject
    Time: 
      Ticks: 56732
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.5662037037037e-08
      TotalHours: 1.57588888888889e-06
      TotalMilliseconds: 5.6732
      TotalMinutes: 9.45533333333333e-05
      TotalSeconds: 0.0056732
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
    ClockSpeed: 2793
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 17626.736233519
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: Static Constructors Only
    Time: 
      Ticks: 90101
      Days: 0
      Hours: 0
      Milliseconds: 9
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04283564814815e-07
      TotalHours: 2.50280555555556e-06
      TotalMilliseconds: 9.0101
      TotalMinutes: 0.000150168333333333
      TotalSeconds: 0.0090101
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
    RelativeSpeed: 1.5881865613763
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 11098.6559527641
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object PSObject -Property @{}
    Time: 
      Ticks: 137853
      Days: 0
      Hours: 0
      Milliseconds: 13
      Minutes: 0
      Seconds: 0
      TotalDays: 1.59552083333333e-07
      TotalHours: 3.82925e-06
      TotalMilliseconds: 13.7853
      TotalMinutes: 0.000229755
      TotalSeconds: 0.0137853
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
    RelativeSpeed: 2.4298984699993
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 7254.10400934329
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object ; Add-Member
    Time: 
      Ticks: 359569
      Days: 0
      Hours: 0
      Milliseconds: 35
      Minutes: 0
      Seconds: 0
      TotalDays: 4.16167824074074e-07
      TotalHours: 9.98802777777778e-06
      TotalMilliseconds: 35.9569
      TotalMinutes: 0.000599281666666667
      TotalSeconds: 0.0359569
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
          
                  $o = New-Object PSObject
                  Add-Member -InputObject $o -MemberType NoteProperty -Name a -Value b  
                  Add-Member -InputObject $o -MemberType NoteProperty -Name c -Value d  -PassThru
              
        GroupName: (2 properties)
        FileName: Creating Property Bags
    RelativeSpeed: 6.33802792075019
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 2781.1073813371
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
  - Technique: New-Object | Add-Member
    Time: 
      Ticks: 1098174
      Days: 0
      Hours: 0
      Milliseconds: 109
      Minutes: 0
      Seconds: 0
      TotalDays: 1.27103472222222e-06
      TotalHours: 3.05048333333333e-05
      TotalMilliseconds: 109.8174
      TotalMinutes: 0.00183029
      TotalSeconds: 0.1098174
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: 
        ScriptBlock: |
           
                  New-Object PSObject | 
                      Add-Member NoteProperty a b -PassThru |
                      Add-Member NoteProperty c d -PassThru
              
        GroupName: (2 properties)
        FileName: Creating Property Bags
    RelativeSpeed: 19.3572234365085
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    RepeatCount: 100
    Throughput: 910.602509256275
    BenchmarkInput: 
      GroupName: (2 properties)
      FileName: Creating Property Bags
FileName: Creating Property Bags
ClockSpeed: 2793
---


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.007259|1x           |13774.86/s|
|New-Object PSObject -Property @{}|00:00:00.013228|1.82x        |7559.72/s |
|Static Constructors Only         |00:00:00.021232|2.92x        |4709.67/s |
|New-Object ; Add-Member          |00:00:00.023486|3.24x        |4257.69/s |
|New-Object \| Add-Member         |00:00:00.071064|9.79x        |1407.17/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.005673|1x           |17626.74/s|
|Static Constructors Only         |00:00:00.009010|1.59x        |11098.66/s|
|New-Object PSObject -Property @{}|00:00:00.013785|2.43x        |7254.1/s  |
|New-Object ; Add-Member          |00:00:00.035956|6.34x        |2781.11/s |
|New-Object \| Add-Member         |00:00:00.109817|19.36x       |910.6/s   |
