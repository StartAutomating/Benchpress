---
layout: Benchmark

Data: 
  - Technique: ArrayList.Sort
    Time: 
      value: 00:00:00.0230623
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Sort
    Throughput: 4336.08096330375
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Sort-Object
    Time: 
      value: 00:00:00.1060777
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 4.59961495601046
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Sort
    Throughput: 942.705205712417
    BenchmarkInput: System.Collections.Hashtable
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2095
---
What Is The Fastest Way To Sort
-------------------------------
> @2095 Mhz


### 


|Technique     |Time           |RelativeSpeed|Throughput|
|--------------|---------------|-------------|----------|
|ArrayList.Sort|00:00:00.023062|1x           |4336.08/s |
|Sort-Object   |00:00:00.106077|4.6x         |942.71/s  |
