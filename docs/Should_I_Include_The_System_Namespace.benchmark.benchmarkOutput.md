---
layout: Benchmark

Data: 
  - Technique: SystemNamespaceIncluded
    Time: 
      value: 00:00:00.0040558
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    Throughput: 24656.0481286059
    BenchmarkInput: System.Collections.Hashtable
  - Technique: NoSytemNamespace
    Time: 
      value: 00:00:00.0290238
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 7.15612209675033
    ClockSpeed: 2594
    FileName: Should I Include The System Namespace
    Throughput: 3445.44821835873
    BenchmarkInput: System.Collections.Hashtable
FileName: Should I Include The System Namespace
ClockSpeed: 2594
---
Should I Include The System Namespace
-------------------------------------
> @2594 Mhz


### 


|Technique              |Time           |RelativeSpeed|Throughput|
|-----------------------|---------------|-------------|----------|
|SystemNamespaceIncluded|00:00:00.004055|1x           |24656.05/s|
|NoSytemNamespace       |00:00:00.029023|7.16x        |3445.45/s |
