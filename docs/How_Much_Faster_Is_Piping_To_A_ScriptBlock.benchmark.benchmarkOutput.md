---
layout: Benchmark

Data: 
  - Technique: ScriptBlock
    Time: 
      value: 00:00:00.1389445
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 7369.84911241539
    BenchmarkInput: System.Collections.Hashtable
  - Technique: DotScriptBlock
    Time: 
      value: 00:00:00.1443765
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.03909474646352
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 7092.56700363286
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ScriptBlockWithPipelineParameter
    Time: 
      value: 00:00:00.5990938
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 4.31174893572614
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1709.24820119988
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ForeachObject
    Time: 
      value: 00:00:00.7539735
      FileName: How Much Faster Is Piping To A ScriptBlock
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 5.42643645484348
    ClockSpeed: 2793
    FileName: How Much Faster Is Piping To A ScriptBlock
    Throughput: 1358.13791864038
    BenchmarkInput: System.Collections.Hashtable
FileName: How Much Faster Is Piping To A ScriptBlock
ClockSpeed: 2793
---
How Much Faster Is Piping To A ScriptBlock
------------------------------------------
> @2793 Mhz


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.138944|1x           |7369.85/s |
|DotScriptBlock                  |00:00:00.144376|1.04x        |7092.57/s |
|ScriptBlockWithPipelineParameter|00:00:00.599093|4.31x        |1709.25/s |
|ForeachObject                   |00:00:00.753973|5.43x        |1358.14/s |
