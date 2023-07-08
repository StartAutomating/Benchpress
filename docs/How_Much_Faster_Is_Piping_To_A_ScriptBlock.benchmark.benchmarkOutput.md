---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1280070
      Days: 0
      Hours: 0
      Milliseconds: 128
      Minutes: 0
      Seconds: 0
      TotalDays: 1.4815625e-06
      TotalHours: 3.55575e-05
      TotalMilliseconds: 128.007
      TotalMinutes: 0.00213345
      TotalSeconds: 0.128007
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
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 7999.56252392447
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1414871
      Days: 0
      Hours: 0
      Milliseconds: 141
      Minutes: 0
      Seconds: 0
      TotalDays: 1.63758217592593e-06
      TotalHours: 3.93019722222222e-05
      TotalMilliseconds: 141.4871
      TotalMinutes: 0.00235811833333333
      TotalSeconds: 0.1414871
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
    RelativeSpeed: 1.10530752224488
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 7237.40892279225
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 5817831
      Days: 0
      Hours: 0
      Milliseconds: 581
      Minutes: 0
      Seconds: 0
      TotalDays: 6.73360069444444e-06
      TotalHours: 0.000161606416666667
      TotalMilliseconds: 581.7831
      TotalMinutes: 0.009696385
      TotalSeconds: 0.5817831
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
                      
    RelativeSpeed: 4.54493191778575
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1760.10612889924
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ForeachObject
    Time: 
      Ticks: 7543927
      Days: 0
      Hours: 0
      Milliseconds: 754
      Minutes: 0
      Seconds: 0
      TotalDays: 8.73139699074074e-06
      TotalHours: 0.000209553527777778
      TotalMilliseconds: 754.3927
      TotalMinutes: 0.0125732116666667
      TotalSeconds: 0.7543927
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
    RelativeSpeed: 5.89337067504121
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1357.383230246
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2594
---




|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|ScriptBlock                     |1024       |00:00:00.128007|1x           |7999.56/s |
|DotScriptBlock                  |1024       |00:00:00.141487|1.11x        |7237.41/s |
|ScriptBlockWithPipelineParameter|1024       |00:00:00.581783|4.54x        |1760.11/s |
|ForeachObject                   |1024       |00:00:00.754392|5.89x        |1357.38/s |
