---
layout: Benchmark

Data: 
  - Technique: Array
    Time: 
      value: 00:00:00.0169449
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 5901.48068150299
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Arraylist
    Time: 
      value: 00:00:00.0203461
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.20072116093928
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 4914.94684484987
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Queue
    Time: 
      value: 00:00:00.0349072
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.06004166445361
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2864.73850666911
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Tee-Object
    Time: 
      value: 00:00:00.0396020
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.33710437948881
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2525.12499368719
    BenchmarkInput: System.Collections.Hashtable
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2594
---
Best Way To Accumulate Pipeline Results
---------------------------------------
> @2594 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Array     |00:00:00.016944|1x           |5901.48/s |
|Arraylist |00:00:00.020346|1.2x         |4914.95/s |
|Queue     |00:00:00.034907|2.06x        |2864.74/s |
|Tee-Object|00:00:00.039602|2.34x        |2525.12/s |
