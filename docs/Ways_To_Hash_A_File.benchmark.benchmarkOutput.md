---
layout: Benchmark

Data: 
  - Technique: DotNet
    Time: 
      value: 00:00:00.0139218
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Ways To Hash A File
    Throughput: 7182.97921245816
    BenchmarkInput: System.Collections.Hashtable
  - Technique: GetFileHash
    Time: 
      value: 00:00:00.0500065
      FileName: Ways To Hash A File
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.59195649987789
    ClockSpeed: 2594
    FileName: Ways To Hash A File
    Throughput: 1999.74003379561
    BenchmarkInput: System.Collections.Hashtable
FileName: Ways To Hash A File
ClockSpeed: 2594
---
Ways To Hash A File
-------------------
> @2594 Mhz


### 


|Technique  |Time           |RelativeSpeed|Throughput|
|-----------|---------------|-------------|----------|
|DotNet     |00:00:00.013921|1x           |7182.98/s |
|GetFileHash|00:00:00.050006|3.59x        |1999.74/s |
