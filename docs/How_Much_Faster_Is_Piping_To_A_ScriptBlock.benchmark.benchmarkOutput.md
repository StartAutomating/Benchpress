---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1147097
      Days: 0
      Hours: 0
      Milliseconds: 114
      Minutes: 0
      Seconds: 0
      TotalDays: 1.32765856481481e-06
      TotalHours: 3.18638055555556e-05
      TotalMilliseconds: 114.7097
      TotalMinutes: 0.00191182833333333
      TotalSeconds: 0.1147097
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
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 8926.88238222225
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1349706
      Days: 0
      Hours: 0
      Milliseconds: 134
      Minutes: 0
      Seconds: 0
      TotalDays: 1.56215972222222e-06
      TotalHours: 3.74918333333333e-05
      TotalMilliseconds: 134.9706
      TotalMinutes: 0.00224951
      TotalSeconds: 0.1349706
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        RepeatCount: 1024
    RelativeSpeed: 1.17662760865036
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 7586.837429781
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 5381726
      Days: 0
      Hours: 0
      Milliseconds: 538
      Minutes: 0
      Seconds: 0
      TotalDays: 6.22884953703704e-06
      TotalHours: 0.000149492388888889
      TotalMilliseconds: 538.1726
      TotalMinutes: 0.00896954333333333
      TotalSeconds: 0.5381726
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
    RelativeSpeed: 4.69160498196752
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1902.73529347276
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ForeachObject
    Time: 
      Ticks: 6806748
      Days: 0
      Hours: 0
      Milliseconds: 680
      Minutes: 0
      Seconds: 0
      TotalDays: 7.87818055555556e-06
      TotalHours: 0.000189076333333333
      TotalMilliseconds: 680.6748
      TotalMinutes: 0.01134458
      TotalSeconds: 0.6806748
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        RepeatCount: 1024
    RelativeSpeed: 5.93389050795181
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1504.3894676283
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2095
---




|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|ScriptBlock                     |1024       |00:00:00.114709|1x           |8926.88/s |
|DotScriptBlock                  |1024       |00:00:00.134970|1.18x        |7586.84/s |
|ScriptBlockWithPipelineParameter|1024       |00:00:00.538172|4.69x        |1902.74/s |
|ForeachObject                   |1024       |00:00:00.680674|5.93x        |1504.39/s |
