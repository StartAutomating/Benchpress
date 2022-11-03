---
layout: Benchmark

Data: 
  - Technique: StaticConstructor
    Time: 
      value: 00:00:00.5020362
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is The Static Constructor
    Throughput: 20396.9355197892
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object
    Time: 
      value: 00:00:01.4596078
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.90737560359193
    ClockSpeed: 2095
    FileName: How Much Faster Is The Static Constructor
    Throughput: 7015.58322722035
    BenchmarkInput: System.Collections.Hashtable
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2095
---
How Much Faster Is The Static Constructor
-----------------------------------------
> @2095 Mhz


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.502036|1x           |20396.94/s|
|New-Object       |00:00:01.459607|2.91x        |7015.58/s |
