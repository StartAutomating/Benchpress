---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1309916
      Days: 0
      Hours: 0
      Milliseconds: 130
      Minutes: 0
      Seconds: 0
      TotalDays: 1.51610648148148e-06
      TotalHours: 3.63865555555556e-05
      TotalMilliseconds: 130.9916
      TotalMinutes: 0.00218319333333333
      TotalSeconds: 0.1309916
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
    RepeatCount: 1024
    Throughput: 7817.29515480382
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1423213
      Days: 0
      Hours: 0
      Milliseconds: 142
      Minutes: 0
      Seconds: 0
      TotalDays: 1.64723726851852e-06
      TotalHours: 3.95336944444444e-05
      TotalMilliseconds: 142.3213
      TotalMinutes: 0.00237202166666667
      TotalSeconds: 0.1423213
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        RepeatCount: 1024
    RelativeSpeed: 1.08649180558143
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 7194.98767928623
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 5655230
      Days: 0
      Hours: 0
      Milliseconds: 565
      Minutes: 0
      Seconds: 0
      TotalDays: 6.54540509259259e-06
      TotalHours: 0.000157089722222222
      TotalMilliseconds: 565.523
      TotalMinutes: 0.00942538333333333
      TotalSeconds: 0.565523
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
    RelativeSpeed: 4.3172462967091
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1810.71326895635
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ForeachObject
    Time: 
      Ticks: 7755144
      Days: 0
      Hours: 0
      Milliseconds: 775
      Minutes: 0
      Seconds: 0
      TotalDays: 8.97586111111111e-06
      TotalHours: 0.000215420666666667
      TotalMilliseconds: 775.5144
      TotalMinutes: 0.01292524
      TotalSeconds: 0.7755144
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        RepeatCount: 1024
    RelativeSpeed: 5.92033687656308
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1320.41390849738
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2594
---




|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|ScriptBlock                     |1024       |00:00:00.130991|1x           |7817.3/s  |
|DotScriptBlock                  |1024       |00:00:00.142321|1.09x        |7194.99/s |
|ScriptBlockWithPipelineParameter|1024       |00:00:00.565523|4.32x        |1810.71/s |
|ForeachObject                   |1024       |00:00:00.775514|5.92x        |1320.41/s |
