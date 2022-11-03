---
layout: Benchmark

Data: 
  - Technique: Foreach Statement
    Time: 
      value: 00:00:00.0067633
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 14785.6815459909
    BenchmarkInput: System.Collections.Hashtable
  - Technique: For loop
    Time: 
      value: 00:00:00.0069330
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.02509130158355
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 14423.7703735757
    BenchmarkInput: System.Collections.Hashtable
  - Technique: For _
    Time: 
      value: 00:00:00.0070358
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.04029098221283
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 14213.0248159413
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Foreach _
    Time: 
      value: 00:00:00.0084994
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.25669421731995
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 11765.5363908041
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Pipe to ScriptBlock
    Time: 
      value: 00:00:00.0151937
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.24649209705321
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 6581.67529963077
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Foreach-Object
    Time: 
      value: 00:00:00.0776327
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 11.4785237975544
    ClockSpeed: 2594
    FileName: Different Ways To Iterate
    Throughput: 1288.11699193768
    BenchmarkInput: System.Collections.Hashtable
FileName: Different Ways To Iterate
ClockSpeed: 2594
---
Different Ways To Iterate
-------------------------
> @2594 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Foreach Statement  |00:00:00.006763|1x           |14785.68/s|
|For loop           |00:00:00.006933|1.03x        |14423.77/s|
|For _              |00:00:00.007035|1.04x        |14213.02/s|
|Foreach _          |00:00:00.008499|1.26x        |11765.54/s|
|Pipe to ScriptBlock|00:00:00.015193|2.25x        |6581.68/s |
|Foreach-Object     |00:00:00.077632|11.48x       |1288.12/s |
