---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 2000146
      Days: 0
      Hours: 0
      Milliseconds: 200
      Minutes: 0
      Seconds: 0
      TotalDays: 2.3149837962963e-06
      TotalHours: 5.55596111111111e-05
      TotalMilliseconds: 200.0146
      TotalMinutes: 0.00333357666666667
      TotalSeconds: 0.2000146
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      TotalTime: 
        Ticks: 2000146
        Days: 0
        Hours: 0
        Milliseconds: 200
        Minutes: 0
        Seconds: 0
        TotalDays: 2.3149837962963e-06
        TotalHours: 5.55596111111111e-05
        TotalMilliseconds: 200.0146
        TotalMinutes: 0.00333357666666667
        TotalSeconds: 0.2000146
      Command: |
        
                Add-Member @splat 
            
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member @splat 
              
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
      GroupName: 
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1830
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.11805555555556e-09
        TotalHours: 5.08333333333333e-08
        TotalMilliseconds: 0.183
        TotalMinutes: 3.05e-06
        TotalSeconds: 0.000183
      AverageTime: 
        Ticks: 1953
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.26041666666667e-09
        TotalHours: 5.425e-08
        TotalMilliseconds: 0.1953
        TotalMinutes: 3.255e-06
        TotalSeconds: 0.0001953
      SlowestTime: 
        Ticks: 18829
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 2.17928240740741e-08
        TotalHours: 5.23027777777778e-07
        TotalMilliseconds: 1.8829
        TotalMinutes: 3.13816666666667e-05
        TotalSeconds: 0.0018829
      RepeatCount: 1024
      TotalMilliseconds: 200.0147
    RepeatCount: 1024
    Throughput: 5119.62626728249
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Named
    Time: 
      Ticks: 2082940
      Days: 0
      Hours: 0
      Milliseconds: 208
      Minutes: 0
      Seconds: 0
      TotalDays: 2.41081018518519e-06
      TotalHours: 5.78594444444444e-05
      TotalMilliseconds: 208.294
      TotalMinutes: 0.00347156666666667
      TotalSeconds: 0.208294
    RelativeSpeed: 1.04139395754412
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      TotalTime: 
        Ticks: 2082940
        Days: 0
        Hours: 0
        Milliseconds: 208
        Minutes: 0
        Seconds: 0
        TotalDays: 2.41081018518519e-06
        TotalHours: 5.78594444444444e-05
        TotalMilliseconds: 208.294
        TotalMinutes: 0.00347156666666667
        TotalSeconds: 0.208294
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
      GroupName: 
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 1918
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.21990740740741e-09
        TotalHours: 5.32777777777778e-08
        TotalMilliseconds: 0.1918
        TotalMinutes: 3.19666666666667e-06
        TotalSeconds: 0.0001918
      AverageTime: 
        Ticks: 2034
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.35416666666667e-09
        TotalHours: 5.65e-08
        TotalMilliseconds: 0.2034
        TotalMinutes: 3.39e-06
        TotalSeconds: 0.0002034
      SlowestTime: 
        Ticks: 20172
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.33472222222222e-08
        TotalHours: 5.60333333333333e-07
        TotalMilliseconds: 2.0172
        TotalMinutes: 3.362e-05
        TotalSeconds: 0.0020172
      RepeatCount: 1024
      TotalMilliseconds: 208.2941
    RepeatCount: 1024
    Throughput: 4916.12816499755
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Piped
    Time: 
      Ticks: 2232581
      Days: 0
      Hours: 0
      Milliseconds: 223
      Minutes: 0
      Seconds: 0
      TotalDays: 2.58400578703704e-06
      TotalHours: 6.20161388888889e-05
      TotalMilliseconds: 223.2581
      TotalMinutes: 0.00372096833333333
      TotalSeconds: 0.2232581
    RelativeSpeed: 1.11620895864154
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      TotalTime: 
        Ticks: 2232581
        Days: 0
        Hours: 0
        Milliseconds: 223
        Minutes: 0
        Seconds: 0
        TotalDays: 2.58400578703704e-06
        TotalHours: 6.20161388888889e-05
        TotalMilliseconds: 223.2581
        TotalMinutes: 0.00372096833333333
        TotalSeconds: 0.2232581
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      BenchmarkInput: 
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
      GroupName: 
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 2027
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.34606481481481e-09
        TotalHours: 5.63055555555556e-08
        TotalMilliseconds: 0.2027
        TotalMinutes: 3.37833333333333e-06
        TotalSeconds: 0.0002027
      AverageTime: 
        Ticks: 2180
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.52314814814815e-09
        TotalHours: 6.05555555555556e-08
        TotalMilliseconds: 0.218
        TotalMinutes: 3.63333333333333e-06
        TotalSeconds: 0.000218
      SlowestTime: 
        Ticks: 23087
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.67210648148148e-08
        TotalHours: 6.41305555555556e-07
        TotalMilliseconds: 2.3087
        TotalMinutes: 3.84783333333333e-05
        TotalSeconds: 0.0023087
      RepeatCount: 1024
      TotalMilliseconds: 223.2582
    RepeatCount: 1024
    Throughput: 4586.61970159201
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Positional
    Time: 
      Ticks: 7692331
      Days: 0
      Hours: 0
      Milliseconds: 769
      Minutes: 0
      Seconds: 0
      TotalDays: 8.90316087962963e-06
      TotalHours: 0.000213675861111111
      TotalMilliseconds: 769.2331
      TotalMinutes: 0.0128205516666667
      TotalSeconds: 0.7692331
    RelativeSpeed: 3.84588332757542
    ClockSpeed: 2095
    FileName: How Much Faster Is Splatting
    Details: 
      TotalTime: 
        Ticks: 7692331
        Days: 0
        Hours: 0
        Milliseconds: 769
        Minutes: 0
        Seconds: 0
        TotalDays: 8.90316087962963e-06
        TotalHours: 0.000213675861111111
        TotalMilliseconds: 769.2331
        TotalMinutes: 0.0128205516666667
        TotalSeconds: 0.7692331
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        FileName: How Much Faster Is Splatting
      GroupName: 
      FileName: How Much Faster Is Splatting
      FastestTime: 
        Ticks: 7242
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 8.38194444444444e-09
        TotalHours: 2.01166666666667e-07
        TotalMilliseconds: 0.7242
        TotalMinutes: 1.207e-05
        TotalSeconds: 0.0007242
      AverageTime: 
        Ticks: 7512
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 8.69444444444445e-09
        TotalHours: 2.08666666666667e-07
        TotalMilliseconds: 0.7512
        TotalMinutes: 1.252e-05
        TotalSeconds: 0.0007512
      SlowestTime: 
        Ticks: 29609
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 3.42696759259259e-08
        TotalHours: 8.22472222222222e-07
        TotalMilliseconds: 2.9609
        TotalMinutes: 4.93483333333333e-05
        TotalSeconds: 0.0029609
      RepeatCount: 1024
      TotalMilliseconds: 769.233199999999
    RepeatCount: 1024
    Throughput: 1331.19596647622
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
FileName: How Much Faster Is Splatting
ClockSpeed: 2095
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Splatting |1024       |00:00:00.200014|1x           |5119.63/s |
|Named     |1024       |00:00:00.208294|1.04x        |4916.13/s |
|Piped     |1024       |00:00:00.223258|1.12x        |4586.62/s |
|Positional|1024       |00:00:00.769233|3.85x        |1331.2/s  |
