---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 1870802
      Days: 0
      Hours: 0
      Milliseconds: 187
      Minutes: 0
      Seconds: 0
      TotalDays: 2.16528009259259e-06
      TotalHours: 5.19667222222222e-05
      TotalMilliseconds: 187.0802
      TotalMinutes: 0.00311800333333333
      TotalSeconds: 0.1870802
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      Command: |
        
                Add-Member @splat 
            
      TotalTime: 
        Ticks: 1870802
        Days: 0
        Hours: 0
        Milliseconds: 187
        Minutes: 0
        Seconds: 0
        TotalDays: 2.16528009259259e-06
        TotalHours: 5.19667222222222e-05
        TotalMilliseconds: 187.0802
        TotalMinutes: 0.00311800333333333
        TotalSeconds: 0.1870802
      AverageTime: 
        Ticks: 1826
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.11342592592593e-09
        TotalHours: 5.07222222222222e-08
        TotalMilliseconds: 0.1826
        TotalMinutes: 3.04333333333333e-06
        TotalSeconds: 0.0001826
      FastestTime: 
        Ticks: 1502
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.73842592592593e-09
        TotalHours: 4.17222222222222e-08
        TotalMilliseconds: 0.1502
        TotalMinutes: 2.50333333333333e-06
        TotalSeconds: 0.0001502
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member @splat 
              
        RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 17863
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 2.06747685185185e-08
        TotalHours: 4.96194444444444e-07
        TotalMilliseconds: 1.7863
        TotalMinutes: 2.97716666666667e-05
        TotalSeconds: 0.0017863
      GroupName: 
      RepeatCount: 1024
      TotalMilliseconds: 187.0803
    RepeatCount: 1024
    Throughput: 5473.58833270437
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
  - Technique: Piped
    Time: 
      Ticks: 1957605
      Days: 0
      Hours: 0
      Milliseconds: 195
      Minutes: 0
      Seconds: 0
      TotalDays: 2.26574652777778e-06
      TotalHours: 5.43779166666667e-05
      TotalMilliseconds: 195.7605
      TotalMinutes: 0.003262675
      TotalSeconds: 0.1957605
    RelativeSpeed: 1.04639879239022
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      TotalTime: 
        Ticks: 1957605
        Days: 0
        Hours: 0
        Milliseconds: 195
        Minutes: 0
        Seconds: 0
        TotalDays: 2.26574652777778e-06
        TotalHours: 5.43779166666667e-05
        TotalMilliseconds: 195.7605
        TotalMinutes: 0.003262675
        TotalSeconds: 0.1957605
      AverageTime: 
        Ticks: 1911
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.21180555555556e-09
        TotalHours: 5.30833333333333e-08
        TotalMilliseconds: 0.1911
        TotalMinutes: 3.185e-06
        TotalSeconds: 0.0001911
      FastestTime: 
        Ticks: 1645
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.90393518518519e-09
        TotalHours: 4.56944444444444e-08
        TotalMilliseconds: 0.1645
        TotalMinutes: 2.74166666666667e-06
        TotalSeconds: 0.0001645
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 18319
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 2.12025462962963e-08
        TotalHours: 5.08861111111111e-07
        TotalMilliseconds: 1.8319
        TotalMinutes: 3.05316666666667e-05
        TotalSeconds: 0.0018319
      GroupName: 
      RepeatCount: 1024
      TotalMilliseconds: 195.7606
    RepeatCount: 1024
    Throughput: 5230.88161299138
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
  - Technique: Named
    Time: 
      Ticks: 1967495
      Days: 0
      Hours: 0
      Milliseconds: 196
      Minutes: 0
      Seconds: 0
      TotalDays: 2.27719328703704e-06
      TotalHours: 5.46526388888889e-05
      TotalMilliseconds: 196.7495
      TotalMinutes: 0.00327915833333333
      TotalSeconds: 0.1967495
    RelativeSpeed: 1.05168529235842
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      TotalTime: 
        Ticks: 1967495
        Days: 0
        Hours: 0
        Milliseconds: 196
        Minutes: 0
        Seconds: 0
        TotalDays: 2.27719328703704e-06
        TotalHours: 5.46526388888889e-05
        TotalMilliseconds: 196.7495
        TotalMinutes: 0.00327915833333333
        TotalSeconds: 0.1967495
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
      FastestTime: 
        Ticks: 1559
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.80439814814815e-09
        TotalHours: 4.33055555555556e-08
        TotalMilliseconds: 0.1559
        TotalMinutes: 2.59833333333333e-06
        TotalSeconds: 0.0001559
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 33091
        Days: 0
        Hours: 0
        Milliseconds: 3
        Minutes: 0
        Seconds: 0
        TotalDays: 3.82997685185185e-08
        TotalHours: 9.19194444444444e-07
        TotalMilliseconds: 3.3091
        TotalMinutes: 5.51516666666667e-05
        TotalSeconds: 0.0033091
      GroupName: 
      RepeatCount: 1024
      TotalMilliseconds: 196.7496
    RepeatCount: 1024
    Throughput: 5204.58755930765
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
  - Technique: Positional
    Time: 
      Ticks: 7084058
      Days: 0
      Hours: 0
      Milliseconds: 708
      Minutes: 0
      Seconds: 0
      TotalDays: 8.1991412037037e-06
      TotalHours: 0.000196779388888889
      TotalMilliseconds: 708.4058
      TotalMinutes: 0.0118067633333333
      TotalSeconds: 0.7084058
    RelativeSpeed: 3.78664028227452
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      TotalTime: 
        Ticks: 7084058
        Days: 0
        Hours: 0
        Milliseconds: 708
        Minutes: 0
        Seconds: 0
        TotalDays: 8.1991412037037e-06
        TotalHours: 0.000196779388888889
        TotalMilliseconds: 708.4058
        TotalMinutes: 0.0118067633333333
        TotalSeconds: 0.7084058
      AverageTime: 
        Ticks: 6918
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 8.00694444444444e-09
        TotalHours: 1.92166666666667e-07
        TotalMilliseconds: 0.6918
        TotalMinutes: 1.153e-05
        TotalSeconds: 0.0006918
      FastestTime: 
        Ticks: 5930
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.86342592592593e-09
        TotalHours: 1.64722222222222e-07
        TotalMilliseconds: 0.593
        TotalMinutes: 9.88333333333333e-06
        TotalSeconds: 0.000593
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 27799
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 3.21747685185185e-08
        TotalHours: 7.72194444444444e-07
        TotalMilliseconds: 2.7799
        TotalMinutes: 4.63316666666667e-05
        TotalSeconds: 0.0027799
      GroupName: 
      RepeatCount: 1024
      TotalMilliseconds: 708.405800000001
    RepeatCount: 1024
    Throughput: 1445.49917575491
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
FileName: How Much Faster Is Splatting
ClockSpeed: 2095
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Splatting |1024       |00:00:00.187080|1x           |5473.59/s |
|Piped     |1024       |00:00:00.195760|1.05x        |5230.88/s |
|Named     |1024       |00:00:00.196749|1.05x        |5204.59/s |
|Positional|1024       |00:00:00.708405|3.79x        |1445.5/s  |
