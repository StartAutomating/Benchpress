---
layout: Benchmark

Data: 
  - Technique: ScriptBlock
    Time: 
      value: 00:00:00.1300640
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 7873.04711526633
    BenchmarkInput: System.Collections.Hashtable
  - Technique: DotScriptBlock
    Time: 
      value: 00:00:00.1451226
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.11577838602534
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 7056.10290885086
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      value: 00:00:00.6018182
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 4.62709281584451
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1701.51052261298
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ForeachObject
    Time: 
      value: 00:00:00.7557867
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 5.81088310370279
    ClockSpeed: 2594
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1354.87962410558
    BenchmarkInput: System.Collections.Hashtable
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2594
---
How Much Faster Is Piping To A ScriptBlock
------------------------------------------
> @2594 Mhz


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.130064|1x           |7873.05/s |
|DotScriptBlock                  |00:00:00.145122|1.12x        |7056.1/s  |
|ScriptBlockWithPipelineParameter|00:00:00.601818|4.63x        |1701.51/s |
|ForeachObject                   |00:00:00.755786|5.81x        |1354.88/s |
