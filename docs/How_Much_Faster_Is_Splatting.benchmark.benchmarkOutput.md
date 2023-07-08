---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 1662579
      Days: 0
      Hours: 0
      Milliseconds: 166
      Minutes: 0
      Seconds: 0
      TotalDays: 1.92428125e-06
      TotalHours: 4.618275e-05
      TotalMilliseconds: 166.2579
      TotalMinutes: 0.002770965
      TotalSeconds: 0.1662579
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member @splat 
              
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
      TotalTime: 
        Ticks: 1662579
        Days: 0
        Hours: 0
        Milliseconds: 166
        Minutes: 0
        Seconds: 0
        TotalDays: 1.92428125e-06
        TotalHours: 4.618275e-05
        TotalMilliseconds: 166.2579
        TotalMinutes: 0.002770965
        TotalSeconds: 0.1662579
      RepeatCount: 1024
      AverageTime: 
        Ticks: 1623
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.87847222222222e-09
        TotalHours: 4.50833333333333e-08
        TotalMilliseconds: 0.1623
        TotalMinutes: 2.705e-06
        TotalSeconds: 0.0001623
      FastestTime: 
        Ticks: 1522
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.76157407407407e-09
        TotalHours: 4.22777777777778e-08
        TotalMilliseconds: 0.1522
        TotalMinutes: 2.53666666666667e-06
        TotalSeconds: 0.0001522
      GroupName: 
      SlowestTime: 
        Ticks: 19821
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 2.29409722222222e-08
        TotalHours: 5.50583333333333e-07
        TotalMilliseconds: 1.9821
        TotalMinutes: 3.3035e-05
        TotalSeconds: 0.0019821
      FileName: How Much Faster Is Splatting
      Command: |
        
                Add-Member @splat 
            
      TotalMilliseconds: 166.258
    RepeatCount: 1024
    Throughput: 6159.10582294135
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
  - Technique: Named
    Time: 
      Ticks: 1741499
      Days: 0
      Hours: 0
      Milliseconds: 174
      Minutes: 0
      Seconds: 0
      TotalDays: 2.01562384259259e-06
      TotalHours: 4.83749722222222e-05
      TotalMilliseconds: 174.1499
      TotalMinutes: 0.00290249833333333
      TotalSeconds: 0.1741499
    RelativeSpeed: 1.04746779102359
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
      TotalTime: 
        Ticks: 1741499
        Days: 0
        Hours: 0
        Milliseconds: 174
        Minutes: 0
        Seconds: 0
        TotalDays: 2.01562384259259e-06
        TotalHours: 4.83749722222222e-05
        TotalMilliseconds: 174.1499
        TotalMinutes: 0.00290249833333333
        TotalSeconds: 0.1741499
      RepeatCount: 1024
      AverageTime: 
        Ticks: 1700
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.96759259259259e-09
        TotalHours: 4.72222222222222e-08
        TotalMilliseconds: 0.17
        TotalMinutes: 2.83333333333333e-06
        TotalSeconds: 0.00017
      FastestTime: 
        Ticks: 1580
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.8287037037037e-09
        TotalHours: 4.38888888888889e-08
        TotalMilliseconds: 0.158
        TotalMinutes: 2.63333333333333e-06
        TotalSeconds: 0.000158
      GroupName: 
      SlowestTime: 
        Ticks: 27942
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 3.23402777777778e-08
        TotalHours: 7.76166666666667e-07
        TotalMilliseconds: 2.7942
        TotalMinutes: 4.657e-05
        TotalSeconds: 0.0027942
      FileName: How Much Faster Is Splatting
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      TotalMilliseconds: 174.1499
    RepeatCount: 1024
    Throughput: 5879.99189204243
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
  - Technique: Piped
    Time: 
      Ticks: 1811812
      Days: 0
      Hours: 0
      Milliseconds: 181
      Minutes: 0
      Seconds: 0
      TotalDays: 2.09700462962963e-06
      TotalHours: 5.03281111111111e-05
      TotalMilliseconds: 181.1812
      TotalMinutes: 0.00301968666666667
      TotalSeconds: 0.1811812
    RelativeSpeed: 1.08975989125335
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
      TotalTime: 
        Ticks: 1811812
        Days: 0
        Hours: 0
        Milliseconds: 181
        Minutes: 0
        Seconds: 0
        TotalDays: 2.09700462962963e-06
        TotalHours: 5.03281111111111e-05
        TotalMilliseconds: 181.1812
        TotalMinutes: 0.00301968666666667
        TotalSeconds: 0.1811812
      RepeatCount: 1024
      AverageTime: 
        Ticks: 1769
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.0474537037037e-09
        TotalHours: 4.91388888888889e-08
        TotalMilliseconds: 0.1769
        TotalMinutes: 2.94833333333333e-06
        TotalSeconds: 0.0001769
      FastestTime: 
        Ticks: 1684
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.94907407407407e-09
        TotalHours: 4.67777777777778e-08
        TotalMilliseconds: 0.1684
        TotalMinutes: 2.80666666666667e-06
        TotalSeconds: 0.0001684
      GroupName: 
      SlowestTime: 
        Ticks: 14602
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 1.6900462962963e-08
        TotalHours: 4.05611111111111e-07
        TotalMilliseconds: 1.4602
        TotalMinutes: 2.43366666666667e-05
        TotalSeconds: 0.0014602
      FileName: How Much Faster Is Splatting
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      TotalMilliseconds: 181.1813
    RepeatCount: 1024
    Throughput: 5651.80051793453
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
  - Technique: Positional
    Time: 
      Ticks: 6388256
      Days: 0
      Hours: 0
      Milliseconds: 638
      Minutes: 0
      Seconds: 0
      TotalDays: 7.39381481481482e-06
      TotalHours: 0.000177451555555556
      TotalMilliseconds: 638.8256
      TotalMinutes: 0.0106470933333333
      TotalSeconds: 0.6388256
    RelativeSpeed: 3.84237510375441
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
      TotalTime: 
        Ticks: 6388256
        Days: 0
        Hours: 0
        Milliseconds: 638
        Minutes: 0
        Seconds: 0
        TotalDays: 7.39381481481482e-06
        TotalHours: 0.000177451555555556
        TotalMilliseconds: 638.8256
        TotalMinutes: 0.0106470933333333
        TotalSeconds: 0.6388256
      RepeatCount: 1024
      AverageTime: 
        Ticks: 6238
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 7.21990740740741e-09
        TotalHours: 1.73277777777778e-07
        TotalMilliseconds: 0.6238
        TotalMinutes: 1.03966666666667e-05
        TotalSeconds: 0.0006238
      FastestTime: 
        Ticks: 6044
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.99537037037037e-09
        TotalHours: 1.67888888888889e-07
        TotalMilliseconds: 0.6044
        TotalMinutes: 1.00733333333333e-05
        TotalSeconds: 0.0006044
      GroupName: 
      SlowestTime: 
        Ticks: 23262
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.69236111111111e-08
        TotalHours: 6.46166666666667e-07
        TotalMilliseconds: 2.3262
        TotalMinutes: 3.877e-05
        TotalSeconds: 0.0023262
      FileName: How Much Faster Is Splatting
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      TotalMilliseconds: 638.8256
    RepeatCount: 1024
    Throughput: 1602.94139746435
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
FileName: How Much Faster Is Splatting
ClockSpeed: 2594
---


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Splatting |00:00:00.166257|1x           |6159.11/s |
|Named     |00:00:00.174149|1.05x        |5879.99/s |
|Piped     |00:00:00.181181|1.09x        |5651.8/s  |
|Positional|00:00:00.638825|3.84x        |1602.94/s |
