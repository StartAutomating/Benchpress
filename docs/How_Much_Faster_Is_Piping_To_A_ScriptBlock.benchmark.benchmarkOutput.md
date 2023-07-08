---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1376511
      Days: 0
      Hours: 0
      Milliseconds: 137
      Minutes: 0
      Seconds: 0
      TotalDays: 1.59318402777778e-06
      TotalHours: 3.82364166666667e-05
      TotalMilliseconds: 137.6511
      TotalMinutes: 0.002294185
      TotalSeconds: 0.1376511
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
    Throughput: 7439.09783503365
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1607271
      Days: 0
      Hours: 0
      Milliseconds: 160
      Minutes: 0
      Seconds: 0
      TotalDays: 1.86026736111111e-06
      TotalHours: 4.46464166666667e-05
      TotalMilliseconds: 160.7271
      TotalMinutes: 0.002678785
      TotalSeconds: 0.1607271
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        RepeatCount: 1024
    RelativeSpeed: 1.16764123207152
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 6371.04757069592
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 6461642
      Days: 0
      Hours: 0
      Milliseconds: 646
      Minutes: 0
      Seconds: 0
      TotalDays: 7.47875231481482e-06
      TotalHours: 0.000179490055555556
      TotalMilliseconds: 646.1642
      TotalMinutes: 0.0107694033333333
      TotalSeconds: 0.6461642
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
    RelativeSpeed: 4.69421748173462
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1584.7365112459
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ForeachObject
    Time: 
      Ticks: 8488357
      Days: 0
      Hours: 0
      Milliseconds: 848
      Minutes: 0
      Seconds: 0
      TotalDays: 9.82448726851852e-06
      TotalHours: 0.000235787694444444
      TotalMilliseconds: 848.8357
      TotalMinutes: 0.0141472616666667
      TotalSeconds: 0.8488357
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        RepeatCount: 1024
    RelativeSpeed: 6.16657404118093
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1206.35830938779
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2095
---




|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|ScriptBlock                     |1024       |00:00:00.137651|1x           |7439.1/s  |
|DotScriptBlock                  |1024       |00:00:00.160727|1.17x        |6371.05/s |
|ScriptBlockWithPipelineParameter|1024       |00:00:00.646164|4.69x        |1584.74/s |
|ForeachObject                   |1024       |00:00:00.848835|6.17x        |1206.36/s |
