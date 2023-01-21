---
layout: Benchmark

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 1608532
      Days: 0
      Hours: 0
      Milliseconds: 160
      Minutes: 0
      Seconds: 0
      TotalDays: 1.86172685185185e-06
      TotalHours: 4.46814444444444e-05
      TotalMilliseconds: 160.8532
      TotalMinutes: 0.00268088666666667
      TotalSeconds: 0.1608532
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      Command: |
        
                Add-Member @splat 
            
      TotalTime: 
        Ticks: 1608532
        Days: 0
        Hours: 0
        Milliseconds: 160
        Minutes: 0
        Seconds: 0
        TotalDays: 1.86172685185185e-06
        TotalHours: 4.46814444444444e-05
        TotalMilliseconds: 160.8532
        TotalMinutes: 0.00268088666666667
        TotalSeconds: 0.1608532
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member @splat 
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      SlowestTime: 
        Ticks: 20171
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.33460648148148e-08
        TotalHours: 5.60305555555556e-07
        TotalMilliseconds: 2.0171
        TotalMinutes: 3.36183333333333e-05
        TotalSeconds: 0.0020171
      AverageTime: 
        Ticks: 1570
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.81712962962963e-09
        TotalHours: 4.36111111111111e-08
        TotalMilliseconds: 0.157
        TotalMinutes: 2.61666666666667e-06
        TotalSeconds: 0.000157
      TotalMilliseconds: 160.8533
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1477
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.70949074074074e-09
        TotalHours: 4.10277777777778e-08
        TotalMilliseconds: 0.1477
        TotalMinutes: 2.46166666666667e-06
        TotalSeconds: 0.0001477
      RepeatCount: 1024
    Throughput: 6366.0530222588
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Named
    Time: 
      Ticks: 1642276
      Days: 0
      Hours: 0
      Milliseconds: 164
      Minutes: 0
      Seconds: 0
      TotalDays: 1.90078240740741e-06
      TotalHours: 4.56187777777778e-05
      TotalMilliseconds: 164.2276
      TotalMinutes: 0.00273712666666667
      TotalSeconds: 0.1642276
    RelativeSpeed: 1.02097812105813
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      TotalTime: 
        Ticks: 1642276
        Days: 0
        Hours: 0
        Milliseconds: 164
        Minutes: 0
        Seconds: 0
        TotalDays: 1.90078240740741e-06
        TotalHours: 4.56187777777778e-05
        TotalMilliseconds: 164.2276
        TotalMinutes: 0.00273712666666667
        TotalSeconds: 0.1642276
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      SlowestTime: 
        Ticks: 25848
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.99166666666667e-08
        TotalHours: 7.18e-07
        TotalMilliseconds: 2.5848
        TotalMinutes: 4.308e-05
        TotalSeconds: 0.0025848
      AverageTime: 
        Ticks: 1603
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.85532407407407e-09
        TotalHours: 4.45277777777778e-08
        TotalMilliseconds: 0.1603
        TotalMinutes: 2.67166666666667e-06
        TotalSeconds: 0.0001603
      TotalMilliseconds: 164.2277
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1515
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.75347222222222e-09
        TotalHours: 4.20833333333333e-08
        TotalMilliseconds: 0.1515
        TotalMinutes: 2.525e-06
        TotalSeconds: 0.0001515
      RepeatCount: 1024
    Throughput: 6235.24912986611
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Piped
    Time: 
      Ticks: 1761833
      Days: 0
      Hours: 0
      Milliseconds: 176
      Minutes: 0
      Seconds: 0
      TotalDays: 2.03915856481481e-06
      TotalHours: 4.89398055555556e-05
      TotalMilliseconds: 176.1833
      TotalMinutes: 0.00293638833333333
      TotalSeconds: 0.1761833
    RelativeSpeed: 1.09530485230953
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      TotalTime: 
        Ticks: 1761833
        Days: 0
        Hours: 0
        Milliseconds: 176
        Minutes: 0
        Seconds: 0
        TotalDays: 2.03915856481481e-06
        TotalHours: 4.89398055555556e-05
        TotalMilliseconds: 176.1833
        TotalMinutes: 0.00293638833333333
        TotalSeconds: 0.1761833
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      SlowestTime: 
        Ticks: 28381
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 3.28483796296296e-08
        TotalHours: 7.88361111111111e-07
        TotalMilliseconds: 2.8381
        TotalMinutes: 4.73016666666667e-05
        TotalSeconds: 0.0028381
      AverageTime: 
        Ticks: 1720
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.99074074074074e-09
        TotalHours: 4.77777777777778e-08
        TotalMilliseconds: 0.172
        TotalMinutes: 2.86666666666667e-06
        TotalSeconds: 0.000172
      TotalMilliseconds: 176.1834
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1608
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.86111111111111e-09
        TotalHours: 4.46666666666667e-08
        TotalMilliseconds: 0.1608
        TotalMinutes: 2.68e-06
        TotalSeconds: 0.0001608
      RepeatCount: 1024
    Throughput: 5812.12861831967
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Positional
    Time: 
      Ticks: 5757810
      Days: 0
      Hours: 0
      Milliseconds: 575
      Minutes: 0
      Seconds: 0
      TotalDays: 6.66413194444444e-06
      TotalHours: 0.000159939166666667
      TotalMilliseconds: 575.781
      TotalMinutes: 0.00959635
      TotalSeconds: 0.575781
    RelativeSpeed: 3.5795411098187
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      TotalTime: 
        Ticks: 5757810
        Days: 0
        Hours: 0
        Milliseconds: 575
        Minutes: 0
        Seconds: 0
        TotalDays: 6.66413194444444e-06
        TotalHours: 0.000159939166666667
        TotalMilliseconds: 575.781
        TotalMinutes: 0.00959635
        TotalSeconds: 0.575781
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      SlowestTime: 
        Ticks: 21622
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.5025462962963e-08
        TotalHours: 6.00611111111111e-07
        TotalMilliseconds: 2.1622
        TotalMinutes: 3.60366666666667e-05
        TotalSeconds: 0.0021622
      AverageTime: 
        Ticks: 5622
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.50694444444444e-09
        TotalHours: 1.56166666666667e-07
        TotalMilliseconds: 0.5622
        TotalMinutes: 9.37e-06
        TotalSeconds: 0.0005622
      TotalMilliseconds: 575.781
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 5447
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.30439814814815e-09
        TotalHours: 1.51305555555556e-07
        TotalMilliseconds: 0.5447
        TotalMinutes: 9.07833333333333e-06
        TotalSeconds: 0.0005447
      RepeatCount: 1024
    Throughput: 1778.45396079412
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
FileName: How Much Faster Is Splatting
ClockSpeed: 2793
---
How Much Faster Is Splatting
----------------------------
> @2793 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Splatting |00:00:00.160853|1x           |6366.05/s |
|Named     |00:00:00.164227|1.02x        |6235.25/s |
|Piped     |00:00:00.176183|1.1x         |5812.13/s |
|Positional|00:00:00.575781|3.58x        |1778.45/s |
