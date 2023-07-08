---
layout: Benchmark

Data: 
  - Technique: Named
    Time: 
      Ticks: 1701818
      Days: 0
      Hours: 0
      Milliseconds: 170
      Minutes: 0
      Seconds: 0
      TotalDays: 1.96969675925926e-06
      TotalHours: 4.72727222222222e-05
      TotalMilliseconds: 170.1818
      TotalMinutes: 0.00283636333333333
      TotalSeconds: 0.1701818
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      SlowestTime: 
        Ticks: 64862
        Days: 0
        Hours: 0
        Milliseconds: 6
        Minutes: 0
        Seconds: 0
        TotalDays: 7.50717592592593e-08
        TotalHours: 1.80172222222222e-06
        TotalMilliseconds: 6.4862
        TotalMinutes: 0.000108103333333333
        TotalSeconds: 0.0064862
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      AverageTime: 
        Ticks: 1661
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.9224537037037e-09
        TotalHours: 4.61388888888889e-08
        TotalMilliseconds: 0.1661
        TotalMinutes: 2.76833333333333e-06
        TotalSeconds: 0.0001661
      FastestTime: 
        Ticks: 1534
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.77546296296296e-09
        TotalHours: 4.26111111111111e-08
        TotalMilliseconds: 0.1534
        TotalMinutes: 2.55666666666667e-06
        TotalSeconds: 0.0001534
      TotalTime: 
        Ticks: 1701818
        Days: 0
        Hours: 0
        Milliseconds: 170
        Minutes: 0
        Seconds: 0
        TotalDays: 1.96969675925926e-06
        TotalHours: 4.72727222222222e-05
        TotalMilliseconds: 170.1818
        TotalMinutes: 0.00283636333333333
        TotalSeconds: 0.1701818
      TotalMilliseconds: 170.1818
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        RepeatCount: 1024
      GroupName: 
    Throughput: 6017.09465994601
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
  - Technique: Splatting
    Time: 
      Ticks: 1745578
      Days: 0
      Hours: 0
      Milliseconds: 174
      Minutes: 0
      Seconds: 0
      TotalDays: 2.02034490740741e-06
      TotalHours: 4.84882777777778e-05
      TotalMilliseconds: 174.5578
      TotalMinutes: 0.00290929666666667
      TotalSeconds: 0.1745578
    RelativeSpeed: 1.02571426556776
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      SlowestTime: 
        Ticks: 72145
        Days: 0
        Hours: 0
        Milliseconds: 7
        Minutes: 0
        Seconds: 0
        TotalDays: 8.35011574074074e-08
        TotalHours: 2.00402777777778e-06
        TotalMilliseconds: 7.2145
        TotalMinutes: 0.000120241666666667
        TotalSeconds: 0.0072145
      Command: |
        
                Add-Member @splat 
            
      AverageTime: 
        Ticks: 1704
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.97222222222222e-09
        TotalHours: 4.73333333333333e-08
        TotalMilliseconds: 0.1704
        TotalMinutes: 2.84e-06
        TotalSeconds: 0.0001704
      FastestTime: 
        Ticks: 1503
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.73958333333333e-09
        TotalHours: 4.175e-08
        TotalMilliseconds: 0.1503
        TotalMinutes: 2.505e-06
        TotalSeconds: 0.0001503
      TotalTime: 
        Ticks: 1745578
        Days: 0
        Hours: 0
        Milliseconds: 174
        Minutes: 0
        Seconds: 0
        TotalDays: 2.02034490740741e-06
        TotalHours: 4.84882777777778e-05
        TotalMilliseconds: 174.5578
        TotalMinutes: 0.00290929666666667
        TotalSeconds: 0.1745578
      TotalMilliseconds: 174.5579
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member @splat 
              
        RepeatCount: 1024
      GroupName: 
    Throughput: 5866.25175156882
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
  - Technique: Piped
    Time: 
      Ticks: 1758236
      Days: 0
      Hours: 0
      Milliseconds: 175
      Minutes: 0
      Seconds: 0
      TotalDays: 2.03499537037037e-06
      TotalHours: 4.88398888888889e-05
      TotalMilliseconds: 175.8236
      TotalMinutes: 0.00293039333333333
      TotalSeconds: 0.1758236
    RelativeSpeed: 1.03315160610594
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      SlowestTime: 
        Ticks: 13924
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 1.61157407407407e-08
        TotalHours: 3.86777777777778e-07
        TotalMilliseconds: 1.3924
        TotalMinutes: 2.32066666666667e-05
        TotalSeconds: 0.0013924
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      AverageTime: 
        Ticks: 1717
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.98726851851852e-09
        TotalHours: 4.76944444444444e-08
        TotalMilliseconds: 0.1717
        TotalMinutes: 2.86166666666667e-06
        TotalSeconds: 0.0001717
      FastestTime: 
        Ticks: 1625
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.88078703703704e-09
        TotalHours: 4.51388888888889e-08
        TotalMilliseconds: 0.1625
        TotalMinutes: 2.70833333333333e-06
        TotalSeconds: 0.0001625
      TotalTime: 
        Ticks: 1758236
        Days: 0
        Hours: 0
        Milliseconds: 175
        Minutes: 0
        Seconds: 0
        TotalDays: 2.03499537037037e-06
        TotalHours: 4.88398888888889e-05
        TotalMilliseconds: 175.8236
        TotalMinutes: 0.00293039333333333
        TotalSeconds: 0.1758236
      TotalMilliseconds: 175.8236
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        RepeatCount: 1024
      GroupName: 
    Throughput: 5824.01907366247
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
  - Technique: Positional
    Time: 
      Ticks: 6388127
      Days: 0
      Hours: 0
      Milliseconds: 638
      Minutes: 0
      Seconds: 0
      TotalDays: 7.39366550925926e-06
      TotalHours: 0.000177447972222222
      TotalMilliseconds: 638.8127
      TotalMinutes: 0.0106468783333333
      TotalSeconds: 0.6388127
    RelativeSpeed: 3.75370750573798
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      SlowestTime: 
        Ticks: 47389
        Days: 0
        Hours: 0
        Milliseconds: 4
        Minutes: 0
        Seconds: 0
        TotalDays: 5.48483796296296e-08
        TotalHours: 1.31636111111111e-06
        TotalMilliseconds: 4.7389
        TotalMinutes: 7.89816666666667e-05
        TotalSeconds: 0.0047389
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
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
        Ticks: 6016
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.96296296296296e-09
        TotalHours: 1.67111111111111e-07
        TotalMilliseconds: 0.6016
        TotalMinutes: 1.00266666666667e-05
        TotalSeconds: 0.0006016
      TotalTime: 
        Ticks: 6388127
        Days: 0
        Hours: 0
        Milliseconds: 638
        Minutes: 0
        Seconds: 0
        TotalDays: 7.39366550925926e-06
        TotalHours: 0.000177447972222222
        TotalMilliseconds: 638.8127
        TotalMinutes: 0.0106468783333333
        TotalSeconds: 0.6388127
      TotalMilliseconds: 638.8127
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        RepeatCount: 1024
      GroupName: 
    Throughput: 1602.97376680207
    BenchmarkInput: 
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
      FileName: How Much Faster Is Splatting
FileName: How Much Faster Is Splatting
ClockSpeed: 2594
---
How Much Faster Is Splatting
----------------------------
> @2594 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Named     |00:00:00.170181|1x           |6017.09/s |
|Splatting |00:00:00.174557|1.03x        |5866.25/s |
|Piped     |00:00:00.175823|1.03x        |5824.02/s |
|Positional|00:00:00.638812|3.75x        |1602.97/s |
