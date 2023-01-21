---
layout: Benchmark

Data: 
  - Technique: ScriptBlock
    Time: 
      Ticks: 1414200
      Days: 0
      Hours: 0
      Milliseconds: 141
      Minutes: 0
      Seconds: 0
      TotalDays: 1.63680555555556e-06
      TotalHours: 3.92833333333333e-05
      TotalMilliseconds: 141.42
      TotalMinutes: 0.002357
      TotalSeconds: 0.14142
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
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 7240.84287936643
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: DotScriptBlock
    Time: 
      Ticks: 1505692
      Days: 0
      Hours: 0
      Milliseconds: 150
      Minutes: 0
      Seconds: 0
      TotalDays: 1.74269907407407e-06
      TotalHours: 4.18247777777778e-05
      TotalMilliseconds: 150.5692
      TotalMinutes: 0.00250948666666667
      TotalSeconds: 0.1505692
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | . {
                              process { $_ } 
                          }
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 1.06469523405459
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 6800.85967116781
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      Ticks: 5765409
      Days: 0
      Hours: 0
      Milliseconds: 576
      Minutes: 0
      Seconds: 0
      TotalDays: 6.67292708333333e-06
      TotalHours: 0.00016015025
      TotalMilliseconds: 576.5409
      TotalMinutes: 0.009609015
      TotalSeconds: 0.5765409
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
    RelativeSpeed: 4.07679889690284
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1776.10989957521
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
  - Technique: ForeachObject
    Time: 
      Ticks: 6992453
      Days: 0
      Hours: 0
      Milliseconds: 699
      Minutes: 0
      Seconds: 0
      TotalDays: 8.09311689814815e-06
      TotalHours: 0.000194234805555556
      TotalMilliseconds: 699.2453
      TotalMinutes: 0.0116540883333333
      TotalSeconds: 0.6992453
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          1..100 | % {
                              $_
                          }            
                      
        RepeatCount: 1024
        FileName: How Much Faster Is Piping To A ScriptBlock
    RelativeSpeed: 4.94445835101117
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1464.43601408547
    BenchmarkInput: 
      RepeatCount: 1024
      FileName: How Much Faster Is Piping To A ScriptBlock
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2793
---
How Much Faster Is Piping To A ScriptBlock
------------------------------------------
> @2793 Mhz


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.141420|1x           |7240.84/s |
|DotScriptBlock                  |00:00:00.150569|1.06x        |6800.86/s |
|ScriptBlockWithPipelineParameter|00:00:00.576540|4.08x        |1776.11/s |
|ForeachObject                   |00:00:00.699245|4.94x        |1464.44/s |
