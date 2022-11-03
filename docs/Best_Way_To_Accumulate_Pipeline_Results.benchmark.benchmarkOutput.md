---
layout: Benchmark

Data: 
  - Technique: Arraylist
    Time: 
      value: 00:00:00.0185847
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 5380.77020344692
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Queue
    Time: 
      value: 00:00:00.0261185
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.40537646558728
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 3828.70379233111
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Array
    Time: 
      value: 00:00:00.0405484
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.18181622517447
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2466.18855491215
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Tee-Object
    Time: 
      value: 00:00:00.0538606
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.89811511619773
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 1856.64474588103
    BenchmarkInput: System.Collections.Hashtable
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2095
---
Best Way To Accumulate Pipeline Results
---------------------------------------
> @2095 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Arraylist |00:00:00.018584|1x           |5380.77/s |
|Queue     |00:00:00.026118|1.41x        |3828.7/s  |
|Array     |00:00:00.040548|2.18x        |2466.19/s |
|Tee-Object|00:00:00.053860|2.9x         |1856.64/s |
