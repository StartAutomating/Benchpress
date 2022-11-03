---
layout: Benchmark

Data: 
  - Technique: StaticConstructor
    Time: 
      value: 00:00:00.3269123
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: How Much Faster Is The Static Constructor
    Throughput: 31323.385507367
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object
    Time: 
      value: 00:00:01.1355881
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.47367810877719
    ClockSpeed: 2793
    FileName: How Much Faster Is The Static Constructor
    Throughput: 9017.35409168166
    BenchmarkInput: System.Collections.Hashtable
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2793
---
How Much Faster Is The Static Constructor
-----------------------------------------
> @2793 Mhz


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.326912|1x           |31323.39/s|
|New-Object       |00:00:01.135588|3.47x        |9017.35/s |
