---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1285640
      Days: 0
      Hours: 0
      Milliseconds: 128
      Minutes: 0
      Seconds: 0
      TotalDays: 1.48800925925926e-06
      TotalHours: 3.57122222222222e-05
      TotalMilliseconds: 128.564
      TotalMinutes: 0.00214273333333333
      TotalSeconds: 0.128564
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | &{
                              process { $_}
                          }
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
        RepeatCount: 1024
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 7964.90463893469
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1391900
      Days: 0
      Hours: 0
      Milliseconds: 139
      Minutes: 0
      Seconds: 0
      TotalDays: 1.61099537037037e-06
      TotalHours: 3.86638888888889e-05
      TotalMilliseconds: 139.19
      TotalMinutes: 0.00231983333333333
      TotalSeconds: 0.13919
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
        RepeatCount: 1024
    RelativeSpeed: 1.08265144208332
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 7356.85034844457
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 5613490
      Days: 0
      Hours: 0
      Milliseconds: 561
      Minutes: 0
      Seconds: 0
      TotalDays: 6.49709490740741e-06
      TotalHours: 0.000155930277777778
      TotalMilliseconds: 561.349
      TotalMinutes: 0.00935581666666667
      TotalSeconds: 0.561349
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                      1..100 | & {
                          param([Parameter(ValueFromPipeline=$true)]$inputobject)
                          process { $inputObject } 
                      }
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
        RepeatCount: 1024
    RelativeSpeed: 4.36630005289195
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1824.17711619688
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ForeachObject
    Time: 
      Ticks: 7792105
      Days: 0
      Hours: 0
      Milliseconds: 779
      Minutes: 0
      Seconds: 0
      TotalDays: 9.0186400462963e-06
      TotalHours: 0.000216447361111111
      TotalMilliseconds: 779.2105
      TotalMinutes: 0.0129868416666667
      TotalSeconds: 0.7792105
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
        RepeatCount: 1024
    RelativeSpeed: 6.06087629507483
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1314.15066917091
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2594
---


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.128564|1x           |7964.9/s  |
|DotScriptBlock                  |00:00:00.139190|1.08x        |7356.85/s |
|ScriptBlockWithPipelineParameter|00:00:00.561349|4.37x        |1824.18/s |
|ForeachObject                   |00:00:00.779210|6.06x        |1314.15/s |
