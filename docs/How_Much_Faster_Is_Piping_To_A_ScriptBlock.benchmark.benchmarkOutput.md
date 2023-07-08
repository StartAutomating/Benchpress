---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1697001
      Days: 0
      Hours: 0
      Milliseconds: 169
      Minutes: 0
      Seconds: 0
      TotalDays: 1.96412152777778e-06
      TotalHours: 4.71389166666667e-05
      TotalMilliseconds: 169.7001
      TotalMinutes: 0.002828335
      TotalSeconds: 0.1697001
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | &{
                              process { $_}
                          }
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 6034.17440531856
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1778400
      Days: 0
      Hours: 0
      Milliseconds: 177
      Minutes: 0
      Seconds: 0
      TotalDays: 2.05833333333333e-06
      TotalHours: 4.94e-05
      TotalMilliseconds: 177.84
      TotalMinutes: 0.002964
      TotalSeconds: 0.17784
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1.04796638304868
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 5757.98470535313
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 7397313
      Days: 0
      Hours: 0
      Milliseconds: 739
      Minutes: 0
      Seconds: 0
      TotalDays: 8.56170486111111e-06
      TotalHours: 0.000205480916666667
      TotalMilliseconds: 739.7313
      TotalMinutes: 0.012328855
      TotalSeconds: 0.7397313
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      1..100 | & {
                          param([Parameter(ValueFromPipeline=$true)]$inputobject)
                          process { $inputObject } 
                      }
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 4.35905046608694
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1384.28642941025
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ForeachObject
    Time: 
      Ticks: 9072350
      Days: 0
      Hours: 0
      Milliseconds: 907
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05004050925926e-05
      TotalHours: 0.000252009722222222
      TotalMilliseconds: 907.235
      TotalMinutes: 0.0151205833333333
      TotalSeconds: 0.907235
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 5.34610763340741
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1128.70424972582
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2295
---
How Much Faster Is Piping To A ScriptBlock
------------------------------------------
> @2295 Mhz


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.169700|1x           |6034.17/s |
|DotScriptBlock                  |00:00:00.177840|1.05x        |5757.98/s |
|ScriptBlockWithPipelineParameter|00:00:00.739731|4.36x        |1384.29/s |
|ForeachObject                   |00:00:00.907235|5.35x        |1128.7/s  |
