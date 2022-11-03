---
layout: Benchmark

Data: 
  - Technique: Multiple Assignment
    Time: 
      value: 00:00:00.0357124
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 28673.5139615372
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Simple Assignment
    Time: 
      value: 00:00:00.0363923
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.01903820521724
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 28137.8203630988
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ExecutionContext
    Time: 
      value: 00:00:00.0440970
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.23478119644717
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 23221.53434474
    BenchmarkInput: System.Collections.Hashtable
  - Technique: SetFromSplat
    Time: 
      value: 00:00:00.0558333
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.56341494830927
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 18340.3094569012
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Set-Variable
    Time: 
      value: 00:00:00.3414373
      FileName: Different Ways To Set Many Variables
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 9.56074920755816
    ClockSpeed: 2793
    FileName: Different Ways To Set Many Variables
    Throughput: 2999.08650870892
    BenchmarkInput: System.Collections.Hashtable
FileName: Different Ways To Set Many Variables
ClockSpeed: 2793
---
Different Ways To Set Many Variables
------------------------------------
> @2793 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Multiple Assignment|00:00:00.035712|1x           |28673.51/s|
|Simple Assignment  |00:00:00.036392|1.02x        |28137.82/s|
|ExecutionContext   |00:00:00.044097|1.23x        |23221.53/s|
|SetFromSplat       |00:00:00.055833|1.56x        |18340.31/s|
|Set-Variable       |00:00:00.341437|9.56x        |2999.09/s |
