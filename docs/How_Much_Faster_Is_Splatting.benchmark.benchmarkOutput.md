---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 1561351
      Days: 0
      Hours: 0
      Milliseconds: 156
      Minutes: 0
      Seconds: 0
      TotalDays: 1.80711921296296e-06
      TotalHours: 4.33708611111111e-05
      TotalMilliseconds: 156.1351
      TotalMinutes: 0.00260225166666667
      TotalSeconds: 0.1561351
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      FileName: How Much Faster Is Splatting
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
        ScriptBlock: |
          
                  Add-Member @splat 
              
        FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 1561351
        Days: 0
        Hours: 0
        Milliseconds: 156
        Minutes: 0
        Seconds: 0
        TotalDays: 1.80711921296296e-06
        TotalHours: 4.33708611111111e-05
        TotalMilliseconds: 156.1351
        TotalMinutes: 0.00260225166666667
        TotalSeconds: 0.1561351
      GroupName: 
      RepeatCount: 1024
      TotalMilliseconds: 156.1352
      FastestTime: 
        Ticks: 1453
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.68171296296296e-09
        TotalHours: 4.03611111111111e-08
        TotalMilliseconds: 0.1453
        TotalMinutes: 2.42166666666667e-06
        TotalSeconds: 0.0001453
      AverageTime: 
        Ticks: 1524
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.76388888888889e-09
        TotalHours: 4.23333333333333e-08
        TotalMilliseconds: 0.1524
        TotalMinutes: 2.54e-06
        TotalSeconds: 0.0001524
      SlowestTime: 
        Ticks: 22146
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 2.56319444444444e-08
        TotalHours: 6.15166666666667e-07
        TotalMilliseconds: 2.2146
        TotalMinutes: 3.691e-05
        TotalSeconds: 0.0022146
      Command: |
        
                Add-Member @splat 
            
    Throughput: 6558.42280179153
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Named
    Time: 
      Ticks: 1605765
      Days: 0
      Hours: 0
      Milliseconds: 160
      Minutes: 0
      Seconds: 0
      TotalDays: 1.85852430555556e-06
      TotalHours: 4.46045833333333e-05
      TotalMilliseconds: 160.5765
      TotalMinutes: 0.002676275
      TotalSeconds: 0.1605765
    RelativeSpeed: 1.02844585974207
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      FileName: How Much Faster Is Splatting
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 1605765
        Days: 0
        Hours: 0
        Milliseconds: 160
        Minutes: 0
        Seconds: 0
        TotalDays: 1.85852430555556e-06
        TotalHours: 4.46045833333333e-05
        TotalMilliseconds: 160.5765
        TotalMinutes: 0.002676275
        TotalSeconds: 0.1605765
      GroupName: 
      RepeatCount: 1024
      TotalMilliseconds: 160.5766
      FastestTime: 
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
      AverageTime: 
        Ticks: 1568
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.81481481481481e-09
        TotalHours: 4.35555555555556e-08
        TotalMilliseconds: 0.1568
        TotalMinutes: 2.61333333333333e-06
        TotalSeconds: 0.0001568
      SlowestTime: 
        Ticks: 4707
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 5.44791666666667e-09
        TotalHours: 1.3075e-07
        TotalMilliseconds: 0.4707
        TotalMinutes: 7.845e-06
        TotalSeconds: 0.0004707
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
    Throughput: 6377.02278976064
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Piped
    Time: 
      Ticks: 1729021
      Days: 0
      Hours: 0
      Milliseconds: 172
      Minutes: 0
      Seconds: 0
      TotalDays: 2.00118171296296e-06
      TotalHours: 4.80283611111111e-05
      TotalMilliseconds: 172.9021
      TotalMinutes: 0.00288170166666667
      TotalSeconds: 0.1729021
    RelativeSpeed: 1.10738769989086
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      FileName: How Much Faster Is Splatting
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 1729021
        Days: 0
        Hours: 0
        Milliseconds: 172
        Minutes: 0
        Seconds: 0
        TotalDays: 2.00118171296296e-06
        TotalHours: 4.80283611111111e-05
        TotalMilliseconds: 172.9021
        TotalMinutes: 0.00288170166666667
        TotalSeconds: 0.1729021
      GroupName: 
      RepeatCount: 1024
      TotalMilliseconds: 172.9022
      FastestTime: 
        Ticks: 1593
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.84375e-09
        TotalHours: 4.425e-08
        TotalMilliseconds: 0.1593
        TotalMinutes: 2.655e-06
        TotalSeconds: 0.0001593
      AverageTime: 
        Ticks: 1688
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.9537037037037e-09
        TotalHours: 4.68888888888889e-08
        TotalMilliseconds: 0.1688
        TotalMinutes: 2.81333333333333e-06
        TotalSeconds: 0.0001688
      SlowestTime: 
        Ticks: 19101
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 2.21076388888889e-08
        TotalHours: 5.30583333333333e-07
        TotalMilliseconds: 1.9101
        TotalMinutes: 3.1835e-05
        TotalSeconds: 0.0019101
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
    Throughput: 5922.42662177035
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Positional
    Time: 
      Ticks: 5825714
      Days: 0
      Hours: 0
      Milliseconds: 582
      Minutes: 0
      Seconds: 0
      TotalDays: 6.74272453703704e-06
      TotalHours: 0.000161825388888889
      TotalMilliseconds: 582.5714
      TotalMinutes: 0.00970952333333333
      TotalSeconds: 0.5825714
    RelativeSpeed: 3.73119834604881
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: 
      FileName: How Much Faster Is Splatting
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        RepeatCount: 1024
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 5825714
        Days: 0
        Hours: 0
        Milliseconds: 582
        Minutes: 0
        Seconds: 0
        TotalDays: 6.74272453703704e-06
        TotalHours: 0.000161825388888889
        TotalMilliseconds: 582.5714
        TotalMinutes: 0.00970952333333333
        TotalSeconds: 0.5825714
      GroupName: 
      RepeatCount: 1024
      TotalMilliseconds: 582.5714
      FastestTime: 
        Ticks: 5473
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.33449074074074e-09
        TotalHours: 1.52027777777778e-07
        TotalMilliseconds: 0.5473
        TotalMinutes: 9.12166666666667e-06
        TotalSeconds: 0.0005473
      AverageTime: 
        Ticks: 5689
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 6.58449074074074e-09
        TotalHours: 1.58027777777778e-07
        TotalMilliseconds: 0.5689
        TotalMinutes: 9.48166666666667e-06
        TotalSeconds: 0.0005689
      SlowestTime: 
        Ticks: 59657
        Days: 0
        Hours: 0
        Milliseconds: 5
        Minutes: 0
        Seconds: 0
        TotalDays: 6.90474537037037e-08
        TotalHours: 1.65713888888889e-06
        TotalMilliseconds: 5.9657
        TotalMinutes: 9.94283333333333e-05
        TotalSeconds: 0.0059657
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
    Throughput: 1757.7244608987
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
FileName: How Much Faster Is Splatting
ClockSpeed: 2793
---
How Much Faster Is Splatting
----------------------------
> @2793 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Splatting |00:00:00.156135|1x           |6558.42/s |
|Named     |00:00:00.160576|1.03x        |6377.02/s |
|Piped     |00:00:00.172902|1.11x        |5922.43/s |
|Positional|00:00:00.582571|3.73x        |1757.72/s |
