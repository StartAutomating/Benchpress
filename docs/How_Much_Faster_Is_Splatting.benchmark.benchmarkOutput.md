---
layout: Benchmark

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 1675782
      Days: 0
      Hours: 0
      Milliseconds: 167
      Minutes: 0
      Seconds: 0
      TotalDays: 1.9395625e-06
      TotalHours: 4.65495e-05
      TotalMilliseconds: 167.5782
      TotalMinutes: 0.00279297
      TotalSeconds: 0.1675782
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member @splat 
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
      RepeatCount: 1024
      FastestTime: 
        Ticks: 1538
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.78009259259259e-09
        TotalHours: 4.27222222222222e-08
        TotalMilliseconds: 0.1538
        TotalMinutes: 2.56333333333333e-06
        TotalSeconds: 0.0001538
      FileName: How Much Faster Is Splatting
      TotalMilliseconds: 167.5782
      SlowestTime: 
        Ticks: 15615
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 1.80729166666667e-08
        TotalHours: 4.3375e-07
        TotalMilliseconds: 1.5615
        TotalMinutes: 2.6025e-05
        TotalSeconds: 0.0015615
      AverageTime: 
        Ticks: 1636
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.89351851851852e-09
        TotalHours: 4.54444444444444e-08
        TotalMilliseconds: 0.1636
        TotalMinutes: 2.72666666666667e-06
        TotalSeconds: 0.0001636
      TotalTime: 
        Ticks: 1675782
        Days: 0
        Hours: 0
        Milliseconds: 167
        Minutes: 0
        Seconds: 0
        TotalDays: 1.9395625e-06
        TotalHours: 4.65495e-05
        TotalMilliseconds: 167.5782
        TotalMinutes: 0.00279297
        TotalSeconds: 0.1675782
      Command: |
        
                Add-Member @splat 
            
    Throughput: 6110.58001577771
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
  - Technique: Named
    Time: 
      Ticks: 1747286
      Days: 0
      Hours: 0
      Milliseconds: 174
      Minutes: 0
      Seconds: 0
      TotalDays: 2.02232175925926e-06
      TotalHours: 4.85357222222222e-05
      TotalMilliseconds: 174.7286
      TotalMinutes: 0.00291214333333333
      TotalSeconds: 0.1747286
    RelativeSpeed: 1.04266903451642
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
      RepeatCount: 1024
      FastestTime: 
        Ticks: 1610
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.86342592592593e-09
        TotalHours: 4.47222222222222e-08
        TotalMilliseconds: 0.161
        TotalMinutes: 2.68333333333333e-06
        TotalSeconds: 0.000161
      FileName: How Much Faster Is Splatting
      TotalMilliseconds: 174.7286
      SlowestTime: 
        Ticks: 27566
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 3.19050925925926e-08
        TotalHours: 7.65722222222222e-07
        TotalMilliseconds: 2.7566
        TotalMinutes: 4.59433333333333e-05
        TotalSeconds: 0.0027566
      AverageTime: 
        Ticks: 1706
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.97453703703704e-09
        TotalHours: 4.73888888888889e-08
        TotalMilliseconds: 0.1706
        TotalMinutes: 2.84333333333333e-06
        TotalSeconds: 0.0001706
      TotalTime: 
        Ticks: 1747286
        Days: 0
        Hours: 0
        Milliseconds: 174
        Minutes: 0
        Seconds: 0
        TotalDays: 2.02232175925926e-06
        TotalHours: 4.85357222222222e-05
        TotalMilliseconds: 174.7286
        TotalMinutes: 0.00291214333333333
        TotalSeconds: 0.1747286
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
    Throughput: 5860.51739669407
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
  - Technique: Piped
    Time: 
      Ticks: 1852159
      Days: 0
      Hours: 0
      Milliseconds: 185
      Minutes: 0
      Seconds: 0
      TotalDays: 2.1437025462963e-06
      TotalHours: 5.14488611111111e-05
      TotalMilliseconds: 185.2159
      TotalMinutes: 0.00308693166666667
      TotalSeconds: 0.1852159
    RelativeSpeed: 1.10525056361746
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
      RepeatCount: 1024
      FastestTime: 
        Ticks: 1679
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.94328703703704e-09
        TotalHours: 4.66388888888889e-08
        TotalMilliseconds: 0.1679
        TotalMinutes: 2.79833333333333e-06
        TotalSeconds: 0.0001679
      FileName: How Much Faster Is Splatting
      TotalMilliseconds: 185.2159
      SlowestTime: 
        Ticks: 53863
        Days: 0
        Hours: 0
        Milliseconds: 5
        Minutes: 0
        Seconds: 0
        TotalDays: 6.23414351851852e-08
        TotalHours: 1.49619444444444e-06
        TotalMilliseconds: 5.3863
        TotalMinutes: 8.97716666666667e-05
        TotalSeconds: 0.0053863
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
      TotalTime: 
        Ticks: 1852159
        Days: 0
        Hours: 0
        Milliseconds: 185
        Minutes: 0
        Seconds: 0
        TotalDays: 2.1437025462963e-06
        TotalHours: 5.14488611111111e-05
        TotalMilliseconds: 185.2159
        TotalMinutes: 0.00308693166666667
        TotalSeconds: 0.1852159
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
    Throughput: 5528.68301263552
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
  - Technique: Positional
    Time: 
      Ticks: 6547373
      Days: 0
      Hours: 0
      Milliseconds: 654
      Minutes: 0
      Seconds: 0
      TotalDays: 7.57797800925926e-06
      TotalHours: 0.000181871472222222
      TotalMilliseconds: 654.7373
      TotalMinutes: 0.0109122883333333
      TotalSeconds: 0.6547373
    RelativeSpeed: 3.90705592970923
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
      RepeatCount: 1024
      FastestTime: 
        Ticks: 6190
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 7.16435185185185e-09
        TotalHours: 1.71944444444444e-07
        TotalMilliseconds: 0.619
        TotalMinutes: 1.03166666666667e-05
        TotalSeconds: 0.000619
      FileName: How Much Faster Is Splatting
      TotalMilliseconds: 654.737399999999
      SlowestTime: 
        Ticks: 24467
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.8318287037037e-08
        TotalHours: 6.79638888888889e-07
        TotalMilliseconds: 2.4467
        TotalMinutes: 4.07783333333333e-05
        TotalSeconds: 0.0024467
      AverageTime: 
        Ticks: 6393
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 7.39930555555556e-09
        TotalHours: 1.77583333333333e-07
        TotalMilliseconds: 0.6393
        TotalMinutes: 1.0655e-05
        TotalSeconds: 0.0006393
      TotalTime: 
        Ticks: 6547373
        Days: 0
        Hours: 0
        Milliseconds: 654
        Minutes: 0
        Seconds: 0
        TotalDays: 7.57797800925926e-06
        TotalHours: 0.000181871472222222
        TotalMilliseconds: 654.7373
        TotalMinutes: 0.0109122883333333
        TotalSeconds: 0.6547373
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
    Throughput: 1563.98604447921
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
FileName: How Much Faster Is Splatting
ClockSpeed: 2594
---
How Much Faster Is Splatting
----------------------------
> @2594 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Splatting |00:00:00.167578|1x           |6110.58/s |
|Named     |00:00:00.174728|1.04x        |5860.52/s |
|Piped     |00:00:00.185215|1.11x        |5528.68/s |
|Positional|00:00:00.654737|3.91x        |1563.99/s |
