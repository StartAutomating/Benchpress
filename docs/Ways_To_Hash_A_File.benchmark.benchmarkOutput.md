---
layout: Benchmark

Data: 
  - Technique: DotNet
    Time: 
      value: 00:00:00.0144360
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Ways To Hash A File
    Throughput: 6927.12662787476
    BenchmarkInput: System.Collections.Hashtable
  - Technique: GetFileHash
    Time: 
      value: 00:00:00.0476467
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.3005472430036
    ClockSpeed: 2793
    FileName: Ways To Hash A File
    Throughput: 2098.78123773525
    BenchmarkInput: System.Collections.Hashtable
FileName: Ways To Hash A File
ClockSpeed: 2793
---
Ways To Hash A File
-------------------
> @2793 Mhz


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.014436|1x           |6927.13/s |
|GetFileHash|00:00:00.047646|3.3x         |2098.78/s |
