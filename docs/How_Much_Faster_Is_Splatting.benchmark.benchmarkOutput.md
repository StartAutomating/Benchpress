---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 1866385
      Days: 0
      Hours: 0
      Milliseconds: 186
      Minutes: 0
      Seconds: 0
      TotalDays: 2.16016782407407e-06
      TotalHours: 5.18440277777778e-05
      TotalMilliseconds: 186.6385
      TotalMinutes: 0.00311064166666667
      TotalSeconds: 0.1866385
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      Command: |
        
                Add-Member @splat 
            
      GroupName: 
      RepeatCount: 1024
      TotalMilliseconds: 186.6385
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 1866385
        Days: 0
        Hours: 0
        Milliseconds: 186
        Minutes: 0
        Seconds: 0
        TotalDays: 2.16016782407407e-06
        TotalHours: 5.18440277777778e-05
        TotalMilliseconds: 186.6385
        TotalMinutes: 0.00311064166666667
        TotalSeconds: 0.1866385
      AverageTime: 
        Ticks: 1822
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.1087962962963e-09
        TotalHours: 5.06111111111111e-08
        TotalMilliseconds: 0.1822
        TotalMinutes: 3.03666666666667e-06
        TotalSeconds: 0.0001822
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member @splat 
              
        Detailed: 
          IsPresent: true
      SlowestTime: 
        Ticks: 22724
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.63009259259259e-08
        TotalHours: 6.31222222222222e-07
        TotalMilliseconds: 2.2724
        TotalMinutes: 3.78733333333333e-05
        TotalSeconds: 0.0022724
      FastestTime: 
        Ticks: 1505
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.74189814814815e-09
        TotalHours: 4.18055555555556e-08
        TotalMilliseconds: 0.1505
        TotalMinutes: 2.50833333333333e-06
        TotalSeconds: 0.0001505
    RepeatCount: 1024
    Throughput: 5486.54216573751
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Named
    Time: 
      Ticks: 1999443
      Days: 0
      Hours: 0
      Milliseconds: 199
      Minutes: 0
      Seconds: 0
      TotalDays: 2.31417013888889e-06
      TotalHours: 5.55400833333333e-05
      TotalMilliseconds: 199.9443
      TotalMinutes: 0.003332405
      TotalSeconds: 0.1999443
    RelativeSpeed: 1.07129182885632
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      GroupName: 
      RepeatCount: 1024
      TotalMilliseconds: 199.9443
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 1999443
        Days: 0
        Hours: 0
        Milliseconds: 199
        Minutes: 0
        Seconds: 0
        TotalDays: 2.31417013888889e-06
        TotalHours: 5.55400833333333e-05
        TotalMilliseconds: 199.9443
        TotalMinutes: 0.003332405
        TotalSeconds: 0.1999443
      AverageTime: 
        Ticks: 1952
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.25925925925926e-09
        TotalHours: 5.42222222222222e-08
        TotalMilliseconds: 0.1952
        TotalMinutes: 3.25333333333333e-06
        TotalSeconds: 0.0001952
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        Detailed: 
          IsPresent: true
      SlowestTime: 
        Ticks: 31502
        Days: 0
        Hours: 0
        Milliseconds: 3
        Minutes: 0
        Seconds: 0
        TotalDays: 3.64606481481481e-08
        TotalHours: 8.75055555555556e-07
        TotalMilliseconds: 3.1502
        TotalMinutes: 5.25033333333333e-05
        TotalSeconds: 0.0031502
      FastestTime: 
        Ticks: 1579
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.8275462962963e-09
        TotalHours: 4.38611111111111e-08
        TotalMilliseconds: 0.1579
        TotalMinutes: 2.63166666666667e-06
        TotalSeconds: 0.0001579
    RepeatCount: 1024
    Throughput: 5121.42631722935
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Piped
    Time: 
      Ticks: 2104321
      Days: 0
      Hours: 0
      Milliseconds: 210
      Minutes: 0
      Seconds: 0
      TotalDays: 2.43555671296296e-06
      TotalHours: 5.84533611111111e-05
      TotalMilliseconds: 210.4321
      TotalMinutes: 0.00350720166666667
      TotalSeconds: 0.2104321
    RelativeSpeed: 1.12748495085419
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      GroupName: 
      RepeatCount: 1024
      TotalMilliseconds: 210.4321
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 2104321
        Days: 0
        Hours: 0
        Milliseconds: 210
        Minutes: 0
        Seconds: 0
        TotalDays: 2.43555671296296e-06
        TotalHours: 5.84533611111111e-05
        TotalMilliseconds: 210.4321
        TotalMinutes: 0.00350720166666667
        TotalSeconds: 0.2104321
      AverageTime: 
        Ticks: 2055
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.37847222222222e-09
        TotalHours: 5.70833333333333e-08
        TotalMilliseconds: 0.2055
        TotalMinutes: 3.425e-06
        TotalSeconds: 0.0002055
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        Detailed: 
          IsPresent: true
      SlowestTime: 
        Ticks: 23210
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.68634259259259e-08
        TotalHours: 6.44722222222222e-07
        TotalMilliseconds: 2.321
        TotalMinutes: 3.86833333333333e-05
        TotalSeconds: 0.002321
      FastestTime: 
        Ticks: 1676
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.93981481481481e-09
        TotalHours: 4.65555555555556e-08
        TotalMilliseconds: 0.1676
        TotalMinutes: 2.79333333333333e-06
        TotalSeconds: 0.0001676
    RepeatCount: 1024
    Throughput: 4866.17773619139
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Positional
    Time: 
      Ticks: 7504342
      Days: 0
      Hours: 0
      Milliseconds: 750
      Minutes: 0
      Seconds: 0
      TotalDays: 8.68558101851852e-06
      TotalHours: 0.000208453944444444
      TotalMilliseconds: 750.4342
      TotalMinutes: 0.0125072366666667
      TotalSeconds: 0.7504342
    RelativeSpeed: 4.02079045856026
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      GroupName: 
      RepeatCount: 1024
      TotalMilliseconds: 750.434299999999
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 7504342
        Days: 0
        Hours: 0
        Milliseconds: 750
        Minutes: 0
        Seconds: 0
        TotalDays: 8.68558101851852e-06
        TotalHours: 0.000208453944444444
        TotalMilliseconds: 750.4342
        TotalMinutes: 0.0125072366666667
        TotalSeconds: 0.7504342
      AverageTime: 
        Ticks: 7328
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 8.48148148148148e-09
        TotalHours: 2.03555555555556e-07
        TotalMilliseconds: 0.7328
        TotalMinutes: 1.22133333333333e-05
        TotalSeconds: 0.0007328
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        Detailed: 
          IsPresent: true
      SlowestTime: 
        Ticks: 53510
        Days: 0
        Hours: 0
        Milliseconds: 5
        Minutes: 0
        Seconds: 0
        TotalDays: 6.19328703703704e-08
        TotalHours: 1.48638888888889e-06
        TotalMilliseconds: 5.351
        TotalMinutes: 8.91833333333333e-05
        TotalSeconds: 0.005351
      FastestTime: 
        Ticks: 6025
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.97337962962963e-09
        TotalHours: 1.67361111111111e-07
        TotalMilliseconds: 0.6025
        TotalMinutes: 1.00416666666667e-05
        TotalSeconds: 0.0006025
    RepeatCount: 1024
    Throughput: 1364.5433537011
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
FileName: How Much Faster Is Splatting
ClockSpeed: 2095
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Splatting |1024       |00:00:00.186638|1x           |5486.54/s |
|Named     |1024       |00:00:00.199944|1.07x        |5121.43/s |
|Piped     |1024       |00:00:00.210432|1.13x        |4866.18/s |
|Positional|1024       |00:00:00.750434|4.02x        |1364.54/s |
