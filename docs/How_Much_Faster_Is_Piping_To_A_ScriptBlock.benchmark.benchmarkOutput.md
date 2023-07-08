---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1557551
      Days: 0
      Hours: 0
      Milliseconds: 155
      Minutes: 0
      Seconds: 0
      TotalDays: 1.80272106481481e-06
      TotalHours: 4.32653055555556e-05
      TotalMilliseconds: 155.7551
      TotalMinutes: 0.00259591833333333
      TotalSeconds: 0.1557551
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
    RepeatCount: 1024
    Throughput: 6574.42356622672
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1681690
      Days: 0
      Hours: 0
      Milliseconds: 168
      Minutes: 0
      Seconds: 0
      TotalDays: 1.94640046296296e-06
      TotalHours: 4.67136111111111e-05
      TotalMilliseconds: 168.169
      TotalMinutes: 0.00280281666666667
      TotalSeconds: 0.168169
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1.07970140303592
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 6089.11273778164
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 6457013
      Days: 0
      Hours: 0
      Milliseconds: 645
      Minutes: 0
      Seconds: 0
      TotalDays: 7.47339467592593e-06
      TotalHours: 0.000179361472222222
      TotalMilliseconds: 645.7013
      TotalMinutes: 0.0107616883333333
      TotalSeconds: 0.6457013
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
    RelativeSpeed: 4.14561898775706
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1585.872600845
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ForeachObject
    Time: 
      Ticks: 9179159
      Days: 0
      Hours: 0
      Milliseconds: 917
      Minutes: 0
      Seconds: 0
      TotalDays: 1.06240266203704e-05
      TotalHours: 0.000254976638888889
      TotalMilliseconds: 917.9159
      TotalMinutes: 0.0152985983333333
      TotalSeconds: 0.9179159
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 5.89332805153732
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1115.57060946433
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2295
---




|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|ScriptBlock                     |1024       |00:00:00.155755|1x           |6574.42/s |
|DotScriptBlock                  |1024       |00:00:00.168169|1.08x        |6089.11/s |
|ScriptBlockWithPipelineParameter|1024       |00:00:00.645701|4.15x        |1585.87/s |
|ForeachObject                   |1024       |00:00:00.917915|5.89x        |1115.57/s |
