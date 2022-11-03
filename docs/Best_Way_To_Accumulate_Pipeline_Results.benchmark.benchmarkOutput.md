---
layout: Benchmark

Data: 
  - Technique: Array
    Time: 
      value: 00:00:00.0156115
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 6405.53438170579
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Queue
    Time: 
      value: 00:00:00.0159480
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.02155462319444
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 6270.37873087534
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Tee-Object
    Time: 
      value: 00:00:00.0366924
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.35034429747302
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2725.36002005865
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Arraylist
    Time: 
      value: 00:00:00.0428787
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.74660987092848
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2332.1602567242
    BenchmarkInput: System.Collections.Hashtable
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2793
---
Best Way To Accumulate Pipeline Results
---------------------------------------
> @2793 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Array     |00:00:00.015611|1x           |6405.53/s |
|Queue     |00:00:00.015948|1.02x        |6270.38/s |
|Tee-Object|00:00:00.036692|2.35x        |2725.36/s |
|Arraylist |00:00:00.042878|2.75x        |2332.16/s |
