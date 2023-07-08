---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Named
    Time: 
      Ticks: 2792049
      Days: 0
      Hours: 0
      Milliseconds: 279
      Minutes: 0
      Seconds: 0
      TotalDays: 3.23153819444444e-06
      TotalHours: 7.75569166666667e-05
      TotalMilliseconds: 279.2049
      TotalMinutes: 0.004653415
      TotalSeconds: 0.2792049
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      TotalTime: 
        Ticks: 2792049
        Days: 0
        Hours: 0
        Milliseconds: 279
        Minutes: 0
        Seconds: 0
        TotalDays: 3.23153819444444e-06
        TotalHours: 7.75569166666667e-05
        TotalMilliseconds: 279.2049
        TotalMinutes: 0.004653415
        TotalSeconds: 0.2792049
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      FileName: How Much Faster Is Splatting
      AverageTime: 
        Ticks: 2726
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.15509259259259e-09
        TotalHours: 7.57222222222222e-08
        TotalMilliseconds: 0.2726
        TotalMinutes: 4.54333333333333e-06
        TotalSeconds: 0.0002726
      FastestTime: 
        Ticks: 2147
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.4849537037037e-09
        TotalHours: 5.96388888888889e-08
        TotalMilliseconds: 0.2147
        TotalMinutes: 3.57833333333333e-06
        TotalSeconds: 0.0002147
      TotalMilliseconds: 279.205
      GroupName: 
      RepeatCount: 1024
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 14049
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 1.62604166666667e-08
        TotalHours: 3.9025e-07
        TotalMilliseconds: 1.4049
        TotalMinutes: 2.3415e-05
        TotalSeconds: 0.0014049
    Throughput: 3667.55741034631
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Splatting
    Time: 
      Ticks: 2952634
      Days: 0
      Hours: 0
      Milliseconds: 295
      Minutes: 0
      Seconds: 0
      TotalDays: 3.41740046296296e-06
      TotalHours: 8.20176111111111e-05
      TotalMilliseconds: 295.2634
      TotalMinutes: 0.00492105666666667
      TotalSeconds: 0.2952634
    RelativeSpeed: 1.05751508748052
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      TotalTime: 
        Ticks: 2952634
        Days: 0
        Hours: 0
        Milliseconds: 295
        Minutes: 0
        Seconds: 0
        TotalDays: 3.41740046296296e-06
        TotalHours: 8.20176111111111e-05
        TotalMilliseconds: 295.2634
        TotalMinutes: 0.00492105666666667
        TotalSeconds: 0.2952634
      Command: |
        
                Add-Member @splat 
            
      FileName: How Much Faster Is Splatting
      AverageTime: 
        Ticks: 2883
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.33680555555556e-09
        TotalHours: 8.00833333333333e-08
        TotalMilliseconds: 0.2883
        TotalMinutes: 4.805e-06
        TotalSeconds: 0.0002883
      FastestTime: 
        Ticks: 1868
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.16203703703704e-09
        TotalHours: 5.18888888888889e-08
        TotalMilliseconds: 0.1868
        TotalMinutes: 3.11333333333333e-06
        TotalSeconds: 0.0001868
      TotalMilliseconds: 295.2635
      GroupName: 
      RepeatCount: 1024
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
        ScriptBlock: |
          
                  Add-Member @splat 
              
        FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 123029
        Days: 0
        Hours: 0
        Milliseconds: 12
        Minutes: 0
        Seconds: 0
        TotalDays: 1.42394675925926e-07
        TotalHours: 3.41747222222222e-06
        TotalMilliseconds: 12.3029
        TotalMinutes: 0.000205048333333333
        TotalSeconds: 0.0123029
    Throughput: 3468.08984791207
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Piped
    Time: 
      Ticks: 3009085
      Days: 0
      Hours: 0
      Milliseconds: 300
      Minutes: 0
      Seconds: 0
      TotalDays: 3.48273726851852e-06
      TotalHours: 8.35856944444444e-05
      TotalMilliseconds: 300.9085
      TotalMinutes: 0.00501514166666667
      TotalSeconds: 0.3009085
    RelativeSpeed: 1.07773320678355
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      TotalTime: 
        Ticks: 3009085
        Days: 0
        Hours: 0
        Milliseconds: 300
        Minutes: 0
        Seconds: 0
        TotalDays: 3.48273726851852e-06
        TotalHours: 8.35856944444444e-05
        TotalMilliseconds: 300.9085
        TotalMinutes: 0.00501514166666667
        TotalSeconds: 0.3009085
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      FileName: How Much Faster Is Splatting
      AverageTime: 
        Ticks: 2938
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.40046296296296e-09
        TotalHours: 8.16111111111111e-08
        TotalMilliseconds: 0.2938
        TotalMinutes: 4.89666666666667e-06
        TotalSeconds: 0.0002938
      FastestTime: 
        Ticks: 2118
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.45138888888889e-09
        TotalHours: 5.88333333333333e-08
        TotalMilliseconds: 0.2118
        TotalMinutes: 3.53e-06
        TotalSeconds: 0.0002118
      TotalMilliseconds: 300.9085
      GroupName: 
      RepeatCount: 1024
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 114265
        Days: 0
        Hours: 0
        Milliseconds: 11
        Minutes: 0
        Seconds: 0
        TotalDays: 1.32251157407407e-07
        TotalHours: 3.17402777777778e-06
        TotalMilliseconds: 11.4265
        TotalMinutes: 0.000190441666666667
        TotalSeconds: 0.0114265
    Throughput: 3403.0278307193
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Positional
    Time: 
      Ticks: 9912681
      Days: 0
      Hours: 0
      Milliseconds: 991
      Minutes: 0
      Seconds: 0
      TotalDays: 1.14730104166667e-05
      TotalHours: 0.00027535225
      TotalMilliseconds: 991.2681
      TotalMinutes: 0.016521135
      TotalSeconds: 0.9912681
    RelativeSpeed: 3.55032359735679
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      TotalTime: 
        Ticks: 9912681
        Days: 0
        Hours: 0
        Milliseconds: 991
        Minutes: 0
        Seconds: 0
        TotalDays: 1.14730104166667e-05
        TotalHours: 0.00027535225
        TotalMilliseconds: 991.2681
        TotalMinutes: 0.016521135
        TotalSeconds: 0.9912681
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      FileName: How Much Faster Is Splatting
      AverageTime: 
        Ticks: 9680
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.12037037037037e-08
        TotalHours: 2.68888888888889e-07
        TotalMilliseconds: 0.968
        TotalMinutes: 1.61333333333333e-05
        TotalSeconds: 0.000968
      FastestTime: 
        Ticks: 7176
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 8.30555555555555e-09
        TotalHours: 1.99333333333333e-07
        TotalMilliseconds: 0.7176
        TotalMinutes: 1.196e-05
        TotalSeconds: 0.0007176
      TotalMilliseconds: 991.268100000001
      GroupName: 
      RepeatCount: 1024
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 144830
        Days: 0
        Hours: 0
        Milliseconds: 14
        Minutes: 0
        Seconds: 0
        TotalDays: 1.67627314814815e-07
        TotalHours: 4.02305555555556e-06
        TotalMilliseconds: 14.483
        TotalMinutes: 0.000241383333333333
        TotalSeconds: 0.014483
    Throughput: 1033.02022934058
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
|Named     |00:00:00.279204|1x           |3667.56/s |
|Splatting |00:00:00.295263|1.06x        |3468.09/s |
|Piped     |00:00:00.300908|1.08x        |3403.03/s |
|Positional|00:00:00.991268|3.55x        |1033.02/s |
