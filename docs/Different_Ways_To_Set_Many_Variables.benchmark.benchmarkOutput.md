---
layout: Benchmark

Data: 
  - Technique: Simple Assignment
    Time: 
      value: 00:00:00.0464910
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    Throughput: 22025.7684282979
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Multiple Assignment
    Time: 
      value: 00:00:00.0483253
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.03945494826956
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    Throughput: 21189.7287756103
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ExecutionContext
    Time: 
      value: 00:00:00.0608227
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.3082682669764
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    Throughput: 16835.81952133
    BenchmarkInput: System.Collections.Hashtable
  - Technique: SetFromSplat
    Time: 
      value: 00:00:00.0720756
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.55031296379945
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    Throughput: 14207.3045524422
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Set-Variable
    Time: 
      value: 00:00:00.4198823
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 9.0314749091222
    ClockSpeed: 2095
    FileName: Different Ways To Set Many Variables
    Throughput: 2438.77867678633
    BenchmarkInput: System.Collections.Hashtable
FileName: Different Ways To Set Many Variables
ClockSpeed: 2095
---
Different Ways To Set Many Variables
------------------------------------
> @2095 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Simple Assignment  |00:00:00.046491|1x           |22025.77/s|
|Multiple Assignment|00:00:00.048325|1.04x        |21189.73/s|
|ExecutionContext   |00:00:00.060822|1.31x        |16835.82/s|
|SetFromSplat       |00:00:00.072075|1.55x        |14207.3/s |
|Set-Variable       |00:00:00.419882|9.03x        |2438.78/s |
