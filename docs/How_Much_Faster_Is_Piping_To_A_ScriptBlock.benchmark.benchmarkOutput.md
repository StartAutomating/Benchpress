---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1388094
      Days: 0
      Hours: 0
      Milliseconds: 138
      Minutes: 0
      Seconds: 0
      TotalDays: 1.60659027777778e-06
      TotalHours: 3.85581666666667e-05
      TotalMilliseconds: 138.8094
      TotalMinutes: 0.00231349
      TotalSeconds: 0.1388094
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        RepeatCount: 1024
        ScriptBlock: |
          
                          1..100 | &{
                              process { $_}
                          }
                      
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 7377.02201724091
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1549846
      Days: 0
      Hours: 0
      Milliseconds: 154
      Minutes: 0
      Seconds: 0
      TotalDays: 1.79380324074074e-06
      TotalHours: 4.30512777777778e-05
      TotalMilliseconds: 154.9846
      TotalMinutes: 0.00258307666666667
      TotalSeconds: 0.1549846
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        RepeatCount: 1024
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
    RelativeSpeed: 1.11652813138015
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 6607.10806105897
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 5838553
      Days: 0
      Hours: 0
      Milliseconds: 583
      Minutes: 0
      Seconds: 0
      TotalDays: 6.75758449074074e-06
      TotalHours: 0.000162182027777778
      TotalMilliseconds: 583.8553
      TotalMinutes: 0.00973092166666667
      TotalSeconds: 0.5838553
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        RepeatCount: 1024
        ScriptBlock: |
          
                      1..100 | & {
                          param([Parameter(ValueFromPipeline=$true)]$inputobject)
                          process { $inputObject } 
                      }
                      
    RelativeSpeed: 4.20616543260039
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1753.85921820013
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ForeachObject
    Time: 
      Ticks: 7897839
      Days: 0
      Hours: 0
      Milliseconds: 789
      Minutes: 0
      Seconds: 0
      TotalDays: 9.14101736111111e-06
      TotalHours: 0.000219384416666667
      TotalMilliseconds: 789.7839
      TotalMinutes: 0.013163065
      TotalSeconds: 0.7897839
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is Piping To A ScriptBlock
        RepeatCount: 1024
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
    RelativeSpeed: 5.68970040933827
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1296.55719748149
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2594
---




|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|ScriptBlock                     |1024       |00:00:00.138809|1x           |7377.02/s |
|DotScriptBlock                  |1024       |00:00:00.154984|1.12x        |6607.11/s |
|ScriptBlockWithPipelineParameter|1024       |00:00:00.583855|4.21x        |1753.86/s |
|ForeachObject                   |1024       |00:00:00.789783|5.69x        |1296.56/s |
