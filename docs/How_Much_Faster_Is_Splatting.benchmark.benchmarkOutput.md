---
layout: Benchmark

Data: 
  - Technique: Named
    Time: 
      Ticks: 2635365
      Days: 0
      Hours: 0
      Milliseconds: 263
      Minutes: 0
      Seconds: 0
      TotalDays: 3.05019097222222e-06
      TotalHours: 7.32045833333333e-05
      TotalMilliseconds: 263.5365
      TotalMinutes: 0.004392275
      TotalSeconds: 0.2635365
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      TotalMilliseconds: 263.5366
      FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 24502
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.83587962962963e-08
        TotalHours: 6.80611111111111e-07
        TotalMilliseconds: 2.4502
        TotalMinutes: 4.08366666666667e-05
        TotalSeconds: 0.0024502
      GroupName: 
      RepeatCount: 1024
      TotalTime: 
        Ticks: 2635365
        Days: 0
        Hours: 0
        Milliseconds: 263
        Minutes: 0
        Seconds: 0
        TotalDays: 3.05019097222222e-06
        TotalHours: 7.32045833333333e-05
        TotalMilliseconds: 263.5365
        TotalMinutes: 0.004392275
        TotalSeconds: 0.2635365
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
      FastestTime: 
        Ticks: 1950
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.25694444444444e-09
        TotalHours: 5.41666666666667e-08
        TotalMilliseconds: 0.195
        TotalMinutes: 3.25e-06
        TotalSeconds: 0.000195
      AverageTime: 
        Ticks: 2573
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.97800925925926e-09
        TotalHours: 7.14722222222222e-08
        TotalMilliseconds: 0.2573
        TotalMinutes: 4.28833333333333e-06
        TotalSeconds: 0.0002573
    Throughput: 3885.60977321927
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Splatting
    Time: 
      Ticks: 2668099
      Days: 0
      Hours: 0
      Milliseconds: 266
      Minutes: 0
      Seconds: 0
      TotalDays: 3.0880775462963e-06
      TotalHours: 7.41138611111111e-05
      TotalMilliseconds: 266.8099
      TotalMinutes: 0.00444683166666667
      TotalSeconds: 0.2668099
    RelativeSpeed: 1.01242066566845
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      TotalMilliseconds: 266.8099
      FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 42288
        Days: 0
        Hours: 0
        Milliseconds: 4
        Minutes: 0
        Seconds: 0
        TotalDays: 4.89444444444444e-08
        TotalHours: 1.17466666666667e-06
        TotalMilliseconds: 4.2288
        TotalMinutes: 7.048e-05
        TotalSeconds: 0.0042288
      GroupName: 
      RepeatCount: 1024
      TotalTime: 
        Ticks: 2668099
        Days: 0
        Hours: 0
        Milliseconds: 266
        Minutes: 0
        Seconds: 0
        TotalDays: 3.0880775462963e-06
        TotalHours: 7.41138611111111e-05
        TotalMilliseconds: 266.8099
        TotalMinutes: 0.00444683166666667
        TotalSeconds: 0.2668099
      Command: |
        
                Add-Member @splat 
            
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member @splat 
              
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
      FastestTime: 
        Ticks: 1975
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.28587962962963e-09
        TotalHours: 5.48611111111111e-08
        TotalMilliseconds: 0.1975
        TotalMinutes: 3.29166666666667e-06
        TotalSeconds: 0.0001975
      AverageTime: 
        Ticks: 2605
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.0150462962963e-09
        TotalHours: 7.23611111111111e-08
        TotalMilliseconds: 0.2605
        TotalMinutes: 4.34166666666667e-06
        TotalSeconds: 0.0002605
    Throughput: 3837.9385472578
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Piped
    Time: 
      Ticks: 2748001
      Days: 0
      Hours: 0
      Milliseconds: 274
      Minutes: 0
      Seconds: 0
      TotalDays: 3.18055671296296e-06
      TotalHours: 7.63333611111111e-05
      TotalMilliseconds: 274.8001
      TotalMinutes: 0.00458000166666667
      TotalSeconds: 0.2748001
    RelativeSpeed: 1.04273979401723
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      TotalMilliseconds: 274.8001
      FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 16700
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 1.93287037037037e-08
        TotalHours: 4.63888888888889e-07
        TotalMilliseconds: 1.67
        TotalMinutes: 2.78333333333333e-05
        TotalSeconds: 0.00167
      GroupName: 
      RepeatCount: 1024
      TotalTime: 
        Ticks: 2748001
        Days: 0
        Hours: 0
        Milliseconds: 274
        Minutes: 0
        Seconds: 0
        TotalDays: 3.18055671296296e-06
        TotalHours: 7.63333611111111e-05
        TotalMilliseconds: 274.8001
        TotalMinutes: 0.00458000166666667
        TotalSeconds: 0.2748001
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      BenchmarkInput: 
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
      FastestTime: 
        Ticks: 2111
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.44328703703704e-09
        TotalHours: 5.86388888888889e-08
        TotalMilliseconds: 0.2111
        TotalMinutes: 3.51833333333333e-06
        TotalSeconds: 0.0002111
      AverageTime: 
        Ticks: 2683
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.10532407407407e-09
        TotalHours: 7.45277777777778e-08
        TotalMilliseconds: 0.2683
        TotalMinutes: 4.47166666666667e-06
        TotalSeconds: 0.0002683
    Throughput: 3726.34507774924
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Positional
    Time: 
      Ticks: 9621164
      Days: 0
      Hours: 0
      Milliseconds: 962
      Minutes: 0
      Seconds: 0
      TotalDays: 1.11356064814815e-05
      TotalHours: 0.000267254555555556
      TotalMilliseconds: 962.1164
      TotalMinutes: 0.0160352733333333
      TotalSeconds: 0.9621164
    RelativeSpeed: 3.65078854322322
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      TotalMilliseconds: 962.116400000001
      FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 52032
        Days: 0
        Hours: 0
        Milliseconds: 5
        Minutes: 0
        Seconds: 0
        TotalDays: 6.02222222222222e-08
        TotalHours: 1.44533333333333e-06
        TotalMilliseconds: 5.2032
        TotalMinutes: 8.672e-05
        TotalSeconds: 0.0052032
      GroupName: 
      RepeatCount: 1024
      TotalTime: 
        Ticks: 9621164
        Days: 0
        Hours: 0
        Milliseconds: 962
        Minutes: 0
        Seconds: 0
        TotalDays: 1.11356064814815e-05
        TotalHours: 0.000267254555555556
        TotalMilliseconds: 962.1164
        TotalMinutes: 0.0160352733333333
        TotalSeconds: 0.9621164
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
      FastestTime: 
        Ticks: 6917
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 8.00578703703704e-09
        TotalHours: 1.92138888888889e-07
        TotalMilliseconds: 0.6917
        TotalMinutes: 1.15283333333333e-05
        TotalSeconds: 0.0006917
      AverageTime: 
        Ticks: 9395
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.08738425925926e-08
        TotalHours: 2.60972222222222e-07
        TotalMilliseconds: 0.9395
        TotalMinutes: 1.56583333333333e-05
        TotalSeconds: 0.0009395
    Throughput: 1064.32028390744
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
FileName: How Much Faster Is Splatting
ClockSpeed: 2295
---
How Much Faster Is Splatting
----------------------------
> @2295 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Named     |00:00:00.263536|1x           |3885.61/s |
|Splatting |00:00:00.266809|1.01x        |3837.94/s |
|Piped     |00:00:00.274800|1.04x        |3726.35/s |
|Positional|00:00:00.962116|3.65x        |1064.32/s |
