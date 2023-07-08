---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1232959
      Days: 0
      Hours: 0
      Milliseconds: 123
      Minutes: 0
      Seconds: 0
      TotalDays: 1.42703587962963e-06
      TotalHours: 3.42488611111111e-05
      TotalMilliseconds: 123.2959
      TotalMinutes: 0.00205493166666667
      TotalSeconds: 0.1232959
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
    RepeatCount: 1024
    Throughput: 8305.2234502526
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1367049
      Days: 0
      Hours: 0
      Milliseconds: 136
      Minutes: 0
      Seconds: 0
      TotalDays: 1.58223263888889e-06
      TotalHours: 3.79735833333333e-05
      TotalMilliseconds: 136.7049
      TotalMinutes: 0.002278415
      TotalSeconds: 0.1367049
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1.10875463012152
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 7490.58738933279
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 5540568
      Days: 0
      Hours: 0
      Milliseconds: 554
      Minutes: 0
      Seconds: 0
      TotalDays: 6.41269444444444e-06
      TotalHours: 0.000153904666666667
      TotalMilliseconds: 554.0568
      TotalMinutes: 0.00923428
      TotalSeconds: 0.5540568
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
    RelativeSpeed: 4.49371633606632
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1848.18596216128
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ForeachObject
    Time: 
      Ticks: 7344288
      Days: 0
      Hours: 0
      Milliseconds: 734
      Minutes: 0
      Seconds: 0
      TotalDays: 8.50033333333333e-06
      TotalHours: 0.000204008
      TotalMilliseconds: 734.4288
      TotalMinutes: 0.01224048
      TotalSeconds: 0.7344288
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 5.95663602763758
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1394.28083430279
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2793
---


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.123295|1x           |8305.22/s |
|DotScriptBlock                  |00:00:00.136704|1.11x        |7490.59/s |
|ScriptBlockWithPipelineParameter|00:00:00.554056|4.49x        |1848.19/s |
|ForeachObject                   |00:00:00.734428|5.96x        |1394.28/s |
