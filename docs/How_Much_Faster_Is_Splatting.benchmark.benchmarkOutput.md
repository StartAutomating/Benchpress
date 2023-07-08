---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Named
    Time: 
      Ticks: 2547635
      Days: 0
      Hours: 0
      Milliseconds: 254
      Minutes: 0
      Seconds: 0
      TotalDays: 2.94865162037037e-06
      TotalHours: 7.07676388888889e-05
      TotalMilliseconds: 254.7635
      TotalMinutes: 0.00424605833333333
      TotalSeconds: 0.2547635
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1964
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.27314814814815e-09
        TotalHours: 5.45555555555556e-08
        TotalMilliseconds: 0.1964
        TotalMinutes: 3.27333333333333e-06
        TotalSeconds: 0.0001964
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      AverageTime: 
        Ticks: 2487
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.87847222222222e-09
        TotalHours: 6.90833333333333e-08
        TotalMilliseconds: 0.2487
        TotalMinutes: 4.145e-06
        TotalSeconds: 0.0002487
      GroupName: 
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 2547635
        Days: 0
        Hours: 0
        Milliseconds: 254
        Minutes: 0
        Seconds: 0
        TotalDays: 2.94865162037037e-06
        TotalHours: 7.07676388888889e-05
        TotalMilliseconds: 254.7635
        TotalMinutes: 0.00424605833333333
        TotalSeconds: 0.2547635
      RepeatCount: 1024
      SlowestTime: 
        Ticks: 36703
        Days: 0
        Hours: 0
        Milliseconds: 3
        Minutes: 0
        Seconds: 0
        TotalDays: 4.24803240740741e-08
        TotalHours: 1.01952777777778e-06
        TotalMilliseconds: 3.6703
        TotalMinutes: 6.11716666666667e-05
        TotalSeconds: 0.0036703
      TotalMilliseconds: 254.7636
    RepeatCount: 1024
    Throughput: 4019.41408404265
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Splatting
    Time: 
      Ticks: 2550083
      Days: 0
      Hours: 0
      Milliseconds: 255
      Minutes: 0
      Seconds: 0
      TotalDays: 2.9514849537037e-06
      TotalHours: 7.08356388888889e-05
      TotalMilliseconds: 255.0083
      TotalMinutes: 0.00425013833333333
      TotalSeconds: 0.2550083
    RelativeSpeed: 1.00096049828155
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member @splat 
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1965
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.27430555555556e-09
        TotalHours: 5.45833333333333e-08
        TotalMilliseconds: 0.1965
        TotalMinutes: 3.275e-06
        TotalSeconds: 0.0001965
      Command: |
        
                Add-Member @splat 
            
      AverageTime: 
        Ticks: 2490
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.88194444444444e-09
        TotalHours: 6.91666666666667e-08
        TotalMilliseconds: 0.249
        TotalMinutes: 4.15e-06
        TotalSeconds: 0.000249
      GroupName: 
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 2550083
        Days: 0
        Hours: 0
        Milliseconds: 255
        Minutes: 0
        Seconds: 0
        TotalDays: 2.9514849537037e-06
        TotalHours: 7.08356388888889e-05
        TotalMilliseconds: 255.0083
        TotalMinutes: 0.00425013833333333
        TotalSeconds: 0.2550083
      RepeatCount: 1024
      SlowestTime: 
        Ticks: 20412
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.3625e-08
        TotalHours: 5.67e-07
        TotalMilliseconds: 2.0412
        TotalMinutes: 3.402e-05
        TotalSeconds: 0.0020412
      TotalMilliseconds: 255.0083
    RepeatCount: 1024
    Throughput: 4015.55557211275
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Piped
    Time: 
      Ticks: 2632288
      Days: 0
      Hours: 0
      Milliseconds: 263
      Minutes: 0
      Seconds: 0
      TotalDays: 3.04662962962963e-06
      TotalHours: 7.31191111111111e-05
      TotalMilliseconds: 263.2288
      TotalMinutes: 0.00438714666666667
      TotalSeconds: 0.2632288
    RelativeSpeed: 1.03322766674674
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 2017
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.33449074074074e-09
        TotalHours: 5.60277777777778e-08
        TotalMilliseconds: 0.2017
        TotalMinutes: 3.36166666666667e-06
        TotalSeconds: 0.0002017
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      AverageTime: 
        Ticks: 2570
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.97453703703704e-09
        TotalHours: 7.13888888888889e-08
        TotalMilliseconds: 0.257
        TotalMinutes: 4.28333333333333e-06
        TotalSeconds: 0.000257
      GroupName: 
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 2632288
        Days: 0
        Hours: 0
        Milliseconds: 263
        Minutes: 0
        Seconds: 0
        TotalDays: 3.04662962962963e-06
        TotalHours: 7.31191111111111e-05
        TotalMilliseconds: 263.2288
        TotalMinutes: 0.00438714666666667
        TotalSeconds: 0.2632288
      RepeatCount: 1024
      SlowestTime: 
        Ticks: 22868
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.64675925925926e-08
        TotalHours: 6.35222222222222e-07
        TotalMilliseconds: 2.2868
        TotalMinutes: 3.81133333333333e-05
        TotalSeconds: 0.0022868
      TotalMilliseconds: 263.2288
    RepeatCount: 1024
    Throughput: 3890.15183748891
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Positional
    Time: 
      Ticks: 8861462
      Days: 0
      Hours: 0
      Milliseconds: 886
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02563217592593e-05
      TotalHours: 0.000246151722222222
      TotalMilliseconds: 886.1462
      TotalMinutes: 0.0147691033333333
      TotalSeconds: 0.8861462
    RelativeSpeed: 3.47830773312986
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 6861
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 7.94097222222222e-09
        TotalHours: 1.90583333333333e-07
        TotalMilliseconds: 0.6861
        TotalMinutes: 1.1435e-05
        TotalSeconds: 0.0006861
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      AverageTime: 
        Ticks: 8653
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.00150462962963e-08
        TotalHours: 2.40361111111111e-07
        TotalMilliseconds: 0.8653
        TotalMinutes: 1.44216666666667e-05
        TotalSeconds: 0.0008653
      GroupName: 
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 8861462
        Days: 0
        Hours: 0
        Milliseconds: 886
        Minutes: 0
        Seconds: 0
        TotalDays: 1.02563217592593e-05
        TotalHours: 0.000246151722222222
        TotalMilliseconds: 886.1462
        TotalMinutes: 0.0147691033333333
        TotalSeconds: 0.8861462
      RepeatCount: 1024
      SlowestTime: 
        Ticks: 55164
        Days: 0
        Hours: 0
        Milliseconds: 5
        Minutes: 0
        Seconds: 0
        TotalDays: 6.38472222222222e-08
        TotalHours: 1.53233333333333e-06
        TotalMilliseconds: 5.5164
        TotalMinutes: 9.194e-05
        TotalSeconds: 0.0055164
      TotalMilliseconds: 886.146200000001
    RepeatCount: 1024
    Throughput: 1155.5655263206
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
FileName: How Much Faster Is Splatting
ClockSpeed: 2295
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Named     |1024       |00:00:00.254763|1x           |4019.41/s |
|Splatting |1024       |00:00:00.255008|1x           |4015.56/s |
|Piped     |1024       |00:00:00.263228|1.03x        |3890.15/s |
|Positional|1024       |00:00:00.886146|3.48x        |1155.57/s |
