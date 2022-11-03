---
layout: Benchmark

Data: 
  - Technique: Quoted
    Time: 
      value: 00:00:00.0048106
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: ToString Or Not ToString
    Throughput: 20787.4277636885
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ToString
    Time: 
      value: 00:00:00.0052519
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.09173491872116
    ClockSpeed: 2793
    FileName: ToString Or Not ToString
    Throughput: 19040.7281174432
    BenchmarkInput: System.Collections.Hashtable
FileName: ToString Or Not ToString
ClockSpeed: 2793
---
ToString Or Not ToString
------------------------
> @2793 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|Quoted   |00:00:00.004810|1x           |20787.43/s|
|ToString |00:00:00.005251|1.09x        |19040.73/s|
