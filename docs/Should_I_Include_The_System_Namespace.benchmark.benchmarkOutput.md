---
layout: Benchmark

Data: 
  - Technique: NoSytemNamespace
    Time: 
      value: 00:00:00.0048321
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Should I Include The System Namespace
    Throughput: 20694.9359491732
    BenchmarkInput: System.Collections.Hashtable
  - Technique: SystemNamespaceIncluded
    Time: 
      value: 00:00:00.0062853
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.30073880921339
    ClockSpeed: 2095
    FileName: Should I Include The System Namespace
    Throughput: 15910.1395319237
    BenchmarkInput: System.Collections.Hashtable
FileName: Should I Include The System Namespace
ClockSpeed: 2095
---
Should I Include The System Namespace
-------------------------------------
> @2095 Mhz


### 


|Technique              |Time           |RelativeSpeed|Throughput|
|-----------------------|---------------|-------------|----------|
|NoSytemNamespace       |00:00:00.004832|1x           |20694.94/s|
|SystemNamespaceIncluded|00:00:00.006285|1.3x         |15910.14/s|
