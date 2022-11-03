---
layout: Benchmark

Data: 
  - Technique: Runspace
    Time: 
      value: 00:00:01.0112342
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    Throughput: 2.96667181549042
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ForEach-Object -Parallel
    Time: 
      value: 00:00:01.2653937
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.25133594176305
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    Throughput: 2.37080364790816
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Start-ThreadJob
    Time: 
      value: 00:00:02.1797070
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.15549177430906
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    Throughput: 1.37633177303188
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Start-Job
    Time: 
      value: 00:00:37.2174274
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 36.8039643042136
    GroupName: Multi-Threading
    ClockSpeed: 2095
    FileName: multithreading
    Throughput: 0.0806073984576376
    BenchmarkInput: System.Collections.Hashtable
FileName: multithreading
ClockSpeed: 2095
---
multithreading
--------------
> @2095 Mhz


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:01.011234|1x           |2.97/s    |
|ForEach-Object -Parallel|00:00:01.265393|1.25x        |2.37/s    |
|Start-ThreadJob         |00:00:02.179707|2.16x        |1.38/s    |
|Start-Job               |00:00:37.217427|36.8x        |0.08/s    |
