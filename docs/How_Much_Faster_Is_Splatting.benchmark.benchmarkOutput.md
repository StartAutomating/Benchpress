---
layout: Benchmark

Data: 
  - Technique: Splatting
    Time: 00:00:00.1707158
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: |
      @{GroupName=; BenchmarkInput=System.Collections.Hashtable; Command=
              Add-Member @splat 
          ; TotalTime=00:00:00.1707158; AverageTime=00:00:00.0001667; SlowestTime=00:00:00.0023759; TotalMilliseconds=170.7158; RepeatCount=1024; FileName=How Much Faster Is Splatting; FastestTime=00:00:00.0001542}
    Throughput: 5998.27315339295
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Named
    Time: 00:00:00.1797512
    RelativeSpeed: 1.05292655981462
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: |
      @{GroupName=; BenchmarkInput=System.Collections.Hashtable; Command=
              Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
          ; TotalTime=00:00:00.1797512; AverageTime=00:00:00.0001755; SlowestTime=00:00:00.0031036; TotalMilliseconds=179.7512; RepeatCount=1024; FileName=How Much Faster Is Splatting; FastestTime=00:00:00.0001612}
    Throughput: 5696.76308141476
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Piped
    Time: 00:00:00.1849068
    RelativeSpeed: 1.08312645929668
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: |
      @{GroupName=; BenchmarkInput=System.Collections.Hashtable; Command=
              [PSObject]::new() | 
                  Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
          ; TotalTime=00:00:00.1849068; AverageTime=00:00:00.0001805; SlowestTime=00:00:00.0022065; TotalMilliseconds=184.9068; RepeatCount=1024; FileName=How Much Faster Is Splatting; FastestTime=00:00:00.0001691}
    Throughput: 5537.92505197213
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Positional
    Time: 00:00:00.6555176
    RelativeSpeed: 3.83981857566785
    ClockSpeed: 2594
    FileName: How Much Faster Is Splatting
    Details: |
      @{GroupName=; BenchmarkInput=System.Collections.Hashtable; Command=
              Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
          ; TotalTime=00:00:00.6555176; AverageTime=00:00:00.0006401; SlowestTime=00:00:00.0024418; TotalMilliseconds=655.517699999999; RepeatCount=1024; FileName=How Much Faster Is Splatting; FastestTime=00:00:00.0006192}
    Throughput: 1562.12434265686
    BenchmarkInput: System.Collections.Hashtable
FileName: How Much Faster Is Splatting
ClockSpeed: 2594
---
How Much Faster Is Splatting
----------------------------
> @2594 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Splatting |00:00:00.170715|1x           |5998.27/s |
|Named     |00:00:00.179751|1.05x        |5696.76/s |
|Piped     |00:00:00.184906|1.08x        |5537.93/s |
|Positional|00:00:00.655517|3.84x        |1562.12/s |
