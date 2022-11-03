---
layout: Benchmark

Data: 
  - Technique: ForEach-Object -Parallel
    Time: 
      value: 00:00:00.9673689
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 3.1011954177977
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Runspace
    Time: 
      value: 00:00:01.0314670
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.06626024466985
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 2.9084788946229
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Start-ThreadJob
    Time: 
      value: 00:00:01.9677871
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.03416411257381
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 1.52455517164433
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Start-Job
    Time: 
      value: 00:00:29.5073941
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 30.5027317913569
    GroupName: Multi-Threading
    ClockSpeed: 2594
    FileName: multithreading
    Throughput: 0.101669432069571
    BenchmarkInput: System.Collections.Hashtable
FileName: multithreading
ClockSpeed: 2594
---
multithreading
--------------
> @2594 Mhz


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|ForEach-Object -Parallel|00:00:00.967368|1x           |3.1/s     |
|Runspace                |00:00:01.031467|1.07x        |2.91/s    |
|Start-ThreadJob         |00:00:01.967787|2.03x        |1.52/s    |
|Start-Job               |00:00:29.507394|30.5x        |0.1/s     |
