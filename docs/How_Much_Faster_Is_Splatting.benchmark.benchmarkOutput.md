---
layout: Benchmark

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 1990227
      Days: 0
      Hours: 0
      Milliseconds: 199
      Minutes: 0
      Seconds: 0
      TotalDays: 2.30350347222222e-06
      TotalHours: 5.52840833333333e-05
      TotalMilliseconds: 199.0227
      TotalMinutes: 0.003317045
      TotalSeconds: 0.1990227
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      GroupName: 
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1705
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.97337962962963e-09
        TotalHours: 4.73611111111111e-08
        TotalMilliseconds: 0.1705
        TotalMinutes: 2.84166666666667e-06
        TotalSeconds: 0.0001705
      Command: |
        
                Add-Member @splat 
            
      SlowestTime: 
        Ticks: 25729
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.97789351851852e-08
        TotalHours: 7.14694444444444e-07
        TotalMilliseconds: 2.5729
        TotalMinutes: 4.28816666666667e-05
        TotalSeconds: 0.0025729
      BenchmarkInput: 
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member @splat 
              
        FileName: How Much Faster Is Splatting
      AverageTime: 
        Ticks: 1943
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.24884259259259e-09
        TotalHours: 5.39722222222222e-08
        TotalMilliseconds: 0.1943
        TotalMinutes: 3.23833333333333e-06
        TotalSeconds: 0.0001943
      RepeatCount: 1024
      TotalTime: 
        Ticks: 1990227
        Days: 0
        Hours: 0
        Milliseconds: 199
        Minutes: 0
        Seconds: 0
        TotalDays: 2.30350347222222e-06
        TotalHours: 5.52840833333333e-05
        TotalMilliseconds: 199.0227
        TotalMinutes: 0.003317045
        TotalSeconds: 0.1990227
      TotalMilliseconds: 199.0228
    Throughput: 5145.14173508851
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
  - Technique: Named
    Time: 
      Ticks: 2050227
      Days: 0
      Hours: 0
      Milliseconds: 205
      Minutes: 0
      Seconds: 0
      TotalDays: 2.37294791666667e-06
      TotalHours: 5.695075e-05
      TotalMilliseconds: 205.0227
      TotalMinutes: 0.003417045
      TotalSeconds: 0.2050227
    RelativeSpeed: 1.03014729970636
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      GroupName: 
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1768
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.0462962962963e-09
        TotalHours: 4.91111111111111e-08
        TotalMilliseconds: 0.1768
        TotalMinutes: 2.94666666666667e-06
        TotalSeconds: 0.0001768
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      SlowestTime: 
        Ticks: 33223
        Days: 0
        Hours: 0
        Milliseconds: 3
        Minutes: 0
        Seconds: 0
        TotalDays: 3.84525462962963e-08
        TotalHours: 9.22861111111111e-07
        TotalMilliseconds: 3.3223
        TotalMinutes: 5.53716666666667e-05
        TotalSeconds: 0.0033223
      BenchmarkInput: 
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        FileName: How Much Faster Is Splatting
      AverageTime: 
        Ticks: 2002
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.31712962962963e-09
        TotalHours: 5.56111111111111e-08
        TotalMilliseconds: 0.2002
        TotalMinutes: 3.33666666666667e-06
        TotalSeconds: 0.0002002
      RepeatCount: 1024
      TotalTime: 
        Ticks: 2050227
        Days: 0
        Hours: 0
        Milliseconds: 205
        Minutes: 0
        Seconds: 0
        TotalDays: 2.37294791666667e-06
        TotalHours: 5.695075e-05
        TotalMilliseconds: 205.0227
        TotalMinutes: 0.003417045
        TotalSeconds: 0.2050227
      TotalMilliseconds: 205.0228
    Throughput: 4994.56889407856
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
  - Technique: Piped
    Time: 
      Ticks: 2112983
      Days: 0
      Hours: 0
      Milliseconds: 211
      Minutes: 0
      Seconds: 0
      TotalDays: 2.44558217592593e-06
      TotalHours: 5.86939722222222e-05
      TotalMilliseconds: 211.2983
      TotalMinutes: 0.00352163833333333
      TotalSeconds: 0.2112983
    RelativeSpeed: 1.06167936537924
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      GroupName: 
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1865
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.15856481481481e-09
        TotalHours: 5.18055555555556e-08
        TotalMilliseconds: 0.1865
        TotalMinutes: 3.10833333333333e-06
        TotalSeconds: 0.0001865
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      SlowestTime: 
        Ticks: 5993
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.93634259259259e-09
        TotalHours: 1.66472222222222e-07
        TotalMilliseconds: 0.5993
        TotalMinutes: 9.98833333333333e-06
        TotalSeconds: 0.0005993
      BenchmarkInput: 
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        FileName: How Much Faster Is Splatting
      AverageTime: 
        Ticks: 2063
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.38773148148148e-09
        TotalHours: 5.73055555555556e-08
        TotalMilliseconds: 0.2063
        TotalMinutes: 3.43833333333333e-06
        TotalSeconds: 0.0002063
      RepeatCount: 1024
      TotalTime: 
        Ticks: 2112983
        Days: 0
        Hours: 0
        Milliseconds: 211
        Minutes: 0
        Seconds: 0
        TotalDays: 2.44558217592593e-06
        TotalHours: 5.86939722222222e-05
        TotalMilliseconds: 211.2983
        TotalMinutes: 0.00352163833333333
        TotalSeconds: 0.2112983
      TotalMilliseconds: 211.2984
    Throughput: 4846.22924084103
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
  - Technique: Positional
    Time: 
      Ticks: 7461575
      Days: 0
      Hours: 0
      Milliseconds: 746
      Minutes: 0
      Seconds: 0
      TotalDays: 8.63608217592593e-06
      TotalHours: 0.000207265972222222
      TotalMilliseconds: 746.1575
      TotalMinutes: 0.0124359583333333
      TotalSeconds: 0.7461575
    RelativeSpeed: 3.74910563010872
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      GroupName: 
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 6647
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 7.69328703703704e-09
        TotalHours: 1.84638888888889e-07
        TotalMilliseconds: 0.6647
        TotalMinutes: 1.10783333333333e-05
        TotalSeconds: 0.0006647
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      SlowestTime: 
        Ticks: 26616
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 3.08055555555556e-08
        TotalHours: 7.39333333333333e-07
        TotalMilliseconds: 2.6616
        TotalMinutes: 4.436e-05
        TotalSeconds: 0.0026616
      BenchmarkInput: 
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        FileName: How Much Faster Is Splatting
      AverageTime: 
        Ticks: 7286
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 8.43287037037037e-09
        TotalHours: 2.02388888888889e-07
        TotalMilliseconds: 0.7286
        TotalMinutes: 1.21433333333333e-05
        TotalSeconds: 0.0007286
      RepeatCount: 1024
      TotalTime: 
        Ticks: 7461575
        Days: 0
        Hours: 0
        Milliseconds: 746
        Minutes: 0
        Seconds: 0
        TotalDays: 8.63608217592593e-06
        TotalHours: 0.000207265972222222
        TotalMilliseconds: 746.1575
        TotalMinutes: 0.0124359583333333
        TotalSeconds: 0.7461575
      TotalMilliseconds: 746.1575
    Throughput: 1372.36441367942
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
FileName: How Much Faster Is Splatting
ClockSpeed: 2095
---
How Much Faster Is Splatting
----------------------------
> @2095 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Splatting |00:00:00.199022|1x           |5145.14/s |
|Named     |00:00:00.205022|1.03x        |4994.57/s |
|Piped     |00:00:00.211298|1.06x        |4846.23/s |
|Positional|00:00:00.746157|3.75x        |1372.36/s |
