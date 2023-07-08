---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 2719815
      Days: 0
      Hours: 0
      Milliseconds: 271
      Minutes: 0
      Seconds: 0
      TotalDays: 3.14793402777778e-06
      TotalHours: 7.55504166666667e-05
      TotalMilliseconds: 271.9815
      TotalMinutes: 0.004533025
      TotalSeconds: 0.2719815
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      SlowestTime: 
        Ticks: 119261
        Days: 0
        Hours: 0
        Milliseconds: 11
        Minutes: 0
        Seconds: 0
        TotalDays: 1.38033564814815e-07
        TotalHours: 3.31280555555556e-06
        TotalMilliseconds: 11.9261
        TotalMinutes: 0.000198768333333333
        TotalSeconds: 0.0119261
      AverageTime: 
        Ticks: 2656
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.07407407407407e-09
        TotalHours: 7.37777777777778e-08
        TotalMilliseconds: 0.2656
        TotalMinutes: 4.42666666666667e-06
        TotalSeconds: 0.0002656
      TotalMilliseconds: 271.9816
      TotalTime: 
        Ticks: 2719815
        Days: 0
        Hours: 0
        Milliseconds: 271
        Minutes: 0
        Seconds: 0
        TotalDays: 3.14793402777778e-06
        TotalHours: 7.55504166666667e-05
        TotalMilliseconds: 271.9815
        TotalMinutes: 0.004533025
        TotalSeconds: 0.2719815
      FastestTime: 
        Ticks: 2194
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.53935185185185e-09
        TotalHours: 6.09444444444444e-08
        TotalMilliseconds: 0.2194
        TotalMinutes: 3.65666666666667e-06
        TotalSeconds: 0.0002194
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member @splat 
              
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      GroupName: 
      Command: |
        
                Add-Member @splat 
            
    RepeatCount: 1024
    Throughput: 3764.96195513298
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
  - Technique: Named
    Time: 
      Ticks: 2940697
      Days: 0
      Hours: 0
      Milliseconds: 294
      Minutes: 0
      Seconds: 0
      TotalDays: 3.40358449074074e-06
      TotalHours: 8.16860277777778e-05
      TotalMilliseconds: 294.0697
      TotalMinutes: 0.00490116166666667
      TotalSeconds: 0.2940697
    RelativeSpeed: 1.08121174373561
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      SlowestTime: 
        Ticks: 117888
        Days: 0
        Hours: 0
        Milliseconds: 11
        Minutes: 0
        Seconds: 0
        TotalDays: 1.36444444444444e-07
        TotalHours: 3.27466666666667e-06
        TotalMilliseconds: 11.7888
        TotalMinutes: 0.00019648
        TotalSeconds: 0.0117888
      AverageTime: 
        Ticks: 2871
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.32291666666667e-09
        TotalHours: 7.975e-08
        TotalMilliseconds: 0.2871
        TotalMinutes: 4.785e-06
        TotalSeconds: 0.0002871
      TotalMilliseconds: 294.0697
      TotalTime: 
        Ticks: 2940697
        Days: 0
        Hours: 0
        Milliseconds: 294
        Minutes: 0
        Seconds: 0
        TotalDays: 3.40358449074074e-06
        TotalHours: 8.16860277777778e-05
        TotalMilliseconds: 294.0697
        TotalMinutes: 0.00490116166666667
        TotalSeconds: 0.2940697
      FastestTime: 
        Ticks: 2206
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.55324074074074e-09
        TotalHours: 6.12777777777778e-08
        TotalMilliseconds: 0.2206
        TotalMinutes: 3.67666666666667e-06
        TotalSeconds: 0.0002206
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      GroupName: 
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
    RepeatCount: 1024
    Throughput: 3482.16766297242
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
  - Technique: Piped
    Time: 
      Ticks: 3093841
      Days: 0
      Hours: 0
      Milliseconds: 309
      Minutes: 0
      Seconds: 0
      TotalDays: 3.58083449074074e-06
      TotalHours: 8.59400277777778e-05
      TotalMilliseconds: 309.3841
      TotalMinutes: 0.00515640166666667
      TotalSeconds: 0.3093841
    RelativeSpeed: 1.13751849389812
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      SlowestTime: 
        Ticks: 126532
        Days: 0
        Hours: 0
        Milliseconds: 12
        Minutes: 0
        Seconds: 0
        TotalDays: 1.46449074074074e-07
        TotalHours: 3.51477777777778e-06
        TotalMilliseconds: 12.6532
        TotalMinutes: 0.000210886666666667
        TotalSeconds: 0.0126532
      AverageTime: 
        Ticks: 3021
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.49652777777778e-09
        TotalHours: 8.39166666666667e-08
        TotalMilliseconds: 0.3021
        TotalMinutes: 5.035e-06
        TotalSeconds: 0.0003021
      TotalMilliseconds: 309.3841
      TotalTime: 
        Ticks: 3093841
        Days: 0
        Hours: 0
        Milliseconds: 309
        Minutes: 0
        Seconds: 0
        TotalDays: 3.58083449074074e-06
        TotalHours: 8.59400277777778e-05
        TotalMilliseconds: 309.3841
        TotalMinutes: 0.00515640166666667
        TotalSeconds: 0.3093841
      FastestTime: 
        Ticks: 2286
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.64583333333333e-09
        TotalHours: 6.35e-08
        TotalMilliseconds: 0.2286
        TotalMinutes: 3.81e-06
        TotalSeconds: 0.0002286
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      GroupName: 
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
    RepeatCount: 1024
    Throughput: 3309.80163492565
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
  - Technique: Positional
    Time: 
      Ticks: 9834355
      Days: 0
      Hours: 0
      Milliseconds: 983
      Minutes: 0
      Seconds: 0
      TotalDays: 1.13823553240741e-05
      TotalHours: 0.000273176527777778
      TotalMilliseconds: 983.4355
      TotalMinutes: 0.0163905916666667
      TotalSeconds: 0.9834355
    RelativeSpeed: 3.61581629051378
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      SlowestTime: 
        Ticks: 133796
        Days: 0
        Hours: 0
        Milliseconds: 13
        Minutes: 0
        Seconds: 0
        TotalDays: 1.54856481481481e-07
        TotalHours: 3.71655555555556e-06
        TotalMilliseconds: 13.3796
        TotalMinutes: 0.000222993333333333
        TotalSeconds: 0.0133796
      AverageTime: 
        Ticks: 9603
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.11145833333333e-08
        TotalHours: 2.6675e-07
        TotalMilliseconds: 0.9603
        TotalMinutes: 1.6005e-05
        TotalSeconds: 0.0009603
      TotalMilliseconds: 983.435500000002
      TotalTime: 
        Ticks: 9834355
        Days: 0
        Hours: 0
        Milliseconds: 983
        Minutes: 0
        Seconds: 0
        TotalDays: 1.13823553240741e-05
        TotalHours: 0.000273176527777778
        TotalMilliseconds: 983.4355
        TotalMinutes: 0.0163905916666667
        TotalSeconds: 0.9834355
      FastestTime: 
        Ticks: 7425
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 8.59375e-09
        TotalHours: 2.0625e-07
        TotalMilliseconds: 0.7425
        TotalMinutes: 1.2375e-05
        TotalSeconds: 0.0007425
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      GroupName: 
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
    RepeatCount: 1024
    Throughput: 1041.24774832717
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
FileName: How Much Faster Is Splatting
ClockSpeed: 2295
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Splatting |1024       |00:00:00.271981|1x           |3764.96/s |
|Named     |1024       |00:00:00.294069|1.08x        |3482.17/s |
|Piped     |1024       |00:00:00.309384|1.14x        |3309.8/s  |
|Positional|1024       |00:00:00.983435|3.62x        |1041.25/s |
