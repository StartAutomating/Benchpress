---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1965523
      Days: 0
      Hours: 0
      Milliseconds: 196
      Minutes: 0
      Seconds: 0
      TotalDays: 2.27491087962963e-06
      TotalHours: 5.45978611111111e-05
      TotalMilliseconds: 196.5523
      TotalMinutes: 0.00327587166666667
      TotalSeconds: 0.1965523
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | &{
                              process { $_}
                          }
                      
        RepeatCount: 1024
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 5209.80929757627
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: DotScriptBlock
    Time: 
      Ticks: 2223048
      Days: 0
      Hours: 0
      Milliseconds: 222
      Minutes: 0
      Seconds: 0
      TotalDays: 2.57297222222222e-06
      TotalHours: 6.17513333333333e-05
      TotalMilliseconds: 222.3048
      TotalMinutes: 0.00370508
      TotalSeconds: 0.2223048
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        RepeatCount: 1024
    RelativeSpeed: 1.13102110735921
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 4606.28830326651
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 7319969
      Days: 0
      Hours: 0
      Milliseconds: 731
      Minutes: 0
      Seconds: 0
      TotalDays: 8.47218634259259e-06
      TotalHours: 0.000203332472222222
      TotalMilliseconds: 731.9969
      TotalMinutes: 0.0121999483333333
      TotalSeconds: 0.7319969
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                      1..100 | & {
                          param([Parameter(ValueFromPipeline=$true)]$inputobject)
                          process { $inputObject } 
                      }
                      
        RepeatCount: 1024
    RelativeSpeed: 3.72418384318067
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1398.91302818359
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ForeachObject
    Time: 
      Ticks: 10381479
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 1
      TotalDays: 1.20156006944444e-05
      TotalHours: 0.000288374416666667
      TotalMilliseconds: 1038.1479
      TotalMinutes: 0.017302465
      TotalSeconds: 1.0381479
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        RepeatCount: 1024
    RelativeSpeed: 5.28178963054617
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 986.371980331512
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2295
---




|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|ScriptBlock                     |1024       |00:00:00.196552|1x           |5209.81/s |
|DotScriptBlock                  |1024       |00:00:00.222304|1.13x        |4606.29/s |
|ScriptBlockWithPipelineParameter|1024       |00:00:00.731996|3.72x        |1398.91/s |
|ForeachObject                   |1024       |00:00:01.038147|5.28x        |986.37/s  |
