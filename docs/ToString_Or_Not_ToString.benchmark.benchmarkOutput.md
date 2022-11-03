---
layout: Benchmark

Data: 
  - Technique: Quoted
    Time: 
      value: 00:00:00.0063206
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: ToString Or Not ToString
    Throughput: 15821.2827896086
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ToString
    Time: 
      value: 00:00:00.0068862
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.08948517545803
    ClockSpeed: 2095
    FileName: ToString Or Not ToString
    Throughput: 14521.7972176237
    BenchmarkInput: System.Collections.Hashtable
FileName: ToString Or Not ToString
ClockSpeed: 2095
---
ToString Or Not ToString
------------------------
> @2095 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|Quoted   |00:00:00.006320|1x           |15821.28/s|
|ToString |00:00:00.006886|1.09x        |14521.8/s |
