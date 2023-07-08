---
layout: Benchmark
title: How Much Faster Is Piping To A ScriptBlock

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1947970
      Days: 0
      Hours: 0
      Milliseconds: 194
      Minutes: 0
      Seconds: 0
      TotalDays: 2.25459490740741e-06
      TotalHours: 5.41102777777778e-05
      TotalMilliseconds: 194.797
      TotalMinutes: 0.00324661666666667
      TotalSeconds: 0.194797
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
    Throughput: 5256.75446747127
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: DotScriptBlock
    Time: 
      Ticks: 2167368
      Days: 0
      Hours: 0
      Milliseconds: 216
      Minutes: 0
      Seconds: 0
      TotalDays: 2.50852777777778e-06
      TotalHours: 6.02046666666667e-05
      TotalMilliseconds: 216.7368
      TotalMinutes: 0.00361228
      TotalSeconds: 0.2167368
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1.11262904459514
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 4724.62452153949
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 7665939
      Days: 0
      Hours: 0
      Milliseconds: 766
      Minutes: 0
      Seconds: 0
      TotalDays: 8.87261458333333e-06
      TotalHours: 0.00021294275
      TotalMilliseconds: 766.5939
      TotalMinutes: 0.012776565
      TotalSeconds: 0.7665939
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
    RelativeSpeed: 3.93534756695432
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1335.77895675924
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ForeachObject
    Time: 
      Ticks: 9564373
      Days: 0
      Hours: 0
      Milliseconds: 956
      Minutes: 0
      Seconds: 0
      TotalDays: 1.10698761574074e-05
      TotalHours: 0.000265677027777778
      TotalMilliseconds: 956.4373
      TotalMinutes: 0.0159406216666667
      TotalSeconds: 0.9564373
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 4.90991801721792
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    RepeatCount: 1024
    Throughput: 1070.63996772188
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2295
---




|Technique                       |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------------------------|-----------|---------------|-------------|----------|
|ScriptBlock                     |1024       |00:00:00.194797|1x           |5256.75/s |
|DotScriptBlock                  |1024       |00:00:00.216736|1.11x        |4724.62/s |
|ScriptBlockWithPipelineParameter|1024       |00:00:00.766593|3.94x        |1335.78/s |
|ForeachObject                   |1024       |00:00:00.956437|4.91x        |1070.64/s |
