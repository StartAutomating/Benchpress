---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 1675983
      Days: 0
      Hours: 0
      Milliseconds: 167
      Minutes: 0
      Seconds: 0
      TotalDays: 1.93979513888889e-06
      TotalHours: 4.65550833333333e-05
      TotalMilliseconds: 167.5983
      TotalMinutes: 0.002793305
      TotalSeconds: 0.1675983
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      FileName: How Much Faster Is Splatting
      TotalMilliseconds: 167.5983
      Command: |
        
                Add-Member @splat 
            
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
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member @splat 
              
      SlowestTime: 
        Ticks: 20460
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.36805555555556e-08
        TotalHours: 5.68333333333333e-07
        TotalMilliseconds: 2.046
        TotalMinutes: 3.41e-05
        TotalSeconds: 0.002046
      TotalTime: 
        Ticks: 1675983
        Days: 0
        Hours: 0
        Milliseconds: 167
        Minutes: 0
        Seconds: 0
        TotalDays: 1.93979513888889e-06
        TotalHours: 4.65550833333333e-05
        TotalMilliseconds: 167.5983
        TotalMinutes: 0.002793305
        TotalSeconds: 0.1675983
      FastestTime: 
        Ticks: 1542
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.78472222222222e-09
        TotalHours: 4.28333333333333e-08
        TotalMilliseconds: 0.1542
        TotalMinutes: 2.57e-06
        TotalSeconds: 0.0001542
      RepeatCount: 1024
    RepeatCount: 1024
    Throughput: 6109.84717625417
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Named
    Time: 
      Ticks: 1725839
      Days: 0
      Hours: 0
      Milliseconds: 172
      Minutes: 0
      Seconds: 0
      TotalDays: 1.99749884259259e-06
      TotalHours: 4.79399722222222e-05
      TotalMilliseconds: 172.5839
      TotalMinutes: 0.00287639833333333
      TotalSeconds: 0.1725839
    RelativeSpeed: 1.02974791510415
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      FileName: How Much Faster Is Splatting
      TotalMilliseconds: 172.584
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      AverageTime: 
        Ticks: 1685
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.95023148148148e-09
        TotalHours: 4.68055555555556e-08
        TotalMilliseconds: 0.1685
        TotalMinutes: 2.80833333333333e-06
        TotalSeconds: 0.0001685
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
      SlowestTime: 
        Ticks: 17291
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 2.00127314814815e-08
        TotalHours: 4.80305555555556e-07
        TotalMilliseconds: 1.7291
        TotalMinutes: 2.88183333333333e-05
        TotalSeconds: 0.0017291
      TotalTime: 
        Ticks: 1725839
        Days: 0
        Hours: 0
        Milliseconds: 172
        Minutes: 0
        Seconds: 0
        TotalDays: 1.99749884259259e-06
        TotalHours: 4.79399722222222e-05
        TotalMilliseconds: 172.5839
        TotalMinutes: 0.00287639833333333
        TotalSeconds: 0.1725839
      FastestTime: 
        Ticks: 1591
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.84143518518519e-09
        TotalHours: 4.41944444444444e-08
        TotalMilliseconds: 0.1591
        TotalMinutes: 2.65166666666667e-06
        TotalSeconds: 0.0001591
      RepeatCount: 1024
    RepeatCount: 1024
    Throughput: 5933.34604212792
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Piped
    Time: 
      Ticks: 1828871
      Days: 0
      Hours: 0
      Milliseconds: 182
      Minutes: 0
      Seconds: 0
      TotalDays: 2.11674884259259e-06
      TotalHours: 5.08019722222222e-05
      TotalMilliseconds: 182.8871
      TotalMinutes: 0.00304811833333333
      TotalSeconds: 0.1828871
    RelativeSpeed: 1.09122288233234
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      FileName: How Much Faster Is Splatting
      TotalMilliseconds: 182.8871
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      AverageTime: 
        Ticks: 1786
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.06712962962963e-09
        TotalHours: 4.96111111111111e-08
        TotalMilliseconds: 0.1786
        TotalMinutes: 2.97666666666667e-06
        TotalSeconds: 0.0001786
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
      SlowestTime: 
        Ticks: 17571
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 2.03368055555556e-08
        TotalHours: 4.88083333333333e-07
        TotalMilliseconds: 1.7571
        TotalMinutes: 2.9285e-05
        TotalSeconds: 0.0017571
      TotalTime: 
        Ticks: 1828871
        Days: 0
        Hours: 0
        Milliseconds: 182
        Minutes: 0
        Seconds: 0
        TotalDays: 2.11674884259259e-06
        TotalHours: 5.08019722222222e-05
        TotalMilliseconds: 182.8871
        TotalMinutes: 0.00304811833333333
        TotalSeconds: 0.1828871
      FastestTime: 
        Ticks: 1687
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.9525462962963e-09
        TotalHours: 4.68611111111111e-08
        TotalMilliseconds: 0.1687
        TotalMinutes: 2.81166666666667e-06
        TotalSeconds: 0.0001687
      RepeatCount: 1024
    RepeatCount: 1024
    Throughput: 5599.08271277745
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Positional
    Time: 
      Ticks: 6448149
      Days: 0
      Hours: 0
      Milliseconds: 644
      Minutes: 0
      Seconds: 0
      TotalDays: 7.46313541666667e-06
      TotalHours: 0.00017911525
      TotalMilliseconds: 644.8149
      TotalMinutes: 0.010746915
      TotalSeconds: 0.6448149
    RelativeSpeed: 3.84738389351203
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      FileName: How Much Faster Is Splatting
      TotalMilliseconds: 644.814999999999
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      AverageTime: 
        Ticks: 6297
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 7.28819444444444e-09
        TotalHours: 1.74916666666667e-07
        TotalMilliseconds: 0.6297
        TotalMinutes: 1.0495e-05
        TotalSeconds: 0.0006297
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
      SlowestTime: 
        Ticks: 57154
        Days: 0
        Hours: 0
        Milliseconds: 5
        Minutes: 0
        Seconds: 0
        TotalDays: 6.6150462962963e-08
        TotalHours: 1.58761111111111e-06
        TotalMilliseconds: 5.7154
        TotalMinutes: 9.52566666666667e-05
        TotalSeconds: 0.0057154
      TotalTime: 
        Ticks: 6448149
        Days: 0
        Hours: 0
        Milliseconds: 644
        Minutes: 0
        Seconds: 0
        TotalDays: 7.46313541666667e-06
        TotalHours: 0.00017911525
        TotalMilliseconds: 644.8149
        TotalMinutes: 0.010746915
        TotalSeconds: 0.6448149
      FastestTime: 
        Ticks: 6056
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 7.00925925925926e-09
        TotalHours: 1.68222222222222e-07
        TotalMilliseconds: 0.6056
        TotalMinutes: 1.00933333333333e-05
        TotalSeconds: 0.0006056
      RepeatCount: 1024
    RepeatCount: 1024
    Throughput: 1588.05263339914
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
FileName: How Much Faster Is Splatting
ClockSpeed: 2594
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Splatting |1024       |00:00:00.167598|1x           |6109.85/s |
|Named     |1024       |00:00:00.172583|1.03x        |5933.35/s |
|Piped     |1024       |00:00:00.182887|1.09x        |5599.08/s |
|Positional|1024       |00:00:00.644814|3.85x        |1588.05/s |
