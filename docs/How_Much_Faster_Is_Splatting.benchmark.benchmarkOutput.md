---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 1546334
      Days: 0
      Hours: 0
      Milliseconds: 154
      Minutes: 0
      Seconds: 0
      TotalDays: 1.78973842592593e-06
      TotalHours: 4.29537222222222e-05
      TotalMilliseconds: 154.6334
      TotalMinutes: 0.00257722333333333
      TotalSeconds: 0.1546334
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member @splat 
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
      TotalMilliseconds: 154.6335
      AverageTime: 
        Ticks: 1510
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.74768518518519e-09
        TotalHours: 4.19444444444444e-08
        TotalMilliseconds: 0.151
        TotalMinutes: 2.51666666666667e-06
        TotalSeconds: 0.000151
      GroupName: 
      Command: |
        
                Add-Member @splat 
            
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1231
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.42476851851852e-09
        TotalHours: 3.41944444444444e-08
        TotalMilliseconds: 0.1231
        TotalMinutes: 2.05166666666667e-06
        TotalSeconds: 0.0001231
      TotalTime: 
        Ticks: 1546334
        Days: 0
        Hours: 0
        Milliseconds: 154
        Minutes: 0
        Seconds: 0
        TotalDays: 1.78973842592593e-06
        TotalHours: 4.29537222222222e-05
        TotalMilliseconds: 154.6334
        TotalMinutes: 0.00257722333333333
        TotalSeconds: 0.1546334
      RepeatCount: 1024
      SlowestTime: 
        Ticks: 18360
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 2.125e-08
        TotalHours: 5.1e-07
        TotalMilliseconds: 1.836
        TotalMinutes: 3.06e-05
        TotalSeconds: 0.001836
    RepeatCount: 1024
    Throughput: 6622.11398055013
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
  - Technique: Named
    Time: 
      Ticks: 1628897
      Days: 0
      Hours: 0
      Milliseconds: 162
      Minutes: 0
      Seconds: 0
      TotalDays: 1.8852974537037e-06
      TotalHours: 4.52471388888889e-05
      TotalMilliseconds: 162.8897
      TotalMinutes: 0.00271482833333333
      TotalSeconds: 0.1628897
    RelativeSpeed: 1.05339205282167
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
      TotalMilliseconds: 162.8897
      AverageTime: 
        Ticks: 1590
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.84027777777778e-09
        TotalHours: 4.41666666666667e-08
        TotalMilliseconds: 0.159
        TotalMinutes: 2.65e-06
        TotalSeconds: 0.000159
      GroupName: 
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1295
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.49884259259259e-09
        TotalHours: 3.59722222222222e-08
        TotalMilliseconds: 0.1295
        TotalMinutes: 2.15833333333333e-06
        TotalSeconds: 0.0001295
      TotalTime: 
        Ticks: 1628897
        Days: 0
        Hours: 0
        Milliseconds: 162
        Minutes: 0
        Seconds: 0
        TotalDays: 1.8852974537037e-06
        TotalHours: 4.52471388888889e-05
        TotalMilliseconds: 162.8897
        TotalMinutes: 0.00271482833333333
        TotalSeconds: 0.1628897
      RepeatCount: 1024
      SlowestTime: 
        Ticks: 26194
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 3.03171296296296e-08
        TotalHours: 7.27611111111111e-07
        TotalMilliseconds: 2.6194
        TotalMinutes: 4.36566666666667e-05
        TotalSeconds: 0.0026194
    RepeatCount: 1024
    Throughput: 6286.46255717826
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
  - Technique: Piped
    Time: 
      Ticks: 1723569
      Days: 0
      Hours: 0
      Milliseconds: 172
      Minutes: 0
      Seconds: 0
      TotalDays: 1.99487152777778e-06
      TotalHours: 4.78769166666667e-05
      TotalMilliseconds: 172.3569
      TotalMinutes: 0.002872615
      TotalSeconds: 0.1723569
    RelativeSpeed: 1.11461617308022
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
      TotalMilliseconds: 172.357
      AverageTime: 
        Ticks: 1683
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.94791666666667e-09
        TotalHours: 4.675e-08
        TotalMilliseconds: 0.1683
        TotalMinutes: 2.805e-06
        TotalSeconds: 0.0001683
      GroupName: 
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1366
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.58101851851852e-09
        TotalHours: 3.79444444444444e-08
        TotalMilliseconds: 0.1366
        TotalMinutes: 2.27666666666667e-06
        TotalSeconds: 0.0001366
      TotalTime: 
        Ticks: 1723569
        Days: 0
        Hours: 0
        Milliseconds: 172
        Minutes: 0
        Seconds: 0
        TotalDays: 1.99487152777778e-06
        TotalHours: 4.78769166666667e-05
        TotalMilliseconds: 172.3569
        TotalMinutes: 0.002872615
        TotalSeconds: 0.1723569
      RepeatCount: 1024
      SlowestTime: 
        Ticks: 22785
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.63715277777778e-08
        TotalHours: 6.32916666666667e-07
        TotalMilliseconds: 2.2785
        TotalMinutes: 3.7975e-05
        TotalSeconds: 0.0022785
    RepeatCount: 1024
    Throughput: 5941.16046412995
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
  - Technique: Positional
    Time: 
      Ticks: 5932280
      Days: 0
      Hours: 0
      Milliseconds: 593
      Minutes: 0
      Seconds: 0
      TotalDays: 6.86606481481482e-06
      TotalHours: 0.000164785555555556
      TotalMilliseconds: 593.228
      TotalMinutes: 0.00988713333333333
      TotalSeconds: 0.593228
    RelativeSpeed: 3.83634852732429
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
      TotalMilliseconds: 593.228
      AverageTime: 
        Ticks: 5793
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.70486111111111e-09
        TotalHours: 1.60916666666667e-07
        TotalMilliseconds: 0.5793
        TotalMinutes: 9.655e-06
        TotalSeconds: 0.0005793
      GroupName: 
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 5060
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 5.85648148148148e-09
        TotalHours: 1.40555555555556e-07
        TotalMilliseconds: 0.506
        TotalMinutes: 8.43333333333333e-06
        TotalSeconds: 0.000506
      TotalTime: 
        Ticks: 5932280
        Days: 0
        Hours: 0
        Milliseconds: 593
        Minutes: 0
        Seconds: 0
        TotalDays: 6.86606481481482e-06
        TotalHours: 0.000164785555555556
        TotalMilliseconds: 593.228
        TotalMinutes: 0.00988713333333333
        TotalSeconds: 0.593228
      RepeatCount: 1024
      SlowestTime: 
        Ticks: 22081
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.5556712962963e-08
        TotalHours: 6.13361111111111e-07
        TotalMilliseconds: 2.2081
        TotalMinutes: 3.68016666666667e-05
        TotalSeconds: 0.0022081
    RepeatCount: 1024
    Throughput: 1726.14913658829
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
FileName: How Much Faster Is Splatting
ClockSpeed: 2095
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Splatting |1024       |00:00:00.154633|1x           |6622.11/s |
|Named     |1024       |00:00:00.162889|1.05x        |6286.46/s |
|Piped     |1024       |00:00:00.172356|1.11x        |5941.16/s |
|Positional|1024       |00:00:00.593228|3.84x        |1726.15/s |
