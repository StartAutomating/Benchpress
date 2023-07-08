---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1465311
      Days: 0
      Hours: 0
      Milliseconds: 146
      Minutes: 0
      Seconds: 0
      TotalDays: 1.69596180555556e-06
      TotalHours: 4.07030833333333e-05
      TotalMilliseconds: 146.5311
      TotalMinutes: 0.002442185
      TotalSeconds: 0.1465311
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | &{
                              process { $_}
                          }
                      
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 6988.27757383927
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1572168
      Days: 0
      Hours: 0
      Milliseconds: 157
      Minutes: 0
      Seconds: 0
      TotalDays: 1.81963888888889e-06
      TotalHours: 4.36713333333333e-05
      TotalMilliseconds: 157.2168
      TotalMinutes: 0.00262028
      TotalSeconds: 0.1572168
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
    RelativeSpeed: 1.07292445085037
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 6513.29883320358
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 6869085
      Days: 0
      Hours: 0
      Milliseconds: 686
      Minutes: 0
      Seconds: 0
      TotalDays: 7.95032986111111e-06
      TotalHours: 0.000190807916666667
      TotalMilliseconds: 686.9085
      TotalMinutes: 0.011448475
      TotalSeconds: 0.6869085
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                      1..100 | & {
                          param([Parameter(ValueFromPipeline=$true)]$inputobject)
                          process { $inputObject } 
                      }
                      
    RelativeSpeed: 4.68780006428669
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1490.73712146523
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ForeachObject
    Time: 
      Ticks: 8229086
      Days: 0
      Hours: 0
      Milliseconds: 822
      Minutes: 0
      Seconds: 0
      TotalDays: 9.52440509259259e-06
      TotalHours: 0.000228585722222222
      TotalMilliseconds: 822.9086
      TotalMinutes: 0.0137151433333333
      TotalSeconds: 0.8229086
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
    RelativeSpeed: 5.6159313620112
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1244.366628323
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2095
---




|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|ScriptBlock                     |1024       |00:00:00.146531|1x           |6988.28/s |
|DotScriptBlock                  |1024       |00:00:00.157216|1.07x        |6513.3/s  |
|ScriptBlockWithPipelineParameter|1024       |00:00:00.686908|4.69x        |1490.74/s |
|ForeachObject                   |1024       |00:00:00.822908|5.62x        |1244.37/s |
