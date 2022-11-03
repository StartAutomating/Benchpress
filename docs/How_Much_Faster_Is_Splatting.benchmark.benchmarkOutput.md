---
layout: Benchmark

Data: 
  - Technique: Splatting
    Time: 00:00:00.1558401
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: |
      @{TotalMilliseconds=155.8401; FastestTime=00:00:00.0001449; RepeatCount=1024; Command=
              Add-Member @splat 
          ; SlowestTime=00:00:00.0020425; FileName=How Much Faster Is Splatting; GroupName=; BenchmarkInput=System.Collections.Hashtable; TotalTime=00:00:00.1558401; AverageTime=00:00:00.0001521}
    Throughput: 6570.8376727171
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Named
    Time: 00:00:00.1616989
    RelativeSpeed: 1.03759558675848
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: |
      @{TotalMilliseconds=161.699; FastestTime=00:00:00.0001500; RepeatCount=1024; Command=
              Add-Member -InputObject ([PSObject]::new()) -PassThru -MemberType NoteProperty -Name Test -Value 1 
          ; SlowestTime=00:00:00.0024067; FileName=How Much Faster Is Splatting; GroupName=; BenchmarkInput=System.Collections.Hashtable; TotalTime=00:00:00.1616989; AverageTime=00:00:00.0001579}
    Throughput: 6332.75798412976
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Piped
    Time: 00:00:00.1705047
    RelativeSpeed: 1.09410094064364
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: |
      @{TotalMilliseconds=170.5048; FastestTime=00:00:00.0001591; RepeatCount=1024; Command=
              [PSObject]::new() | 
                  Add-Member -MemberType NoteProperty -Name Test -Value 1 -PassThru
          ; SlowestTime=00:00:00.0019543; FileName=How Much Faster Is Splatting; GroupName=; BenchmarkInput=System.Collections.Hashtable; TotalTime=00:00:00.1705047; AverageTime=00:00:00.0001665}
    Throughput: 6005.69954963118
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Positional
    Time: 00:00:00.5830960
    RelativeSpeed: 3.74163068427189
    ClockSpeed: 2793
    FileName: How Much Faster Is Splatting
    Details: |
      @{TotalMilliseconds=583.0961; FastestTime=00:00:00.0005547; RepeatCount=1024; Command=
              Add-Member -InputObject ([PSObject]::new()) -PassThru NoteProperty Test 1 
          ; SlowestTime=00:00:00.0021983; FileName=How Much Faster Is Splatting; GroupName=; BenchmarkInput=System.Collections.Hashtable; TotalTime=00:00:00.5830960; AverageTime=00:00:00.0005694}
    Throughput: 1756.1430707808
    BenchmarkInput: System.Collections.Hashtable
FileName: How Much Faster Is Splatting
ClockSpeed: 2793
---
How Much Faster Is Splatting
----------------------------
> @2793 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Splatting |00:00:00.155840|1x           |6570.84/s |
|Named     |00:00:00.161698|1.04x        |6332.76/s |
|Piped     |00:00:00.170504|1.09x        |6005.7/s  |
|Positional|00:00:00.583096|3.74x        |1756.14/s |
