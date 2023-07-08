---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 1566929
      Days: 0
      Hours: 0
      Milliseconds: 156
      Minutes: 0
      Seconds: 0
      TotalDays: 1.81357523148148e-06
      TotalHours: 4.35258055555556e-05
      TotalMilliseconds: 156.6929
      TotalMinutes: 0.00261154833333333
      TotalSeconds: 0.1566929
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      AverageTime: 
        Ticks: 1530
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.77083333333333e-09
        TotalHours: 4.25e-08
        TotalMilliseconds: 0.153
        TotalMinutes: 2.55e-06
        TotalSeconds: 0.000153
      SlowestTime: 
        Ticks: 22200
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.56944444444444e-08
        TotalHours: 6.16666666666667e-07
        TotalMilliseconds: 2.22
        TotalMinutes: 3.7e-05
        TotalSeconds: 0.00222
      FastestTime: 
        Ticks: 1454
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.68287037037037e-09
        TotalHours: 4.03888888888889e-08
        TotalMilliseconds: 0.1454
        TotalMinutes: 2.42333333333333e-06
        TotalSeconds: 0.0001454
      TotalMilliseconds: 156.693
      Command: |
        
                Add-Member @splat 
            
      RepeatCount: 1024
      TotalTime: 
        Ticks: 1566929
        Days: 0
        Hours: 0
        Milliseconds: 156
        Minutes: 0
        Seconds: 0
        TotalDays: 1.81357523148148e-06
        TotalHours: 4.35258055555556e-05
        TotalMilliseconds: 156.6929
        TotalMinutes: 0.00261154833333333
        TotalSeconds: 0.1566929
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member @splat 
              
        Detailed: 
          IsPresent: true
      FileName: How Much Faster Is Splatting
    Throughput: 6535.07593515724
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Named
    Time: 
      Ticks: 1668068
      Days: 0
      Hours: 0
      Milliseconds: 166
      Minutes: 0
      Seconds: 0
      TotalDays: 1.93063425925926e-06
      TotalHours: 4.63352222222222e-05
      TotalMilliseconds: 166.8068
      TotalMinutes: 0.00278011333333333
      TotalSeconds: 0.1668068
    RelativeSpeed: 1.0645453211056
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      AverageTime: 
        Ticks: 1628
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.88425925925926e-09
        TotalHours: 4.52222222222222e-08
        TotalMilliseconds: 0.1628
        TotalMinutes: 2.71333333333333e-06
        TotalSeconds: 0.0001628
      SlowestTime: 
        Ticks: 29681
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 3.43530092592593e-08
        TotalHours: 8.24472222222222e-07
        TotalMilliseconds: 2.9681
        TotalMinutes: 4.94683333333333e-05
        TotalSeconds: 0.0029681
      FastestTime: 
        Ticks: 1501
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.73726851851852e-09
        TotalHours: 4.16944444444444e-08
        TotalMilliseconds: 0.1501
        TotalMinutes: 2.50166666666667e-06
        TotalSeconds: 0.0001501
      TotalMilliseconds: 166.8068
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      RepeatCount: 1024
      TotalTime: 
        Ticks: 1668068
        Days: 0
        Hours: 0
        Milliseconds: 166
        Minutes: 0
        Seconds: 0
        TotalDays: 1.93063425925926e-06
        TotalHours: 4.63352222222222e-05
        TotalMilliseconds: 166.8068
        TotalMinutes: 0.00278011333333333
        TotalSeconds: 0.1668068
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        Detailed: 
          IsPresent: true
      FileName: How Much Faster Is Splatting
    Throughput: 6138.83846461895
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Piped
    Time: 
      Ticks: 1701875
      Days: 0
      Hours: 0
      Milliseconds: 170
      Minutes: 0
      Seconds: 0
      TotalDays: 1.96976273148148e-06
      TotalHours: 4.72743055555556e-05
      TotalMilliseconds: 170.1875
      TotalMinutes: 0.00283645833333333
      TotalSeconds: 0.1701875
    RelativeSpeed: 1.08612126897819
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      AverageTime: 
        Ticks: 1661
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.9224537037037e-09
        TotalHours: 4.61388888888889e-08
        TotalMilliseconds: 0.1661
        TotalMinutes: 2.76833333333333e-06
        TotalSeconds: 0.0001661
      SlowestTime: 
        Ticks: 18222
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 2.10902777777778e-08
        TotalHours: 5.06166666666667e-07
        TotalMilliseconds: 1.8222
        TotalMinutes: 3.037e-05
        TotalSeconds: 0.0018222
      FastestTime: 
        Ticks: 1590
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.84027777777778e-09
        TotalHours: 4.41666666666667e-08
        TotalMilliseconds: 0.159
        TotalMinutes: 2.65e-06
        TotalSeconds: 0.000159
      TotalMilliseconds: 170.1876
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      RepeatCount: 1024
      TotalTime: 
        Ticks: 1701875
        Days: 0
        Hours: 0
        Milliseconds: 170
        Minutes: 0
        Seconds: 0
        TotalDays: 1.96976273148148e-06
        TotalHours: 4.72743055555556e-05
        TotalMilliseconds: 170.1875
        TotalMinutes: 0.00283645833333333
        TotalSeconds: 0.1701875
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        Detailed: 
          IsPresent: true
      FileName: How Much Faster Is Splatting
    Throughput: 6016.89313257437
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Positional
    Time: 
      Ticks: 5732000
      Days: 0
      Hours: 0
      Milliseconds: 573
      Minutes: 0
      Seconds: 0
      TotalDays: 6.63425925925926e-06
      TotalHours: 0.000159222222222222
      TotalMilliseconds: 573.2
      TotalMinutes: 0.00955333333333333
      TotalSeconds: 0.5732
    RelativeSpeed: 3.65810916888438
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      AverageTime: 
        Ticks: 5597
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.47800925925926e-09
        TotalHours: 1.55472222222222e-07
        TotalMilliseconds: 0.5597
        TotalMinutes: 9.32833333333333e-06
        TotalSeconds: 0.0005597
      SlowestTime: 
        Ticks: 67968
        Days: 0
        Hours: 0
        Milliseconds: 6
        Minutes: 0
        Seconds: 0
        TotalDays: 7.86666666666667e-08
        TotalHours: 1.888e-06
        TotalMilliseconds: 6.7968
        TotalMinutes: 0.00011328
        TotalSeconds: 0.0067968
      FastestTime: 
        Ticks: 5391
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.23958333333333e-09
        TotalHours: 1.4975e-07
        TotalMilliseconds: 0.5391
        TotalMinutes: 8.985e-06
        TotalSeconds: 0.0005391
      TotalMilliseconds: 573.2001
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      RepeatCount: 1024
      TotalTime: 
        Ticks: 5732000
        Days: 0
        Hours: 0
        Milliseconds: 573
        Minutes: 0
        Seconds: 0
        TotalDays: 6.63425925925926e-06
        TotalHours: 0.000159222222222222
        TotalMilliseconds: 573.2
        TotalMinutes: 0.00955333333333333
        TotalSeconds: 0.5732
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        Detailed: 
          IsPresent: true
      FileName: How Much Faster Is Splatting
    Throughput: 1786.46196789951
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
FileName: How Much Faster Is Splatting
ClockSpeed: 2793
---


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Splatting |00:00:00.156692|1x           |6535.08/s |
|Named     |00:00:00.166806|1.06x        |6138.84/s |
|Piped     |00:00:00.170187|1.09x        |6016.89/s |
|Positional|00:00:00.573200|3.66x        |1786.46/s |
