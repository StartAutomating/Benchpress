---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 2681489
      Days: 0
      Hours: 0
      Milliseconds: 268
      Minutes: 0
      Seconds: 0
      TotalDays: 3.10357523148148e-06
      TotalHours: 7.44858055555556e-05
      TotalMilliseconds: 268.1489
      TotalMinutes: 0.00446914833333333
      TotalSeconds: 0.2681489
    RelativeSpeed: 1
    ClockSpeed: 2397
    FileName: How Much Faster Is Splatting
    Details: 
      RepeatCount: 1024
      AverageTime: 
        Ticks: 2618
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.03009259259259e-09
        TotalHours: 7.27222222222222e-08
        TotalMilliseconds: 0.2618
        TotalMinutes: 4.36333333333333e-06
        TotalSeconds: 0.0002618
      FastestTime: 
        Ticks: 2390
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.7662037037037e-09
        TotalHours: 6.63888888888889e-08
        TotalMilliseconds: 0.239
        TotalMinutes: 3.98333333333333e-06
        TotalSeconds: 0.000239
      TotalMilliseconds: 268.149
      SlowestTime: 
        Ticks: 24032
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.78148148148148e-08
        TotalHours: 6.67555555555556e-07
        TotalMilliseconds: 2.4032
        TotalMinutes: 4.00533333333333e-05
        TotalSeconds: 0.0024032
      Command: |
        
                Add-Member @splat 
            
      TotalTime: 
        Ticks: 2681489
        Days: 0
        Hours: 0
        Milliseconds: 268
        Minutes: 0
        Seconds: 0
        TotalDays: 3.10357523148148e-06
        TotalHours: 7.44858055555556e-05
        TotalMilliseconds: 268.1489
        TotalMinutes: 0.00446914833333333
        TotalSeconds: 0.2681489
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member @splat 
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      FileName: How Much Faster Is Splatting
      GroupName: 
    Throughput: 3818.7738230513
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Named
    Time: 
      Ticks: 2690621
      Days: 0
      Hours: 0
      Milliseconds: 269
      Minutes: 0
      Seconds: 0
      TotalDays: 3.11414467592593e-06
      TotalHours: 7.47394722222222e-05
      TotalMilliseconds: 269.0621
      TotalMinutes: 0.00448436833333333
      TotalSeconds: 0.2690621
    RelativeSpeed: 1.00340519636471
    ClockSpeed: 2397
    FileName: How Much Faster Is Splatting
    Details: 
      RepeatCount: 1024
      AverageTime: 
        Ticks: 2627
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.04050925925926e-09
        TotalHours: 7.29722222222222e-08
        TotalMilliseconds: 0.2627
        TotalMinutes: 4.37833333333333e-06
        TotalSeconds: 0.0002627
      FastestTime: 
        Ticks: 2430
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.8125e-09
        TotalHours: 6.75e-08
        TotalMilliseconds: 0.243
        TotalMinutes: 4.05e-06
        TotalSeconds: 0.000243
      TotalMilliseconds: 269.0621
      SlowestTime: 
        Ticks: 20808
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.40833333333333e-08
        TotalHours: 5.78e-07
        TotalMilliseconds: 2.0808
        TotalMinutes: 3.468e-05
        TotalSeconds: 0.0020808
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      TotalTime: 
        Ticks: 2690621
        Days: 0
        Hours: 0
        Milliseconds: 269
        Minutes: 0
        Seconds: 0
        TotalDays: 3.11414467592593e-06
        TotalHours: 7.47394722222222e-05
        TotalMilliseconds: 269.0621
        TotalMinutes: 0.00448436833333333
        TotalSeconds: 0.2690621
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      FileName: How Much Faster Is Splatting
      GroupName: 
    Throughput: 3805.81285881586
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Piped
    Time: 
      Ticks: 2918237
      Days: 0
      Hours: 0
      Milliseconds: 291
      Minutes: 0
      Seconds: 0
      TotalDays: 3.37758912037037e-06
      TotalHours: 8.10621388888889e-05
      TotalMilliseconds: 291.8237
      TotalMinutes: 0.00486372833333333
      TotalSeconds: 0.2918237
    RelativeSpeed: 1.08828971952161
    ClockSpeed: 2397
    FileName: How Much Faster Is Splatting
    Details: 
      RepeatCount: 1024
      AverageTime: 
        Ticks: 2849
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.2974537037037e-09
        TotalHours: 7.91388888888889e-08
        TotalMilliseconds: 0.2849
        TotalMinutes: 4.74833333333333e-06
        TotalSeconds: 0.0002849
      FastestTime: 
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
      TotalMilliseconds: 291.8238
      SlowestTime: 
        Ticks: 36092
        Days: 0
        Hours: 0
        Milliseconds: 3
        Minutes: 0
        Seconds: 0
        TotalDays: 4.17731481481481e-08
        TotalHours: 1.00255555555556e-06
        TotalMilliseconds: 3.6092
        TotalMinutes: 6.01533333333333e-05
        TotalSeconds: 0.0036092
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      TotalTime: 
        Ticks: 2918237
        Days: 0
        Hours: 0
        Milliseconds: 291
        Minutes: 0
        Seconds: 0
        TotalDays: 3.37758912037037e-06
        TotalHours: 8.10621388888889e-05
        TotalMilliseconds: 291.8237
        TotalMinutes: 0.00486372833333333
        TotalSeconds: 0.2918237
      BenchmarkInput: 
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      FileName: How Much Faster Is Splatting
      GroupName: 
    Throughput: 3508.96791453196
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Positional
    Time: 
      Ticks: 9896844
      Days: 0
      Hours: 0
      Milliseconds: 989
      Minutes: 0
      Seconds: 0
      TotalDays: 1.14546805555556e-05
      TotalHours: 0.000274912333333333
      TotalMilliseconds: 989.6844
      TotalMinutes: 0.01649474
      TotalSeconds: 0.9896844
    RelativeSpeed: 3.69080026403231
    ClockSpeed: 2397
    FileName: How Much Faster Is Splatting
    Details: 
      RepeatCount: 1024
      AverageTime: 
        Ticks: 9664
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.11851851851852e-08
        TotalHours: 2.68444444444444e-07
        TotalMilliseconds: 0.9664
        TotalMinutes: 1.61066666666667e-05
        TotalSeconds: 0.0009664
      FastestTime: 
        Ticks: 8530
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 9.87268518518519e-09
        TotalHours: 2.36944444444444e-07
        TotalMilliseconds: 0.853
        TotalMinutes: 1.42166666666667e-05
        TotalSeconds: 0.000853
      TotalMilliseconds: 989.6844
      SlowestTime: 
        Ticks: 62807
        Days: 0
        Hours: 0
        Milliseconds: 6
        Minutes: 0
        Seconds: 0
        TotalDays: 7.2693287037037e-08
        TotalHours: 1.74463888888889e-06
        TotalMilliseconds: 6.2807
        TotalMinutes: 0.000104678333333333
        TotalSeconds: 0.0062807
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      TotalTime: 
        Ticks: 9896844
        Days: 0
        Hours: 0
        Milliseconds: 989
        Minutes: 0
        Seconds: 0
        TotalDays: 1.14546805555556e-05
        TotalHours: 0.000274912333333333
        TotalMilliseconds: 989.6844
        TotalMinutes: 0.01649474
        TotalSeconds: 0.9896844
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      FileName: How Much Faster Is Splatting
      GroupName: 
    Throughput: 1034.67327564221
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
FileName: How Much Faster Is Splatting
ClockSpeed: 2397
---


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Splatting |00:00:00.268148|1x           |3818.77/s |
|Named     |00:00:00.269062|1x           |3805.81/s |
|Piped     |00:00:00.291823|1.09x        |3508.97/s |
|Positional|00:00:00.989684|3.69x        |1034.67/s |
