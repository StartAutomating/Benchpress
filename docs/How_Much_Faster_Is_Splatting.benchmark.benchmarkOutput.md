---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 1710442
      Days: 0
      Hours: 0
      Milliseconds: 171
      Minutes: 0
      Seconds: 0
      TotalDays: 1.97967824074074e-06
      TotalHours: 4.75122777777778e-05
      TotalMilliseconds: 171.0442
      TotalMinutes: 0.00285073666666667
      TotalSeconds: 0.1710442
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      TotalMilliseconds: 171.0442
      RepeatCount: 1024
      GroupName: 
      FastestTime: 
        Ticks: 1540
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.78240740740741e-09
        TotalHours: 4.27777777777778e-08
        TotalMilliseconds: 0.154
        TotalMinutes: 2.56666666666667e-06
        TotalSeconds: 0.000154
      AverageTime: 
        Ticks: 1670
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.93287037037037e-09
        TotalHours: 4.63888888888889e-08
        TotalMilliseconds: 0.167
        TotalMinutes: 2.78333333333333e-06
        TotalSeconds: 0.000167
      Command: |
        
                Add-Member @splat 
            
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member @splat 
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 20822
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.4099537037037e-08
        TotalHours: 5.78388888888889e-07
        TotalMilliseconds: 2.0822
        TotalMinutes: 3.47033333333333e-05
        TotalSeconds: 0.0020822
      TotalTime: 
        Ticks: 1710442
        Days: 0
        Hours: 0
        Milliseconds: 171
        Minutes: 0
        Seconds: 0
        TotalDays: 1.97967824074074e-06
        TotalHours: 4.75122777777778e-05
        TotalMilliseconds: 171.0442
        TotalMinutes: 0.00285073666666667
        TotalSeconds: 0.1710442
    RepeatCount: 1024
    Throughput: 5986.75663951189
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
  - Technique: Named
    Time: 
      Ticks: 1802934
      Days: 0
      Hours: 0
      Milliseconds: 180
      Minutes: 0
      Seconds: 0
      TotalDays: 2.08672916666667e-06
      TotalHours: 5.00815e-05
      TotalMilliseconds: 180.2934
      TotalMinutes: 0.00300489
      TotalSeconds: 0.1802934
    RelativeSpeed: 1.05407549627523
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      TotalMilliseconds: 180.2935
      RepeatCount: 1024
      GroupName: 
      FastestTime: 
        Ticks: 1621
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.87615740740741e-09
        TotalHours: 4.50277777777778e-08
        TotalMilliseconds: 0.1621
        TotalMinutes: 2.70166666666667e-06
        TotalSeconds: 0.0001621
      AverageTime: 
        Ticks: 1760
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.03703703703704e-09
        TotalHours: 4.88888888888889e-08
        TotalMilliseconds: 0.176
        TotalMinutes: 2.93333333333333e-06
        TotalSeconds: 0.000176
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 29863
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 3.45636574074074e-08
        TotalHours: 8.29527777777778e-07
        TotalMilliseconds: 2.9863
        TotalMinutes: 4.97716666666667e-05
        TotalSeconds: 0.0029863
      TotalTime: 
        Ticks: 1802934
        Days: 0
        Hours: 0
        Milliseconds: 180
        Minutes: 0
        Seconds: 0
        TotalDays: 2.08672916666667e-06
        TotalHours: 5.00815e-05
        TotalMilliseconds: 180.2934
        TotalMinutes: 0.00300489
        TotalSeconds: 0.1802934
    RepeatCount: 1024
    Throughput: 5679.63109021184
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
  - Technique: Piped
    Time: 
      Ticks: 1836501
      Days: 0
      Hours: 0
      Milliseconds: 183
      Minutes: 0
      Seconds: 0
      TotalDays: 2.12557986111111e-06
      TotalHours: 5.10139166666667e-05
      TotalMilliseconds: 183.6501
      TotalMinutes: 0.003060835
      TotalSeconds: 0.1836501
    RelativeSpeed: 1.07369966359573
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      TotalMilliseconds: 183.6501
      RepeatCount: 1024
      GroupName: 
      FastestTime: 
        Ticks: 1703
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.97106481481482e-09
        TotalHours: 4.73055555555556e-08
        TotalMilliseconds: 0.1703
        TotalMinutes: 2.83833333333333e-06
        TotalSeconds: 0.0001703
      AverageTime: 
        Ticks: 1793
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.07523148148148e-09
        TotalHours: 4.98055555555556e-08
        TotalMilliseconds: 0.1793
        TotalMinutes: 2.98833333333333e-06
        TotalSeconds: 0.0001793
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 19305
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 2.234375e-08
        TotalHours: 5.3625e-07
        TotalMilliseconds: 1.9305
        TotalMinutes: 3.2175e-05
        TotalSeconds: 0.0019305
      TotalTime: 
        Ticks: 1836501
        Days: 0
        Hours: 0
        Milliseconds: 183
        Minutes: 0
        Seconds: 0
        TotalDays: 2.12557986111111e-06
        TotalHours: 5.10139166666667e-05
        TotalMilliseconds: 183.6501
        TotalMinutes: 0.003060835
        TotalSeconds: 0.1836501
    RepeatCount: 1024
    Throughput: 5575.82054134465
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
  - Technique: Positional
    Time: 
      Ticks: 6505535
      Days: 0
      Hours: 0
      Milliseconds: 650
      Minutes: 0
      Seconds: 0
      TotalDays: 7.52955439814815e-06
      TotalHours: 0.000180709305555556
      TotalMilliseconds: 650.5535
      TotalMinutes: 0.0108425583333333
      TotalSeconds: 0.6505535
    RelativeSpeed: 3.8034233256667
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      TotalMilliseconds: 650.5535
      RepeatCount: 1024
      GroupName: 
      FastestTime: 
        Ticks: 6120
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 7.08333333333333e-09
        TotalHours: 1.7e-07
        TotalMilliseconds: 0.612
        TotalMinutes: 1.02e-05
        TotalSeconds: 0.000612
      AverageTime: 
        Ticks: 6353
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 7.35300925925926e-09
        TotalHours: 1.76472222222222e-07
        TotalMilliseconds: 0.6353
        TotalMinutes: 1.05883333333333e-05
        TotalSeconds: 0.0006353
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 23276
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.69398148148148e-08
        TotalHours: 6.46555555555556e-07
        TotalMilliseconds: 2.3276
        TotalMinutes: 3.87933333333333e-05
        TotalSeconds: 0.0023276
      TotalTime: 
        Ticks: 6505535
        Days: 0
        Hours: 0
        Milliseconds: 650
        Minutes: 0
        Seconds: 0
        TotalDays: 7.52955439814815e-06
        TotalHours: 0.000180709305555556
        TotalMilliseconds: 650.5535
        TotalMinutes: 0.0108425583333333
        TotalSeconds: 0.6505535
    RepeatCount: 1024
    Throughput: 1574.04425616033
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
FileName: How Much Faster Is Splatting
ClockSpeed: 2594
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Splatting |1024       |00:00:00.171044|1x           |5986.76/s |
|Named     |1024       |00:00:00.180293|1.05x        |5679.63/s |
|Piped     |1024       |00:00:00.183650|1.07x        |5575.82/s |
|Positional|1024       |00:00:00.650553|3.8x         |1574.04/s |
