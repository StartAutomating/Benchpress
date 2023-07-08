---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 1698546
      Days: 0
      Hours: 0
      Milliseconds: 169
      Minutes: 0
      Seconds: 0
      TotalDays: 1.96590972222222e-06
      TotalHours: 4.71818333333333e-05
      TotalMilliseconds: 169.8546
      TotalMinutes: 0.00283091
      TotalSeconds: 0.1698546
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      FastestTime: 
        Ticks: 1535
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.77662037037037e-09
        TotalHours: 4.26388888888889e-08
        TotalMilliseconds: 0.1535
        TotalMinutes: 2.55833333333333e-06
        TotalSeconds: 0.0001535
      RepeatCount: 1024
      Command: |
        
                Add-Member @splat 
            
      SlowestTime: 
        Ticks: 20689
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.39456018518519e-08
        TotalHours: 5.74694444444444e-07
        TotalMilliseconds: 2.0689
        TotalMinutes: 3.44816666666667e-05
        TotalSeconds: 0.0020689
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 1698546
        Days: 0
        Hours: 0
        Milliseconds: 169
        Minutes: 0
        Seconds: 0
        TotalDays: 1.96590972222222e-06
        TotalHours: 4.71818333333333e-05
        TotalMilliseconds: 169.8546
        TotalMinutes: 0.00283091
        TotalSeconds: 0.1698546
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member @splat 
              
        RepeatCount: 1024
      GroupName: 
      TotalMilliseconds: 169.8547
      AverageTime: 
        Ticks: 1658
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.91898148148148e-09
        TotalHours: 4.60555555555556e-08
        TotalMilliseconds: 0.1658
        TotalMinutes: 2.76333333333333e-06
        TotalSeconds: 0.0001658
    Throughput: 6028.68571119063
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Named
    Time: 
      Ticks: 1843759
      Days: 0
      Hours: 0
      Milliseconds: 184
      Minutes: 0
      Seconds: 0
      TotalDays: 2.13398032407407e-06
      TotalHours: 5.12155277777778e-05
      TotalMilliseconds: 184.3759
      TotalMinutes: 0.00307293166666667
      TotalSeconds: 0.1843759
    RelativeSpeed: 1.08549248269256
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      FastestTime: 
        Ticks: 1625
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.88078703703704e-09
        TotalHours: 4.51388888888889e-08
        TotalMilliseconds: 0.1625
        TotalMinutes: 2.70833333333333e-06
        TotalSeconds: 0.0001625
      RepeatCount: 1024
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      SlowestTime: 
        Ticks: 53653
        Days: 0
        Hours: 0
        Milliseconds: 5
        Minutes: 0
        Seconds: 0
        TotalDays: 6.20983796296296e-08
        TotalHours: 1.49036111111111e-06
        TotalMilliseconds: 5.3653
        TotalMinutes: 8.94216666666667e-05
        TotalSeconds: 0.0053653
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 1843759
        Days: 0
        Hours: 0
        Milliseconds: 184
        Minutes: 0
        Seconds: 0
        TotalDays: 2.13398032407407e-06
        TotalHours: 5.12155277777778e-05
        TotalMilliseconds: 184.3759
        TotalMinutes: 0.00307293166666667
        TotalSeconds: 0.1843759
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        RepeatCount: 1024
      GroupName: 
      TotalMilliseconds: 184.376
      AverageTime: 
        Ticks: 1800
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.08333333333333e-09
        TotalHours: 5e-08
        TotalMilliseconds: 0.18
        TotalMinutes: 3e-06
        TotalSeconds: 0.00018
    Throughput: 5553.87119466264
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Piped
    Time: 
      Ticks: 1852047
      Days: 0
      Hours: 0
      Milliseconds: 185
      Minutes: 0
      Seconds: 0
      TotalDays: 2.14357291666667e-06
      TotalHours: 5.144575e-05
      TotalMilliseconds: 185.2047
      TotalMinutes: 0.003086745
      TotalSeconds: 0.1852047
    RelativeSpeed: 1.09037194731733
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      FastestTime: 
        Ticks: 1691
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.95717592592593e-09
        TotalHours: 4.69722222222222e-08
        TotalMilliseconds: 0.1691
        TotalMinutes: 2.81833333333333e-06
        TotalSeconds: 0.0001691
      RepeatCount: 1024
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      SlowestTime: 
        Ticks: 17575
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 2.03414351851852e-08
        TotalHours: 4.88194444444444e-07
        TotalMilliseconds: 1.7575
        TotalMinutes: 2.92916666666667e-05
        TotalSeconds: 0.0017575
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 1852047
        Days: 0
        Hours: 0
        Milliseconds: 185
        Minutes: 0
        Seconds: 0
        TotalDays: 2.14357291666667e-06
        TotalHours: 5.144575e-05
        TotalMilliseconds: 185.2047
        TotalMinutes: 0.003086745
        TotalSeconds: 0.1852047
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        RepeatCount: 1024
      GroupName: 
      TotalMilliseconds: 185.2048
      AverageTime: 
        Ticks: 1808
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.09259259259259e-09
        TotalHours: 5.02222222222222e-08
        TotalMilliseconds: 0.1808
        TotalMinutes: 3.01333333333333e-06
        TotalSeconds: 0.0001808
    Throughput: 5529.01735215143
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Positional
    Time: 
      Ticks: 6467717
      Days: 0
      Hours: 0
      Milliseconds: 646
      Minutes: 0
      Seconds: 0
      TotalDays: 7.48578356481481e-06
      TotalHours: 0.000179658805555556
      TotalMilliseconds: 646.7717
      TotalMinutes: 0.0107795283333333
      TotalSeconds: 0.6467717
    RelativeSpeed: 3.8077939556574
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      FastestTime: 
        Ticks: 6132
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 7.09722222222222e-09
        TotalHours: 1.70333333333333e-07
        TotalMilliseconds: 0.6132
        TotalMinutes: 1.022e-05
        TotalSeconds: 0.0006132
      RepeatCount: 1024
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      SlowestTime: 
        Ticks: 20732
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.39953703703704e-08
        TotalHours: 5.75888888888889e-07
        TotalMilliseconds: 2.0732
        TotalMinutes: 3.45533333333333e-05
        TotalSeconds: 0.0020732
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 6467717
        Days: 0
        Hours: 0
        Milliseconds: 646
        Minutes: 0
        Seconds: 0
        TotalDays: 7.48578356481481e-06
        TotalHours: 0.000179658805555556
        TotalMilliseconds: 646.7717
        TotalMinutes: 0.0107795283333333
        TotalSeconds: 0.6467717
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        RepeatCount: 1024
      GroupName: 
      TotalMilliseconds: 646.7717
      AverageTime: 
        Ticks: 6316
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 7.31018518518519e-09
        TotalHours: 1.75444444444444e-07
        TotalMilliseconds: 0.6316
        TotalMinutes: 1.05266666666667e-05
        TotalSeconds: 0.0006316
    Throughput: 1583.24799925538
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
FileName: How Much Faster Is Splatting
ClockSpeed: 2594
---


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Splatting |00:00:00.169854|1x           |6028.69/s |
|Named     |00:00:00.184375|1.09x        |5553.87/s |
|Piped     |00:00:00.185204|1.09x        |5529.02/s |
|Positional|00:00:00.646771|3.81x        |1583.25/s |
