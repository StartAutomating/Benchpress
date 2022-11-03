---
layout: Benchmark

Data: 
  - Technique: Simple Assignment
    Time: 
      value: 00:00:00.0355889
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 28773.0163056459
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Multiple Assignment
    Time: 
      value: 00:00:00.0382474
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.07470025766461
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 26773.0616983115
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ExecutionContext
    Time: 
      value: 00:00:00.0481089
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.3517950821745
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 21285.0428922715
    BenchmarkInput: System.Collections.Hashtable
  - Technique: SetFromSplat
    Time: 
      value: 00:00:00.0567730
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.59524458468792
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 18036.7428178888
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Set-Variable
    Time: 
      value: 00:00:00.3268934
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 9.18526282071095
    ClockSpeed: 2594
    FileName: Different Ways To Set Many Variables
    Throughput: 3132.51965319581
    BenchmarkInput: System.Collections.Hashtable
FileName: Different Ways To Set Many Variables
ClockSpeed: 2594
---
Different Ways To Set Many Variables
------------------------------------
> @2594 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Simple Assignment  |00:00:00.035588|1x           |28773.02/s|
|Multiple Assignment|00:00:00.038247|1.07x        |26773.06/s|
|ExecutionContext   |00:00:00.048108|1.35x        |21285.04/s|
|SetFromSplat       |00:00:00.056773|1.6x         |18036.74/s|
|Set-Variable       |00:00:00.326893|9.19x        |3132.52/s |
