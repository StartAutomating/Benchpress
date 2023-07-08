---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1396921
      Days: 0
      Hours: 0
      Milliseconds: 139
      Minutes: 0
      Seconds: 0
      TotalDays: 1.61680671296296e-06
      TotalHours: 3.88033611111111e-05
      TotalMilliseconds: 139.6921
      TotalMinutes: 0.00232820166666667
      TotalSeconds: 0.1396921
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
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 7330.40737450436
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1481004
      Days: 0
      Hours: 0
      Milliseconds: 148
      Minutes: 0
      Seconds: 0
      TotalDays: 1.714125e-06
      TotalHours: 4.1139e-05
      TotalMilliseconds: 148.1004
      TotalMinutes: 0.00246834
      TotalSeconds: 0.1481004
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
    RelativeSpeed: 1.06019166438188
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 6914.22845583131
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 5769928
      Days: 0
      Hours: 0
      Milliseconds: 576
      Minutes: 0
      Seconds: 0
      TotalDays: 6.67815740740741e-06
      TotalHours: 0.000160275777777778
      TotalMilliseconds: 576.9928
      TotalMinutes: 0.00961654666666667
      TotalSeconds: 0.5769928
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
                      
    RelativeSpeed: 4.13046120718351
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1774.71885264426
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ForeachObject
    Time: 
      Ticks: 7467261
      Days: 0
      Hours: 0
      Milliseconds: 746
      Minutes: 0
      Seconds: 0
      TotalDays: 8.64266319444444e-06
      TotalHours: 0.000207423916666667
      TotalMilliseconds: 746.7261
      TotalMinutes: 0.012445435
      TotalSeconds: 0.7467261
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
    RelativeSpeed: 5.34551417009265
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1371.31941685177
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2793
---


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.139692|1x           |7330.41/s |
|DotScriptBlock                  |00:00:00.148100|1.06x        |6914.23/s |
|ScriptBlockWithPipelineParameter|00:00:00.576992|4.13x        |1774.72/s |
|ForeachObject                   |00:00:00.746726|5.35x        |1371.32/s |
