---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Splatting
    Time: 
      Ticks: 2689834
      Days: 0
      Hours: 0
      Milliseconds: 268
      Minutes: 0
      Seconds: 0
      TotalDays: 3.1132337962963e-06
      TotalHours: 7.47176111111111e-05
      TotalMilliseconds: 268.9834
      TotalMinutes: 0.00448305666666667
      TotalSeconds: 0.2689834
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      RepeatCount: 1024
      AverageTime: 
        Ticks: 2626
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.03935185185185e-09
        TotalHours: 7.29444444444444e-08
        TotalMilliseconds: 0.2626
        TotalMinutes: 4.37666666666667e-06
        TotalSeconds: 0.0002626
      Command: |
        
                Add-Member @splat 
            
      TotalMilliseconds: 268.9835
      FastestTime: 
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
      GroupName: 
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member @splat 
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 28231
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 3.26747685185185e-08
        TotalHours: 7.84194444444444e-07
        TotalMilliseconds: 2.8231
        TotalMinutes: 4.70516666666667e-05
        TotalSeconds: 0.0028231
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 2689834
        Days: 0
        Hours: 0
        Milliseconds: 268
        Minutes: 0
        Seconds: 0
        TotalDays: 3.1132337962963e-06
        TotalHours: 7.47176111111111e-05
        TotalMilliseconds: 268.9834
        TotalMinutes: 0.00448305666666667
        TotalSeconds: 0.2689834
    RepeatCount: 1024
    Throughput: 3806.92637538227
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Named
    Time: 
      Ticks: 2764309
      Days: 0
      Hours: 0
      Milliseconds: 276
      Minutes: 0
      Seconds: 0
      TotalDays: 3.19943171296296e-06
      TotalHours: 7.67863611111111e-05
      TotalMilliseconds: 276.4309
      TotalMinutes: 0.00460718166666667
      TotalSeconds: 0.2764309
    RelativeSpeed: 1.02768757191426
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      RepeatCount: 1024
      AverageTime: 
        Ticks: 2699
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.12384259259259e-09
        TotalHours: 7.49722222222222e-08
        TotalMilliseconds: 0.2699
        TotalMinutes: 4.49833333333333e-06
        TotalSeconds: 0.0002699
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      TotalMilliseconds: 276.430999999999
      FastestTime: 
        Ticks: 2059
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.38310185185185e-09
        TotalHours: 5.71944444444444e-08
        TotalMilliseconds: 0.2059
        TotalMinutes: 3.43166666666667e-06
        TotalSeconds: 0.0002059
      GroupName: 
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 32449
        Days: 0
        Hours: 0
        Milliseconds: 3
        Minutes: 0
        Seconds: 0
        TotalDays: 3.7556712962963e-08
        TotalHours: 9.01361111111111e-07
        TotalMilliseconds: 3.2449
        TotalMinutes: 5.40816666666667e-05
        TotalSeconds: 0.0032449
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 2764309
        Days: 0
        Hours: 0
        Milliseconds: 276
        Minutes: 0
        Seconds: 0
        TotalDays: 3.19943171296296e-06
        TotalHours: 7.67863611111111e-05
        TotalMilliseconds: 276.4309
        TotalMinutes: 0.00460718166666667
        TotalSeconds: 0.2764309
    RepeatCount: 1024
    Throughput: 3704.36156015843
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Piped
    Time: 
      Ticks: 2821957
      Days: 0
      Hours: 0
      Milliseconds: 282
      Minutes: 0
      Seconds: 0
      TotalDays: 3.26615393518519e-06
      TotalHours: 7.83876944444444e-05
      TotalMilliseconds: 282.1957
      TotalMinutes: 0.00470326166666667
      TotalSeconds: 0.2821957
    RelativeSpeed: 1.04911936977547
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      RepeatCount: 1024
      AverageTime: 
        Ticks: 2755
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 3.18865740740741e-09
        TotalHours: 7.65277777777778e-08
        TotalMilliseconds: 0.2755
        TotalMinutes: 4.59166666666667e-06
        TotalSeconds: 0.0002755
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      TotalMilliseconds: 282.1958
      FastestTime: 
        Ticks: 2255
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.6099537037037e-09
        TotalHours: 6.26388888888889e-08
        TotalMilliseconds: 0.2255
        TotalMinutes: 3.75833333333333e-06
        TotalSeconds: 0.0002255
      GroupName: 
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 27860
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 3.22453703703704e-08
        TotalHours: 7.73888888888889e-07
        TotalMilliseconds: 2.786
        TotalMinutes: 4.64333333333333e-05
        TotalSeconds: 0.002786
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 2821957
        Days: 0
        Hours: 0
        Milliseconds: 282
        Minutes: 0
        Seconds: 0
        TotalDays: 3.26615393518519e-06
        TotalHours: 7.83876944444444e-05
        TotalMilliseconds: 282.1957
        TotalMinutes: 0.00470326166666667
        TotalSeconds: 0.2821957
    RepeatCount: 1024
    Throughput: 3628.68746759784
    BenchmarkInput: 
      Detailed: 
        IsPresent: true
      RepeatCount: 1024
      FileName: How Much Faster Is Splatting
  - Technique: Positional
    Time: 
      Ticks: 9562905
      Days: 0
      Hours: 0
      Milliseconds: 956
      Minutes: 0
      Seconds: 0
      TotalDays: 1.10681770833333e-05
      TotalHours: 0.00026563625
      TotalMilliseconds: 956.2905
      TotalMinutes: 0.015938175
      TotalSeconds: 0.9562905
    RelativeSpeed: 3.55520134134622
    ClockSpeed: 2295
    FileName: How Much Faster Is Splatting
    Details: 
      RepeatCount: 1024
      AverageTime: 
        Ticks: 9338
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.08078703703704e-08
        TotalHours: 2.59388888888889e-07
        TotalMilliseconds: 0.9338
        TotalMinutes: 1.55633333333333e-05
        TotalSeconds: 0.0009338
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      TotalMilliseconds: 956.290500000001
      FastestTime: 
        Ticks: 7694
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 8.90509259259259e-09
        TotalHours: 2.13722222222222e-07
        TotalMilliseconds: 0.7694
        TotalMinutes: 1.28233333333333e-05
        TotalSeconds: 0.0007694
      GroupName: 
      BenchmarkInput: 
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
        RepeatCount: 1024
        FileName: How Much Faster Is Splatting
      SlowestTime: 
        Ticks: 49901
        Days: 0
        Hours: 0
        Milliseconds: 4
        Minutes: 0
        Seconds: 0
        TotalDays: 5.7755787037037e-08
        TotalHours: 1.38613888888889e-06
        TotalMilliseconds: 4.9901
        TotalMinutes: 8.31683333333333e-05
        TotalSeconds: 0.0049901
      FileName: How Much Faster Is Splatting
      TotalTime: 
        Ticks: 9562905
        Days: 0
        Hours: 0
        Milliseconds: 956
        Minutes: 0
        Seconds: 0
        TotalDays: 1.10681770833333e-05
        TotalHours: 0.00026563625
        TotalMilliseconds: 956.2905
        TotalMinutes: 0.015938175
        TotalSeconds: 0.9562905
    RepeatCount: 1024
    Throughput: 1070.80432149017
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
|Splatting |1024       |00:00:00.268983|1x           |3806.93/s |
|Named     |1024       |00:00:00.276430|1.03x        |3704.36/s |
|Piped     |1024       |00:00:00.282195|1.05x        |3628.69/s |
|Positional|1024       |00:00:00.956290|3.56x        |1070.8/s  |
