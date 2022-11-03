---
layout: Benchmark

Data: 
  - Technique: ArrayList.Sort
    Time: 
      value: 00:00:00.0193302
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Sort
    Throughput: 5173.25221673858
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Sort-Object
    Time: 
      value: 00:00:00.0867182
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 4.48615120381579
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Sort
    Throughput: 1153.16046689161
    BenchmarkInput: System.Collections.Hashtable
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2793
---
What Is The Fastest Way To Sort
-------------------------------
> @2793 Mhz


### 


|Technique     |Time           |RelativeSpeed|Throughput|
|--------------|---------------|-------------|----------|
|ArrayList.Sort|00:00:00.019330|1x           |5173.25/s |
|Sort-Object   |00:00:00.086718|4.49x        |1153.16/s |
