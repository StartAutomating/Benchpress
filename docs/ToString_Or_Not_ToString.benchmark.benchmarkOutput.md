---
layout: Benchmark

Data: 
  - Technique: Quoted
    Time: 
      value: 00:00:00.0048686
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: ToString Or Not ToString
    Throughput: 20539.7855646387
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ToString
    Time: 
      value: 00:00:00.0056061
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.15148091853921
    ClockSpeed: 2594
    FileName: ToString Or Not ToString
    Throughput: 17837.7124917501
    BenchmarkInput: System.Collections.Hashtable
FileName: ToString Or Not ToString
ClockSpeed: 2594
---
ToString Or Not ToString
------------------------
> @2594 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|Quoted   |00:00:00.004868|1x           |20539.79/s|
|ToString |00:00:00.005606|1.15x        |17837.71/s|
