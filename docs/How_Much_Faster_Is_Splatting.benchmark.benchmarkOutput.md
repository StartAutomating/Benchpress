---
layout: Benchmark

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 2584696
      Days: 0
      Hours: 0
      Milliseconds: 258
      Minutes: 0
      Seconds: 0
      TotalDays: 2.9915462962963e-06
      TotalHours: 7.17971111111111e-05
      TotalMilliseconds: 258.4696
      TotalMinutes: 0.00430782666666667
      TotalSeconds: 0.2584696
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      GroupName: 
      RepeatCount: 1024
      Command: |
        
                Add-Member @splat 
            
      FastestTime: 
        Ticks: 2024
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.34259259259259e-09
        TotalHours: 5.62222222222222e-08
        TotalMilliseconds: 0.2024
        TotalMinutes: 3.37333333333333e-06
        TotalSeconds: 0.0002024
      SlowestTime: 
        Ticks: 23473
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.71678240740741e-08
        TotalHours: 6.52027777777778e-07
        TotalMilliseconds: 2.3473
        TotalMinutes: 3.91216666666667e-05
        TotalSeconds: 0.0023473
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member @splat 
              
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
      AverageTime: 
        Ticks: 2524
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.9212962962963e-09
        TotalHours: 7.01111111111111e-08
        TotalMilliseconds: 0.2524
        TotalMinutes: 4.20666666666667e-06
        TotalSeconds: 0.0002524
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 2584696
        Days: 0
        Hours: 0
        Milliseconds: 258
        Minutes: 0
        Seconds: 0
        TotalDays: 2.9915462962963e-06
        TotalHours: 7.17971111111111e-05
        TotalMilliseconds: 258.4696
        TotalMinutes: 0.00430782666666667
        TotalSeconds: 0.2584696
      TotalMilliseconds: 258.4696
    Throughput: 3961.78119206282
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
  - Technique: Named
    Time: 
      Ticks: 2828195
      Days: 0
      Hours: 0
      Milliseconds: 282
      Minutes: 0
      Seconds: 0
      TotalDays: 3.27337384259259e-06
      TotalHours: 7.85609722222222e-05
      TotalMilliseconds: 282.8195
      TotalMinutes: 0.00471365833333333
      TotalSeconds: 0.2828195
    RelativeSpeed: 1.09420837111985
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      GroupName: 
      RepeatCount: 1024
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      FastestTime: 
        Ticks: 2074
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.40046296296296e-09
        TotalHours: 5.76111111111111e-08
        TotalMilliseconds: 0.2074
        TotalMinutes: 3.45666666666667e-06
        TotalSeconds: 0.0002074
      SlowestTime: 
        Ticks: 95912
        Days: 0
        Hours: 0
        Milliseconds: 9
        Minutes: 0
        Seconds: 0
        TotalDays: 1.11009259259259e-07
        TotalHours: 2.66422222222222e-06
        TotalMilliseconds: 9.5912
        TotalMinutes: 0.000159853333333333
        TotalSeconds: 0.0095912
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
      AverageTime: 
        Ticks: 2761
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.19560185185185e-09
        TotalHours: 7.66944444444444e-08
        TotalMilliseconds: 0.2761
        TotalMinutes: 4.60166666666667e-06
        TotalSeconds: 0.0002761
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 2828195
        Days: 0
        Hours: 0
        Milliseconds: 282
        Minutes: 0
        Seconds: 0
        TotalDays: 3.27337384259259e-06
        TotalHours: 7.85609722222222e-05
        TotalMilliseconds: 282.8195
        TotalMinutes: 0.00471365833333333
        TotalSeconds: 0.2828195
      TotalMilliseconds: 282.8196
    Throughput: 3620.68386373641
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
  - Technique: Piped
    Time: 
      Ticks: 2852259
      Days: 0
      Hours: 0
      Milliseconds: 285
      Minutes: 0
      Seconds: 0
      TotalDays: 3.30122569444444e-06
      TotalHours: 7.92294166666667e-05
      TotalMilliseconds: 285.2259
      TotalMinutes: 0.004753765
      TotalSeconds: 0.2852259
    RelativeSpeed: 1.1035185569212
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      GroupName: 
      RepeatCount: 1024
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      FastestTime: 
        Ticks: 2207
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.55439814814815e-09
        TotalHours: 6.13055555555555e-08
        TotalMilliseconds: 0.2207
        TotalMinutes: 3.67833333333333e-06
        TotalSeconds: 0.0002207
      SlowestTime: 
        Ticks: 31522
        Days: 0
        Hours: 0
        Milliseconds: 3
        Minutes: 0
        Seconds: 0
        TotalDays: 3.64837962962963e-08
        TotalHours: 8.75611111111111e-07
        TotalMilliseconds: 3.1522
        TotalMinutes: 5.25366666666667e-05
        TotalSeconds: 0.0031522
      BenchmarkInput: 
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
      AverageTime: 
        Ticks: 2785
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.22337962962963e-09
        TotalHours: 7.73611111111111e-08
        TotalMilliseconds: 0.2785
        TotalMinutes: 4.64166666666667e-06
        TotalSeconds: 0.0002785
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 2852259
        Days: 0
        Hours: 0
        Milliseconds: 285
        Minutes: 0
        Seconds: 0
        TotalDays: 3.30122569444444e-06
        TotalHours: 7.92294166666667e-05
        TotalMilliseconds: 285.2259
        TotalMinutes: 0.004753765
        TotalSeconds: 0.2852259
      TotalMilliseconds: 285.226
    Throughput: 3590.13680033966
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
  - Technique: Positional
    Time: 
      Ticks: 9935620
      Days: 0
      Hours: 0
      Milliseconds: 993
      Minutes: 0
      Seconds: 0
      TotalDays: 1.14995601851852e-05
      TotalHours: 0.000275989444444444
      TotalMilliseconds: 993.562
      TotalMinutes: 0.0165593666666667
      TotalSeconds: 0.993562
    RelativeSpeed: 3.84401879369953
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      GroupName: 
      RepeatCount: 1024
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      FastestTime: 
        Ticks: 7369
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 8.52893518518519e-09
        TotalHours: 2.04694444444444e-07
        TotalMilliseconds: 0.7369
        TotalMinutes: 1.22816666666667e-05
        TotalSeconds: 0.0007369
      SlowestTime: 
        Ticks: 45302
        Days: 0
        Hours: 0
        Milliseconds: 4
        Minutes: 0
        Seconds: 0
        TotalDays: 5.24328703703704e-08
        TotalHours: 1.25838888888889e-06
        TotalMilliseconds: 4.5302
        TotalMinutes: 7.55033333333333e-05
        TotalSeconds: 0.0045302
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
      AverageTime: 
        Ticks: 9702
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.12291666666667e-08
        TotalHours: 2.695e-07
        TotalMilliseconds: 0.9702
        TotalMinutes: 1.617e-05
        TotalSeconds: 0.0009702
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 9935620
        Days: 0
        Hours: 0
        Milliseconds: 993
        Minutes: 0
        Seconds: 0
        TotalDays: 1.14995601851852e-05
        TotalHours: 0.000275989444444444
        TotalMilliseconds: 993.562
        TotalMinutes: 0.0165593666666667
        TotalSeconds: 0.993562
      TotalMilliseconds: 993.562
    Throughput: 1030.63522960822
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
FileName: How Much Faster Is Splatting
ClockSpeed: 2295
---
How Much Faster Is Splatting
----------------------------
> @2295 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Splatting |00:00:00.258469|1x           |3961.78/s |
|Named     |00:00:00.282819|1.09x        |3620.68/s |
|Piped     |00:00:00.285225|1.1x         |3590.14/s |
|Positional|00:00:00.993562|3.84x        |1030.64/s |
