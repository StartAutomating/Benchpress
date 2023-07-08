---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1309056
      Days: 0
      Hours: 0
      Milliseconds: 130
      Minutes: 0
      Seconds: 0
      TotalDays: 1.51511111111111e-06
      TotalHours: 3.63626666666667e-05
      TotalMilliseconds: 130.9056
      TotalMinutes: 0.00218176
      TotalSeconds: 0.1309056
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
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 7822.43082037743
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1393482
      Days: 0
      Hours: 0
      Milliseconds: 139
      Minutes: 0
      Seconds: 0
      TotalDays: 1.61282638888889e-06
      TotalHours: 3.87078333333333e-05
      TotalMilliseconds: 139.3482
      TotalMinutes: 0.00232247
      TotalSeconds: 0.1393482
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        RepeatCount: 1024
    RelativeSpeed: 1.06449380316808
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 7348.49822243847
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 5736802
      Days: 0
      Hours: 0
      Milliseconds: 573
      Minutes: 0
      Seconds: 0
      TotalDays: 6.63981712962963e-06
      TotalHours: 0.000159355611111111
      TotalMilliseconds: 573.6802
      TotalMinutes: 0.00956133666666667
      TotalSeconds: 0.5736802
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
    RelativeSpeed: 4.38239616945341
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1784.96660683077
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ForeachObject
    Time: 
      Ticks: 7957645
      Days: 0
      Hours: 0
      Milliseconds: 795
      Minutes: 0
      Seconds: 0
      TotalDays: 9.21023726851852e-06
      TotalHours: 0.000221045694444444
      TotalMilliseconds: 795.7645
      TotalMinutes: 0.0132627416666667
      TotalSeconds: 0.7957645
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        RepeatCount: 1024
    RelativeSpeed: 6.07891870172094
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1286.81286988801
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2594
---


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.130905|1x           |7822.43/s |
|DotScriptBlock                  |00:00:00.139348|1.06x        |7348.5/s  |
|ScriptBlockWithPipelineParameter|00:00:00.573680|4.38x        |1784.97/s |
|ForeachObject                   |00:00:00.795764|6.08x        |1286.81/s |
