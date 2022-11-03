---
layout: Benchmark

Data: 
  - Technique: StaticConstructor
    Time: 
      value: 00:00:00.3447965
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    Throughput: 29698.6773357618
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object
    Time: 
      value: 00:00:01.1226374
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.25594198316978
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    Throughput: 9121.37792665735
    BenchmarkInput: System.Collections.Hashtable
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2594
---
How Much Faster Is The Static Constructor
-----------------------------------------
> @2594 Mhz


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.344796|1x           |29698.68/s|
|New-Object       |00:00:01.122637|3.26x        |9121.38/s |
