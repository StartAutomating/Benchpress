---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1617481
      Days: 0
      Hours: 0
      Milliseconds: 161
      Minutes: 0
      Seconds: 0
      TotalDays: 1.87208449074074e-06
      TotalHours: 4.49300277777778e-05
      TotalMilliseconds: 161.7481
      TotalMinutes: 0.00269580166666667
      TotalSeconds: 0.1617481
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                          1..100 | &{
                              process { $_}
                          }
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 6330.83170683303
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1644027
      Days: 0
      Hours: 0
      Milliseconds: 164
      Minutes: 0
      Seconds: 0
      TotalDays: 1.90280902777778e-06
      TotalHours: 4.56674166666667e-05
      TotalMilliseconds: 164.4027
      TotalMinutes: 0.002740045
      TotalSeconds: 0.1644027
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1.01641193930562
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 6228.60816762742
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 6401954
      Days: 0
      Hours: 0
      Milliseconds: 640
      Minutes: 0
      Seconds: 0
      TotalDays: 7.40966898148148e-06
      TotalHours: 0.000177832055555556
      TotalMilliseconds: 640.1954
      TotalMinutes: 0.0106699233333333
      TotalSeconds: 0.6401954
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                      1..100 | & {
                          param([Parameter(ValueFromPipeline=$true)]$inputobject)
                          process { $inputObject } 
                      }
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 3.95797786805533
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1599.51164909963
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ForeachObject
    Time: 
      Ticks: 8828832
      Days: 0
      Hours: 0
      Milliseconds: 882
      Minutes: 0
      Seconds: 0
      TotalDays: 1.02185555555556e-05
      TotalHours: 0.000245245333333333
      TotalMilliseconds: 882.8832
      TotalMinutes: 0.01471472
      TotalSeconds: 0.8828832
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 5.45838374608419
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1159.83631809961
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2095
---




|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|ScriptBlock                     |1024       |00:00:00.161748|1x           |6330.83/s |
|DotScriptBlock                  |1024       |00:00:00.164402|1.02x        |6228.61/s |
|ScriptBlockWithPipelineParameter|1024       |00:00:00.640195|3.96x        |1599.51/s |
|ForeachObject                   |1024       |00:00:00.882883|5.46x        |1159.84/s |
