---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 1533787
      Days: 0
      Hours: 0
      Milliseconds: 153
      Minutes: 0
      Seconds: 0
      TotalDays: 1.77521643518519e-06
      TotalHours: 4.26051944444444e-05
      TotalMilliseconds: 153.3787
      TotalMinutes: 0.00255631166666667
      TotalSeconds: 0.1533787
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      TotalMilliseconds: 153.3787
      FastestTime: 
        Ticks: 1418
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.6412037037037e-09
        TotalHours: 3.93888888888889e-08
        TotalMilliseconds: 0.1418
        TotalMinutes: 2.36333333333333e-06
        TotalSeconds: 0.0001418
      Command: |
        
                Add-Member @splat 
            
      RepeatCount: 1024
      GroupName: 
      AverageTime: 
        Ticks: 1497
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.73263888888889e-09
        TotalHours: 4.15833333333333e-08
        TotalMilliseconds: 0.1497
        TotalMinutes: 2.495e-06
        TotalSeconds: 0.0001497
      SlowestTime: 
        Ticks: 14865
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 1.72048611111111e-08
        TotalHours: 4.12916666666667e-07
        TotalMilliseconds: 1.4865
        TotalMinutes: 2.4775e-05
        TotalSeconds: 0.0014865
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member @splat 
              
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 1533787
        Days: 0
        Hours: 0
        Milliseconds: 153
        Minutes: 0
        Seconds: 0
        TotalDays: 1.77521643518519e-06
        TotalHours: 4.26051944444444e-05
        TotalMilliseconds: 153.3787
        TotalMinutes: 0.00255631166666667
        TotalSeconds: 0.1533787
    RepeatCount: 1024
    Throughput: 6676.28555985935
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
  - Technique: Named
    Time: 
      Ticks: 1554732
      Days: 0
      Hours: 0
      Milliseconds: 155
      Minutes: 0
      Seconds: 0
      TotalDays: 1.79945833333333e-06
      TotalHours: 4.3187e-05
      TotalMilliseconds: 155.4732
      TotalMinutes: 0.00259122
      TotalSeconds: 0.1554732
    RelativeSpeed: 1.01365639427117
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      TotalMilliseconds: 155.4733
      FastestTime: 
        Ticks: 1461
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.69097222222222e-09
        TotalHours: 4.05833333333333e-08
        TotalMilliseconds: 0.1461
        TotalMinutes: 2.435e-06
        TotalSeconds: 0.0001461
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      RepeatCount: 1024
      GroupName: 
      AverageTime: 
        Ticks: 1518
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.75694444444444e-09
        TotalHours: 4.21666666666667e-08
        TotalMilliseconds: 0.1518
        TotalMinutes: 2.53e-06
        TotalSeconds: 0.0001518
      SlowestTime: 
        Ticks: 4670
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 5.40509259259259e-09
        TotalHours: 1.29722222222222e-07
        TotalMilliseconds: 0.467
        TotalMinutes: 7.78333333333333e-06
        TotalSeconds: 0.000467
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 1554732
        Days: 0
        Hours: 0
        Milliseconds: 155
        Minutes: 0
        Seconds: 0
        TotalDays: 1.79945833333333e-06
        TotalHours: 4.3187e-05
        TotalMilliseconds: 155.4732
        TotalMinutes: 0.00259122
        TotalSeconds: 0.1554732
    RepeatCount: 1024
    Throughput: 6586.34414162698
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
  - Technique: Piped
    Time: 
      Ticks: 1683569
      Days: 0
      Hours: 0
      Milliseconds: 168
      Minutes: 0
      Seconds: 0
      TotalDays: 1.94857523148148e-06
      TotalHours: 4.67658055555556e-05
      TotalMilliseconds: 168.3569
      TotalMinutes: 0.00280594833333333
      TotalSeconds: 0.1683569
    RelativeSpeed: 1.0976550198952
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      TotalMilliseconds: 168.3569
      FastestTime: 
        Ticks: 1557
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.80208333333333e-09
        TotalHours: 4.325e-08
        TotalMilliseconds: 0.1557
        TotalMinutes: 2.595e-06
        TotalSeconds: 0.0001557
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      RepeatCount: 1024
      GroupName: 
      AverageTime: 
        Ticks: 1644
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.90277777777778e-09
        TotalHours: 4.56666666666667e-08
        TotalMilliseconds: 0.1644
        TotalMinutes: 2.74e-06
        TotalSeconds: 0.0001644
      SlowestTime: 
        Ticks: 29464
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 3.41018518518518e-08
        TotalHours: 8.18444444444444e-07
        TotalMilliseconds: 2.9464
        TotalMinutes: 4.91066666666667e-05
        TotalSeconds: 0.0029464
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 1683569
        Days: 0
        Hours: 0
        Milliseconds: 168
        Minutes: 0
        Seconds: 0
        TotalDays: 1.94857523148148e-06
        TotalHours: 4.67658055555556e-05
        TotalMilliseconds: 168.3569
        TotalMinutes: 0.00280594833333333
        TotalSeconds: 0.1683569
    RepeatCount: 1024
    Throughput: 6082.31679248074
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
  - Technique: Positional
    Time: 
      Ticks: 5658453
      Days: 0
      Hours: 0
      Milliseconds: 565
      Minutes: 0
      Seconds: 0
      TotalDays: 6.54913541666667e-06
      TotalHours: 0.00015717925
      TotalMilliseconds: 565.8453
      TotalMinutes: 0.009430755
      TotalSeconds: 0.5658453
    RelativeSpeed: 3.68920391162528
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      TotalMilliseconds: 565.845300000001
      FastestTime: 
        Ticks: 5367
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.21180555555556e-09
        TotalHours: 1.49083333333333e-07
        TotalMilliseconds: 0.5367
        TotalMinutes: 8.945e-06
        TotalSeconds: 0.0005367
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      RepeatCount: 1024
      GroupName: 
      AverageTime: 
        Ticks: 5525
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.39467592592593e-09
        TotalHours: 1.53472222222222e-07
        TotalMilliseconds: 0.5525
        TotalMinutes: 9.20833333333333e-06
        TotalSeconds: 0.0005525
      SlowestTime: 
        Ticks: 20930
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.4224537037037e-08
        TotalHours: 5.81388888888889e-07
        TotalMilliseconds: 2.093
        TotalMinutes: 3.48833333333333e-05
        TotalSeconds: 0.002093
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 5658453
        Days: 0
        Hours: 0
        Milliseconds: 565
        Minutes: 0
        Seconds: 0
        TotalDays: 6.54913541666667e-06
        TotalHours: 0.00015717925
        TotalMilliseconds: 565.8453
        TotalMinutes: 0.009430755
        TotalSeconds: 0.5658453
    RepeatCount: 1024
    Throughput: 1809.68190422365
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
FileName: How Much Faster Is Splatting
ClockSpeed: 2793
---


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Splatting |00:00:00.153378|1x           |6676.29/s |
|Named     |00:00:00.155473|1.01x        |6586.34/s |
|Piped     |00:00:00.168356|1.1x         |6082.32/s |
|Positional|00:00:00.565845|3.69x        |1809.68/s |
