---
layout: Benchmark

Data: 
  - Technique: ScriptBlock
    Time: 
      value: 00:00:00.1636301
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 6258.01732077411
    BenchmarkInput: System.Collections.Hashtable
  - Technique: DotScriptBlock
    Time: 
      value: 00:00:00.1834972
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.12141470304058
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 5580.46662292395
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      value: 00:00:00.7382259
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 4.51155319223052
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1387.10928456994
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ForeachObject
    Time: 
      value: 00:00:00.9520325
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 5.81819909662098
    ClockSpeed: 2095
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1075.59353278381
    BenchmarkInput: System.Collections.Hashtable
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2095
---
How Much Faster Is Piping To A ScriptBlock
------------------------------------------
> @2095 Mhz


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.163630|1x           |6258.02/s |
|DotScriptBlock                  |00:00:00.183497|1.12x        |5580.47/s |
|ScriptBlockWithPipelineParameter|00:00:00.738225|4.51x        |1387.11/s |
|ForeachObject                   |00:00:00.952032|5.82x        |1075.59/s |
