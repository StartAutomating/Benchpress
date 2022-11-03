---
layout: Benchmark

Data: 
  - Technique: SystemNamespaceIncluded
    Time: 
      value: 00:00:00.0037903
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Should I Include The System Namespace
    Throughput: 26383.135899533
    BenchmarkInput: System.Collections.Hashtable
  - Technique: NoSytemNamespace
    Time: 
      value: 00:00:00.0047812
      FileName: Should I Include The System Namespace
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.26143049362847
    ClockSpeed: 2793
    FileName: Should I Include The System Namespace
    Throughput: 20915.2514013218
    BenchmarkInput: System.Collections.Hashtable
FileName: Should I Include The System Namespace
ClockSpeed: 2793
---
Should I Include The System Namespace
-------------------------------------
> @2793 Mhz


### 


|Technique              |Time           |RelativeSpeed|Throughput|
|-----------------------|---------------|-------------|----------|
|SystemNamespaceIncluded|00:00:00.003790|1x           |26383.14/s|
|NoSytemNamespace       |00:00:00.004781|1.26x        |20915.25/s|
