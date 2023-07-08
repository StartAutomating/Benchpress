---
layout: Benchmark
title: How Much Faster Is Splatting

Data: 
  - Technique: Named
    Time: 
      Ticks: 1747474
      Days: 0
      Hours: 0
      Milliseconds: 174
      Minutes: 0
      Seconds: 0
      TotalDays: 2.02253935185185e-06
      TotalHours: 4.85409444444444e-05
      TotalMilliseconds: 174.7474
      TotalMinutes: 0.00291245666666667
      TotalSeconds: 0.1747474
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
              
      SlowestTime: 
        Ticks: 34385
        Days: 0
        Hours: 0
        Milliseconds: 3
        Minutes: 0
        Seconds: 0
        TotalDays: 3.97974537037037e-08
        TotalHours: 9.55138888888889e-07
        TotalMilliseconds: 3.4385
        TotalMinutes: 5.73083333333333e-05
        TotalSeconds: 0.0034385
      FastestTime: 
        Ticks: 1569
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.81597222222222e-09
        TotalHours: 4.35833333333333e-08
        TotalMilliseconds: 0.1569
        TotalMinutes: 2.615e-06
        TotalSeconds: 0.0001569
      AverageTime: 
        Ticks: 1706
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.97453703703704e-09
        TotalHours: 4.73888888888889e-08
        TotalMilliseconds: 0.1706
        TotalMinutes: 2.84333333333333e-06
        TotalSeconds: 0.0001706
      GroupName: 
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
            
      TotalTime: 
        Ticks: 1747474
        Days: 0
        Hours: 0
        Milliseconds: 174
        Minutes: 0
        Seconds: 0
        TotalDays: 2.02253935185185e-06
        TotalHours: 4.85409444444444e-05
        TotalMilliseconds: 174.7474
        TotalMinutes: 0.00291245666666667
        TotalSeconds: 0.1747474
      TotalMilliseconds: 174.7475
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
    RepeatCount: 1024
    Throughput: 5859.8868996048
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
  - Technique: Splatting
    Time: 
      Ticks: 1920811
      Days: 0
      Hours: 0
      Milliseconds: 192
      Minutes: 0
      Seconds: 0
      TotalDays: 2.22316087962963e-06
      TotalHours: 5.33558611111111e-05
      TotalMilliseconds: 192.0811
      TotalMinutes: 0.00320135166666667
      TotalSeconds: 0.1920811
    RelativeSpeed: 1.09919283537676
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member @splat 
              
      SlowestTime: 
        Ticks: 80588
        Days: 0
        Hours: 0
        Milliseconds: 8
        Minutes: 0
        Seconds: 0
        TotalDays: 9.32731481481482e-08
        TotalHours: 2.23855555555556e-06
        TotalMilliseconds: 8.0588
        TotalMinutes: 0.000134313333333333
        TotalSeconds: 0.0080588
      FastestTime: 
        Ticks: 1516
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.75462962962963e-09
        TotalHours: 4.21111111111111e-08
        TotalMilliseconds: 0.1516
        TotalMinutes: 2.52666666666667e-06
        TotalSeconds: 0.0001516
      AverageTime: 
        Ticks: 1875
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.17013888888889e-09
        TotalHours: 5.20833333333333e-08
        TotalMilliseconds: 0.1875
        TotalMinutes: 3.125e-06
        TotalSeconds: 0.0001875
      GroupName: 
      Command: |
        
                Add-Member @splat 
            
      TotalTime: 
        Ticks: 1920811
        Days: 0
        Hours: 0
        Milliseconds: 192
        Minutes: 0
        Seconds: 0
        TotalDays: 2.22316087962963e-06
        TotalHours: 5.33558611111111e-05
        TotalMilliseconds: 192.0811
        TotalMinutes: 0.00320135166666667
        TotalSeconds: 0.1920811
      TotalMilliseconds: 192.0812
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
    RepeatCount: 1024
    Throughput: 5331.08150671774
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
  - Technique: Piped
    Time: 
      Ticks: 1940820
      Days: 0
      Hours: 0
      Milliseconds: 194
      Minutes: 0
      Seconds: 0
      TotalDays: 2.24631944444444e-06
      TotalHours: 5.39116666666667e-05
      TotalMilliseconds: 194.082
      TotalMinutes: 0.0032347
      TotalSeconds: 0.194082
    RelativeSpeed: 1.11064249846207
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  [PSObject]::new() | 
                      Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
              
      SlowestTime: 
        Ticks: 112475
        Days: 0
        Hours: 0
        Milliseconds: 11
        Minutes: 0
        Seconds: 0
        TotalDays: 1.30179398148148e-07
        TotalHours: 3.12430555555556e-06
        TotalMilliseconds: 11.2475
        TotalMinutes: 0.000187458333333333
        TotalSeconds: 0.0112475
      FastestTime: 
        Ticks: 1661
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 1.9224537037037e-09
        TotalHours: 4.61388888888889e-08
        TotalMilliseconds: 0.1661
        TotalMinutes: 2.76833333333333e-06
        TotalSeconds: 0.0001661
      AverageTime: 
        Ticks: 1895
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 2.19328703703704e-09
        TotalHours: 5.26388888888889e-08
        TotalMilliseconds: 0.1895
        TotalMinutes: 3.15833333333333e-06
        TotalSeconds: 0.0001895
      GroupName: 
      Command: |
        
                [PSObject]::new() | 
                    Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
            
      TotalTime: 
        Ticks: 1940820
        Days: 0
        Hours: 0
        Milliseconds: 194
        Minutes: 0
        Seconds: 0
        TotalDays: 2.24631944444444e-06
        TotalHours: 5.39116666666667e-05
        TotalMilliseconds: 194.082
        TotalMinutes: 0.0032347
        TotalSeconds: 0.194082
      TotalMilliseconds: 194.082
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
    RepeatCount: 1024
    Throughput: 5276.12040271638
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
  - Technique: Positional
    Time: 
      Ticks: 6433661
      Days: 0
      Hours: 0
      Milliseconds: 643
      Minutes: 0
      Seconds: 0
      TotalDays: 7.44636689814815e-06
      TotalHours: 0.000178712805555556
      TotalMilliseconds: 643.3661
      TotalMinutes: 0.0107227683333333
      TotalSeconds: 0.6433661
    RelativeSpeed: 3.68169043906208
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: 
      BenchmarkInput: 
        FileName: How Much Faster Is Splatting
        RepeatCount: 1024
        Detailed: 
          IsPresent: true
        ScriptBlock: |
          
                  Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
              
      SlowestTime: 
        Ticks: 27578
        Days: 0
        Hours: 0
        Milliseconds: 2
        Minutes: 0
        Seconds: 0
        TotalDays: 3.19189814814815e-08
        TotalHours: 7.66055555555556e-07
        TotalMilliseconds: 2.7578
        TotalMinutes: 4.59633333333333e-05
        TotalSeconds: 0.0027578
      FastestTime: 
        Ticks: 6075
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 7.03125e-09
        TotalHours: 1.6875e-07
        TotalMilliseconds: 0.6075
        TotalMinutes: 1.0125e-05
        TotalSeconds: 0.0006075
      AverageTime: 
        Ticks: 6282
        Days: 0
        Hours: 0
        Milliseconds: 0
        Minutes: 0
        Seconds: 0
        TotalDays: 7.27083333333333e-09
        TotalHours: 1.745e-07
        TotalMilliseconds: 0.6282
        TotalMinutes: 1.047e-05
        TotalSeconds: 0.0006282
      GroupName: 
      Command: |
        
                Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
            
      TotalTime: 
        Ticks: 6433661
        Days: 0
        Hours: 0
        Milliseconds: 643
        Minutes: 0
        Seconds: 0
        TotalDays: 7.44636689814815e-06
        TotalHours: 0.000178712805555556
        TotalMilliseconds: 643.3661
        TotalMinutes: 0.0107227683333333
        TotalSeconds: 0.6433661
      TotalMilliseconds: 643.3662
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
    RepeatCount: 1024
    Throughput: 1591.62877870003
    BenchmarkInput: 
      FileName: How Much Faster Is Splatting
      RepeatCount: 1024
      Detailed: 
        IsPresent: true
FileName: How Much Faster Is Splatting
ClockSpeed: 2594
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Named     |1024       |00:00:00.174747|1x           |5859.89/s |
|Splatting |1024       |00:00:00.192081|1.1x         |5331.08/s |
|Piped     |1024       |00:00:00.194082|1.11x        |5276.12/s |
|Positional|1024       |00:00:00.643366|3.68x        |1591.63/s |
