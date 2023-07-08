---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 1967667
      Days: 0
      Hours: 0
      Milliseconds: 196
      Minutes: 0
      Seconds: 0
      TotalDays: 2.27739236111111e-06
      TotalHours: 5.46574166666667e-05
      TotalMilliseconds: 196.7667
      TotalMinutes: 0.003279445
      TotalSeconds: 0.1967667
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      TotalTime: 
        Ticks: 1967667
        Days: 0
        Hours: 0
        Milliseconds: 196
        Minutes: 0
        Seconds: 0
        TotalDays: 2.27739236111111e-06
        TotalHours: 5.46574166666667e-05
        TotalMilliseconds: 196.7667
        TotalMinutes: 0.003279445
        TotalSeconds: 0.1967667
      TotalMilliseconds: 196.7668
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1683
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.94791666666667e-09
        TotalHours: 4.675e-08
        TotalMilliseconds: 0.1683
        TotalMinutes: 2.805e-06
        TotalSeconds: 0.0001683
      Command: |
        
                Add-Member @splat 
            
      SlowestTime: 
        Ticks: 20256
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.34444444444444e-08
        TotalHours: 5.62666666666667e-07
        TotalMilliseconds: 2.0256
        TotalMinutes: 3.376e-05
        TotalSeconds: 0.0020256
      GroupName: 
      AverageTime: 
        Ticks: 1921
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.22337962962963e-09
        TotalHours: 5.33611111111111e-08
        TotalMilliseconds: 0.1921
        TotalMinutes: 3.20166666666667e-06
        TotalSeconds: 0.0001921
      RepeatCount: 1024
      BenchmarkInput: 
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member @splat 
              
        FileName: How Much Faster Is Splatting
    RepeatCount: 1024
    Throughput: 5204.13260983693
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
  - Technique: Named
    Time: 
      Ticks: 2091672
      Days: 0
      Hours: 0
      Milliseconds: 209
      Minutes: 0
      Seconds: 0
      TotalDays: 2.42091666666667e-06
      TotalHours: 5.8102e-05
      TotalMilliseconds: 209.1672
      TotalMinutes: 0.00348612
      TotalSeconds: 0.2091672
    RelativeSpeed: 1.06302130237418
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      TotalTime: 
        Ticks: 2091672
        Days: 0
        Hours: 0
        Milliseconds: 209
        Minutes: 0
        Seconds: 0
        TotalDays: 2.42091666666667e-06
        TotalHours: 5.8102e-05
        TotalMilliseconds: 209.1672
        TotalMinutes: 0.00348612
        TotalSeconds: 0.2091672
      TotalMilliseconds: 209.1673
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1759
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.03587962962963e-09
        TotalHours: 4.88611111111111e-08
        TotalMilliseconds: 0.1759
        TotalMinutes: 2.93166666666667e-06
        TotalSeconds: 0.0001759
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      SlowestTime: 
        Ticks: 34351
        Days: 0
        Hours: 0
        Milliseconds: 3
        Minutes: 0
        Seconds: 0
        TotalDays: 3.97581018518519e-08
        TotalHours: 9.54194444444444e-07
        TotalMilliseconds: 3.4351
        TotalMinutes: 5.72516666666667e-05
        TotalSeconds: 0.0034351
      GroupName: 
      AverageTime: 
        Ticks: 2042
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.36342592592593e-09
        TotalHours: 5.67222222222222e-08
        TotalMilliseconds: 0.2042
        TotalMinutes: 3.40333333333333e-06
        TotalSeconds: 0.0002042
      RepeatCount: 1024
      BenchmarkInput: 
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        FileName: How Much Faster Is Splatting
    RepeatCount: 1024
    Throughput: 4895.60504706283
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
  - Technique: Piped
    Time: 
      Ticks: 2135174
      Days: 0
      Hours: 0
      Milliseconds: 213
      Minutes: 0
      Seconds: 0
      TotalDays: 2.4712662037037e-06
      TotalHours: 5.93103888888889e-05
      TotalMilliseconds: 213.5174
      TotalMinutes: 0.00355862333333333
      TotalSeconds: 0.2135174
    RelativeSpeed: 1.08512919862497
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      TotalTime: 
        Ticks: 2135174
        Days: 0
        Hours: 0
        Milliseconds: 213
        Minutes: 0
        Seconds: 0
        TotalDays: 2.4712662037037e-06
        TotalHours: 5.93103888888889e-05
        TotalMilliseconds: 213.5174
        TotalMinutes: 0.00355862333333333
        TotalSeconds: 0.2135174
      TotalMilliseconds: 213.5174
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1850
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.1412037037037e-09
        TotalHours: 5.13888888888889e-08
        TotalMilliseconds: 0.185
        TotalMinutes: 3.08333333333333e-06
        TotalSeconds: 0.000185
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      SlowestTime: 
        Ticks: 23311
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.69803240740741e-08
        TotalHours: 6.47527777777778e-07
        TotalMilliseconds: 2.3311
        TotalMinutes: 3.88516666666667e-05
        TotalSeconds: 0.0023311
      GroupName: 
      AverageTime: 
        Ticks: 2085
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.41319444444444e-09
        TotalHours: 5.79166666666667e-08
        TotalMilliseconds: 0.2085
        TotalMinutes: 3.475e-06
        TotalSeconds: 0.0002085
      RepeatCount: 1024
      BenchmarkInput: 
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        FileName: How Much Faster Is Splatting
    RepeatCount: 1024
    Throughput: 4795.86207025751
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
  - Technique: Positional
    Time: 
      Ticks: 7597792
      Days: 0
      Hours: 0
      Milliseconds: 759
      Minutes: 0
      Seconds: 0
      TotalDays: 8.79374074074074e-06
      TotalHours: 0.000211049777777778
      TotalMilliseconds: 759.7792
      TotalMinutes: 0.0126629866666667
      TotalSeconds: 0.7597792
    RelativeSpeed: 3.86131857610125
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      TotalTime: 
        Ticks: 7597792
        Days: 0
        Hours: 0
        Milliseconds: 759
        Minutes: 0
        Seconds: 0
        TotalDays: 8.79374074074074e-06
        TotalHours: 0.000211049777777778
        TotalMilliseconds: 759.7792
        TotalMinutes: 0.0126629866666667
        TotalSeconds: 0.7597792
      TotalMilliseconds: 759.779299999999
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 6734
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 7.79398148148148e-09
        TotalHours: 1.87055555555556e-07
        TotalMilliseconds: 0.6734
        TotalMinutes: 1.12233333333333e-05
        TotalSeconds: 0.0006734
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      SlowestTime: 
        Ticks: 28983
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 3.35451388888889e-08
        TotalHours: 8.05083333333333e-07
        TotalMilliseconds: 2.8983
        TotalMinutes: 4.8305e-05
        TotalSeconds: 0.0028983
      GroupName: 
      AverageTime: 
        Ticks: 7419
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 8.58680555555556e-09
        TotalHours: 2.06083333333333e-07
        TotalMilliseconds: 0.7419
        TotalMinutes: 1.2365e-05
        TotalSeconds: 0.0007419
      RepeatCount: 1024
      BenchmarkInput: 
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        FileName: How Much Faster Is Splatting
    RepeatCount: 1024
    Throughput: 1347.75998079442
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
FileName: How Much Faster Is Splatting
ClockSpeed: 2095
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Splatting |1024       |00:00:00.196766|1x           |5204.13/s |
|Named     |1024       |00:00:00.209167|1.06x        |4895.61/s |
|Piped     |1024       |00:00:00.213517|1.09x        |4795.86/s |
|Positional|1024       |00:00:00.759779|3.86x        |1347.76/s |
