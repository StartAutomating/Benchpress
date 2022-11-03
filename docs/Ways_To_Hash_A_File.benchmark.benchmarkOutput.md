---
layout: Benchmark

Data: 
  - Technique: DotNet
    Time: 
      value: 00:00:00.0168430
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Ways To Hash A File
    Throughput: 5937.18458706881
    BenchmarkInput: System.Collections.Hashtable
  - Technique: GetFileHash
    Time: 
      value: 00:00:00.0301680
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.79112984622692
    ClockSpeed: 2095
    FileName: Ways To Hash A File
    Throughput: 3314.77061787324
    BenchmarkInput: System.Collections.Hashtable
FileName: Ways To Hash A File
ClockSpeed: 2095
---
Ways To Hash A File
-------------------
> @2095 Mhz


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.016843|1x           |5937.18/s |
|GetFileHash|00:00:00.030168|1.79x        |3314.77/s |
