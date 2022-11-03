---
layout: Benchmark

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1804530
      Days: 0
      Hours: 0
      Milliseconds: 180
      Minutes: 0
      Seconds: 0
      TotalDays: 2.08857638888889e-06
      TotalHours: 5.01258333333333e-05
      TotalMilliseconds: 180.453
      TotalMinutes: 0.00300755
      TotalSeconds: 0.180453
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
    Throughput: 5674.60779261082
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1828364
      Days: 0
      Hours: 0
      Milliseconds: 182
      Minutes: 0
      Seconds: 0
      TotalDays: 2.11616203703704e-06
      TotalHours: 5.07878888888889e-05
      TotalMilliseconds: 182.8364
      TotalMinutes: 0.00304727333333333
      TotalSeconds: 0.1828364
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1.01320787130167
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 5600.63532206935
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 7544751
      Days: 0
      Hours: 0
      Milliseconds: 754
      Minutes: 0
      Seconds: 0
      TotalDays: 8.73235069444444e-06
      TotalHours: 0.000209576416666667
      TotalMilliseconds: 754.4751
      TotalMinutes: 0.012574585
      TotalSeconds: 0.7544751
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
    RelativeSpeed: 4.18100613456135
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1357.23498363299
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
  - Technique: ForeachObject
    Time: 
      Ticks: 9518247
      Days: 0
      Hours: 0
      Milliseconds: 951
      Minutes: 0
      Seconds: 0
      TotalDays: 1.10164895833333e-05
      TotalHours: 0.00026439575
      TotalMilliseconds: 951.8247
      TotalMinutes: 0.015863745
      TotalSeconds: 0.9518247
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 5.27464048810494
    ClockSpeed: 2295
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1075.8283536874
    BenchmarkInput: 
      FileName: How Much Faster Is Piping To A ScriptBlock
      RepeatCount: 1024
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2295
---
How Much Faster Is Piping To A ScriptBlock
------------------------------------------
> @2295 Mhz


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.180453|1x           |5674.61/s |
|DotScriptBlock                  |00:00:00.182836|1.01x        |5600.64/s |
|ScriptBlockWithPipelineParameter|00:00:00.754475|4.18x        |1357.23/s |
|ForeachObject                   |00:00:00.951824|5.27x        |1075.83/s |
