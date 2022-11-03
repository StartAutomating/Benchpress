---
layout: Benchmark

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 2562384
      Days: 0
      Hours: 0
      Milliseconds: 256
      Minutes: 0
      Seconds: 0
      TotalDays: 2.96572222222222e-06
      TotalHours: 7.11773333333333e-05
      TotalMilliseconds: 256.2384
      TotalMinutes: 0.00427064
      TotalSeconds: 0.2562384
    RelativeSpeed: 1
    ClockSpeed: 2394
    FileName: How Much Faster Is Splatting
    Details: 
      FileName: How Much Faster Is Splatting
      Command: |
        
                Add-Member @splat 
            
      TotalMilliseconds: 256.2384
      GroupName: 
      SlowestTime: 
        Ticks: 18051
        Days: 0
        Hours: 0
        Milliseconds: 1
        Minutes: 0
        Seconds: 0
        TotalDays: 2.08923611111111e-08
        TotalHours: 5.01416666666667e-07
        TotalMilliseconds: 1.8051
        TotalMinutes: 3.0085e-05
        TotalSeconds: 0.0018051
      RepeatCount: 1024
      TotalTime: 
        Ticks: 2562384
        Days: 0
        Hours: 0
        Milliseconds: 256
        Minutes: 0
        Seconds: 0
        TotalDays: 2.96572222222222e-06
        TotalHours: 7.11773333333333e-05
        TotalMilliseconds: 256.2384
        TotalMinutes: 0.00427064
        TotalSeconds: 0.2562384
      AverageTime: 
        Ticks: 2502
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.89583333333333e-09
        TotalHours: 6.95e-08
        TotalMilliseconds: 0.2502
        TotalMinutes: 4.17e-06
        TotalSeconds: 0.0002502
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member @splat 
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      FastestTime: 
        Ticks: 2093
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.4224537037037e-09
        TotalHours: 5.81388888888889e-08
        TotalMilliseconds: 0.2093
        TotalMinutes: 3.48833333333333e-06
        TotalSeconds: 0.0002093
    Throughput: 3996.27846567884
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Named
    Time: 
      Ticks: 2864142
      Days: 0
      Hours: 0
      Milliseconds: 286
      Minutes: 0
      Seconds: 0
      TotalDays: 3.31497916666667e-06
      TotalHours: 7.95595e-05
      TotalMilliseconds: 286.4142
      TotalMinutes: 0.00477357
      TotalSeconds: 0.2864142
    RelativeSpeed: 1.11776455051234
    ClockSpeed: 2394
    FileName: How Much Faster Is Splatting
    Details: 
      FileName: How Much Faster Is Splatting
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      TotalMilliseconds: 286.4142
      GroupName: 
      SlowestTime: 
        Ticks: 58955
        Days: 0
        Hours: 0
        Milliseconds: 5
        Minutes: 0
        Seconds: 0
        TotalDays: 6.82349537037037e-08
        TotalHours: 1.63763888888889e-06
        TotalMilliseconds: 5.8955
        TotalMinutes: 9.82583333333333e-05
        TotalSeconds: 0.0058955
      RepeatCount: 1024
      TotalTime: 
        Ticks: 2864142
        Days: 0
        Hours: 0
        Milliseconds: 286
        Minutes: 0
        Seconds: 0
        TotalDays: 3.31497916666667e-06
        TotalHours: 7.95595e-05
        TotalMilliseconds: 286.4142
        TotalMinutes: 0.00477357
        TotalSeconds: 0.2864142
      AverageTime: 
        Ticks: 2797
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.23726851851852e-09
        TotalHours: 7.76944444444445e-08
        TotalMilliseconds: 0.2797
        TotalMinutes: 4.66166666666667e-06
        TotalSeconds: 0.0002797
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      FastestTime: 
        Ticks: 2289
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.64930555555556e-09
        TotalHours: 6.35833333333333e-08
        TotalMilliseconds: 0.2289
        TotalMinutes: 3.815e-06
        TotalSeconds: 0.0002289
    Throughput: 3575.2417303332
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Piped
    Time: 
      Ticks: 2864401
      Days: 0
      Hours: 0
      Milliseconds: 286
      Minutes: 0
      Seconds: 0
      TotalDays: 3.31527893518519e-06
      TotalHours: 7.95666944444444e-05
      TotalMilliseconds: 286.4401
      TotalMinutes: 0.00477400166666667
      TotalSeconds: 0.2864401
    RelativeSpeed: 1.11786601852025
    ClockSpeed: 2394
    FileName: How Much Faster Is Splatting
    Details: 
      FileName: How Much Faster Is Splatting
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      TotalMilliseconds: 286.4402
      GroupName: 
      SlowestTime: 
        Ticks: 48679
        Days: 0
        Hours: 0
        Milliseconds: 4
        Minutes: 0
        Seconds: 0
        TotalDays: 5.63414351851852e-08
        TotalHours: 1.35219444444444e-06
        TotalMilliseconds: 4.8679
        TotalMinutes: 8.11316666666667e-05
        TotalSeconds: 0.0048679
      RepeatCount: 1024
      TotalTime: 
        Ticks: 2864401
        Days: 0
        Hours: 0
        Milliseconds: 286
        Minutes: 0
        Seconds: 0
        TotalDays: 3.31527893518519e-06
        TotalHours: 7.95666944444444e-05
        TotalMilliseconds: 286.4401
        TotalMinutes: 0.00477400166666667
        TotalSeconds: 0.2864401
      AverageTime: 
        Ticks: 2797
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.23726851851852e-09
        TotalHours: 7.76944444444445e-08
        TotalMilliseconds: 0.2797
        TotalMinutes: 4.66166666666667e-06
        TotalSeconds: 0.0002797
      BenchmarkInput: 
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      FastestTime: 
        Ticks: 2511
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.90625e-09
        TotalHours: 6.975e-08
        TotalMilliseconds: 0.2511
        TotalMinutes: 4.185e-06
        TotalSeconds: 0.0002511
    Throughput: 3574.91845590055
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
  - Technique: Positional
    Time: 
      Ticks: 9539694
      Days: 0
      Hours: 0
      Milliseconds: 953
      Minutes: 0
      Seconds: 0
      TotalDays: 1.10413125e-05
      TotalHours: 0.0002649915
      TotalMilliseconds: 953.9694
      TotalMinutes: 0.01589949
      TotalSeconds: 0.9539694
    RelativeSpeed: 3.72297594739898
    ClockSpeed: 2394
    FileName: How Much Faster Is Splatting
    Details: 
      FileName: How Much Faster Is Splatting
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      TotalMilliseconds: 953.969400000001
      GroupName: 
      SlowestTime: 
        Ticks: 110272
        Days: 0
        Hours: 0
        Milliseconds: 11
        Minutes: 0
        Seconds: 0
        TotalDays: 1.2762962962963e-07
        TotalHours: 3.06311111111111e-06
        TotalMilliseconds: 11.0272
        TotalMinutes: 0.000183786666666667
        TotalSeconds: 0.0110272
      RepeatCount: 1024
      TotalTime: 
        Ticks: 9539694
        Days: 0
        Hours: 0
        Milliseconds: 953
        Minutes: 0
        Seconds: 0
        TotalDays: 1.10413125e-05
        TotalHours: 0.0002649915
        TotalMilliseconds: 953.9694
        TotalMinutes: 0.01589949
        TotalSeconds: 0.9539694
      AverageTime: 
        Ticks: 9316
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.07824074074074e-08
        TotalHours: 2.58777777777778e-07
        TotalMilliseconds: 0.9316
        TotalMinutes: 1.55266666666667e-05
        TotalSeconds: 0.0009316
      BenchmarkInput: 
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
        Detailed: 
          IsPresent: true
      FastestTime: 
        Ticks: 8238
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 9.53472222222222e-09
        TotalHours: 2.28833333333333e-07
        TotalMilliseconds: 0.8238
        TotalMinutes: 1.373e-05
        TotalSeconds: 0.0008238
    Throughput: 1073.40969217671
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
      Detailed: 
        IsPresent: true
FileName: How Much Faster Is Splatting
ClockSpeed: 2394
---
How Much Faster Is Splatting
----------------------------
> @2394 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Splatting |00:00:00.256238|1x           |3996.28/s |
|Named     |00:00:00.286414|1.12x        |3575.24/s |
|Piped     |00:00:00.286440|1.12x        |3574.92/s |
|Positional|00:00:00.953969|3.72x        |1073.41/s |
