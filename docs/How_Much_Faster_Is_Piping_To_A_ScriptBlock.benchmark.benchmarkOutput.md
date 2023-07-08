---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1358346
      Days: 0
      Hours: 0
      Milliseconds: 135
      Minutes: 0
      Seconds: 0
      TotalDays: 1.57215972222222e-06
      TotalHours: 3.77318333333333e-05
      TotalMilliseconds: 135.8346
      TotalMinutes: 0.00226391
      TotalSeconds: 0.1358346
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
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 7538.58000833366
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1435582
      Days: 0
      Hours: 0
      Milliseconds: 143
      Minutes: 0
      Seconds: 0
      TotalDays: 1.66155324074074e-06
      TotalHours: 3.98772777777778e-05
      TotalMilliseconds: 143.5582
      TotalMinutes: 0.00239263666666667
      TotalSeconds: 0.1435582
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1.05686032866442
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 7132.9955376983
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 5570073
      Days: 0
      Hours: 0
      Milliseconds: 557
      Minutes: 0
      Seconds: 0
      TotalDays: 6.44684375e-06
      TotalHours: 0.00015472425
      TotalMilliseconds: 557.0073
      TotalMinutes: 0.009283455
      TotalSeconds: 0.5570073
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
    RelativeSpeed: 4.10062900026945
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1838.39601384039
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ForeachObject
    Time: 
      Ticks: 7182773
      Days: 0
      Hours: 0
      Milliseconds: 718
      Minutes: 0
      Seconds: 0
      TotalDays: 8.31339467592593e-06
      TotalHours: 0.000199521472222222
      TotalMilliseconds: 718.2773
      TotalMinutes: 0.0119712883333333
      TotalSeconds: 0.7182773
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 5.2878817326366
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1425.63324777213
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2793
---
How Much Faster Is Piping To A ScriptBlock
------------------------------------------
> @2793 Mhz


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.135834|1x           |7538.58/s |
|DotScriptBlock                  |00:00:00.143558|1.06x        |7133/s    |
|ScriptBlockWithPipelineParameter|00:00:00.557007|4.1x         |1838.4/s  |
|ForeachObject                   |00:00:00.718277|5.29x        |1425.63/s |
