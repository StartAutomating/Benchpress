---
layout: Benchmark

Data: 
  - Technique: Runspace
    Time: 
      value: 00:00:00.6829240
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 4.39287534191213
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ForEach-Object -Parallel
    Time: 
      value: 00:00:00.8667150
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.26912365065512
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 3.46134542496668
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Start-ThreadJob
    Time: 
      value: 00:00:01.8657029
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.73193342158132
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 1.60797305937617
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Start-Job
    Time: 
      value: 00:00:27.1239762
      FileName: multithreading
      GroupName: Multi-Threading
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 39.7174154078638
    GroupName: Multi-Threading
    ClockSpeed: 2793
    FileName: multithreading
    Throughput: 0.110603252925727
    BenchmarkInput: System.Collections.Hashtable
FileName: multithreading
ClockSpeed: 2793
---
multithreading
--------------
> @2793 Mhz


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:00.682924|1x           |4.39/s    |
|ForEach-Object -Parallel|00:00:00.866715|1.27x        |3.46/s    |
|Start-ThreadJob         |00:00:01.865702|2.73x        |1.61/s    |
|Start-Job               |00:00:27.123976|39.72x       |0.11/s    |
