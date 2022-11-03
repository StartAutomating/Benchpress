---
layout: Benchmark

Data: 
  - Technique: ArrayList.Sort
    Time: 
      value: 00:00:00.0199110
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Sort
    Throughput: 5022.34945507508
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Sort-Object
    Time: 
      value: 00:00:00.0928575
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 4.66362814524635
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Sort
    Throughput: 1076.91893492717
    BenchmarkInput: System.Collections.Hashtable
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2594
---
What Is The Fastest Way To Sort
-------------------------------
> @2594 Mhz


### 


|Technique     |Time           |RelativeSpeed|Throughput|
|--------------|---------------|-------------|----------|
|ArrayList.Sort|00:00:00.019911|1x           |5022.35/s |
|Sort-Object   |00:00:00.092857|4.66x        |1076.92/s |
