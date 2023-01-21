---
layout: Benchmark

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 1614306
      Days: 0
      Hours: 0
      Milliseconds: 161
      Minutes: 0
      Seconds: 0
      TotalDays: 1.86840972222222e-06
      TotalHours: 4.48418333333333e-05
      TotalMilliseconds: 161.4306
      TotalMinutes: 0.00269051
      TotalSeconds: 0.1614306
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      AverageTime: 
        Ticks: 1576
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.82407407407407e-09
        TotalHours: 4.37777777777778e-08
        TotalMilliseconds: 0.1576
        TotalMinutes: 2.62666666666667e-06
        TotalSeconds: 0.0001576
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member @splat 
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      GroupName: 
      TotalTime: 
        Ticks: 1614306
        Days: 0
        Hours: 0
        Milliseconds: 161
        Minutes: 0
        Seconds: 0
        TotalDays: 1.86840972222222e-06
        TotalHours: 4.48418333333333e-05
        TotalMilliseconds: 161.4306
        TotalMinutes: 0.00269051
        TotalSeconds: 0.1614306
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      TotalMilliseconds: 161.4307
      SlowestTime: 
        Ticks: 28690
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 3.32060185185185e-08
        TotalHours: 7.96944444444444e-07
        TotalMilliseconds: 2.869
        TotalMinutes: 4.78166666666667e-05
        TotalSeconds: 0.002869
      Command: |
        
                Add-Member @splat 
            
      FastestTime: 
        Ticks: 1468
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.69907407407407e-09
        TotalHours: 4.07777777777778e-08
        TotalMilliseconds: 0.1468
        TotalMinutes: 2.44666666666667e-06
        TotalSeconds: 0.0001468
    Throughput: 6343.28311980504
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Named
    Time: 
      Ticks: 1632277
      Days: 0
      Hours: 0
      Milliseconds: 163
      Minutes: 0
      Seconds: 0
      TotalDays: 1.88920949074074e-06
      TotalHours: 4.53410277777778e-05
      TotalMilliseconds: 163.2277
      TotalMinutes: 0.00272046166666667
      TotalSeconds: 0.1632277
    RelativeSpeed: 1.01113233108696
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      AverageTime: 
        Ticks: 1594
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.84490740740741e-09
        TotalHours: 4.42777777777778e-08
        TotalMilliseconds: 0.1594
        TotalMinutes: 2.65666666666667e-06
        TotalSeconds: 0.0001594
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      GroupName: 
      TotalTime: 
        Ticks: 1632277
        Days: 0
        Hours: 0
        Milliseconds: 163
        Minutes: 0
        Seconds: 0
        TotalDays: 1.88920949074074e-06
        TotalHours: 4.53410277777778e-05
        TotalMilliseconds: 163.2277
        TotalMinutes: 0.00272046166666667
        TotalSeconds: 0.1632277
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      TotalMilliseconds: 163.2278
      SlowestTime: 
        Ticks: 32926
        Days: 0
        Hours: 0
        Milliseconds: 3
        Minutes: 0
        Seconds: 0
        TotalDays: 3.81087962962963e-08
        TotalHours: 9.14611111111111e-07
        TotalMilliseconds: 3.2926
        TotalMinutes: 5.48766666666667e-05
        TotalSeconds: 0.0032926
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      FastestTime: 
        Ticks: 1507
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.74421296296296e-09
        TotalHours: 4.18611111111111e-08
        TotalMilliseconds: 0.1507
        TotalMinutes: 2.51166666666667e-06
        TotalSeconds: 0.0001507
    Throughput: 6273.44500963991
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Piped
    Time: 
      Ticks: 1800422
      Days: 0
      Hours: 0
      Milliseconds: 180
      Minutes: 0
      Seconds: 0
      TotalDays: 2.08382175925926e-06
      TotalHours: 5.00117222222222e-05
      TotalMilliseconds: 180.0422
      TotalMinutes: 0.00300070333333333
      TotalSeconds: 0.1800422
    RelativeSpeed: 1.11529157712876
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      AverageTime: 
        Ticks: 1758
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.03472222222222e-09
        TotalHours: 4.88333333333333e-08
        TotalMilliseconds: 0.1758
        TotalMinutes: 2.93e-06
        TotalSeconds: 0.0001758
      BenchmarkInput: 
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      GroupName: 
      TotalTime: 
        Ticks: 1800422
        Days: 0
        Hours: 0
        Milliseconds: 180
        Minutes: 0
        Seconds: 0
        TotalDays: 2.08382175925926e-06
        TotalHours: 5.00117222222222e-05
        TotalMilliseconds: 180.0422
        TotalMinutes: 0.00300070333333333
        TotalSeconds: 0.1800422
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      TotalMilliseconds: 180.0423
      SlowestTime: 
        Ticks: 79700
        Days: 0
        Hours: 0
        Milliseconds: 7
        Minutes: 0
        Seconds: 0
        TotalDays: 9.22453703703704e-08
        TotalHours: 2.21388888888889e-06
        TotalMilliseconds: 7.97
        TotalMinutes: 0.000132833333333333
        TotalSeconds: 0.00797
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      FastestTime: 
        Ticks: 1595
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.84606481481481e-09
        TotalHours: 4.43055555555556e-08
        TotalMilliseconds: 0.1595
        TotalMinutes: 2.65833333333333e-06
        TotalSeconds: 0.0001595
    Throughput: 5687.55547310575
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Positional
    Time: 
      Ticks: 5735431
      Days: 0
      Hours: 0
      Milliseconds: 573
      Minutes: 0
      Seconds: 0
      TotalDays: 6.63823032407407e-06
      TotalHours: 0.000159317527777778
      TotalMilliseconds: 573.5431
      TotalMinutes: 0.00955905166666667
      TotalSeconds: 0.5735431
    RelativeSpeed: 3.55287563022399
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      AverageTime: 
        Ticks: 5601
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.48263888888889e-09
        TotalHours: 1.55583333333333e-07
        TotalMilliseconds: 0.5601
        TotalMinutes: 9.335e-06
        TotalSeconds: 0.0005601
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      GroupName: 
      TotalTime: 
        Ticks: 5735431
        Days: 0
        Hours: 0
        Milliseconds: 573
        Minutes: 0
        Seconds: 0
        TotalDays: 6.63823032407407e-06
        TotalHours: 0.000159317527777778
        TotalMilliseconds: 573.5431
        TotalMinutes: 0.00955905166666667
        TotalSeconds: 0.5735431
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      TotalMilliseconds: 573.5432
      SlowestTime: 
        Ticks: 38373
        Days: 0
        Hours: 0
        Milliseconds: 3
        Minutes: 0
        Seconds: 0
        TotalDays: 4.44131944444444e-08
        TotalHours: 1.06591666666667e-06
        TotalMilliseconds: 3.8373
        TotalMinutes: 6.3955e-05
        TotalSeconds: 0.0038373
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      FastestTime: 
        Ticks: 5397
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.24652777777778e-09
        TotalHours: 1.49916666666667e-07
        TotalMilliseconds: 0.5397
        TotalMinutes: 8.995e-06
        TotalSeconds: 0.0005397
    Throughput: 1785.39328604947
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
FileName: How Much Faster Is Splatting
ClockSpeed: 2793
---
How Much Faster Is Splatting
----------------------------
> @2793 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Splatting |00:00:00.161430|1x           |6343.28/s |
|Named     |00:00:00.163227|1.01x        |6273.45/s |
|Piped     |00:00:00.180042|1.12x        |5687.56/s |
|Positional|00:00:00.573543|3.55x        |1785.39/s |
