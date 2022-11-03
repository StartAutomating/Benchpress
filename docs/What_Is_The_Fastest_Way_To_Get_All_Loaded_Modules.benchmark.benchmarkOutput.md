---
layout: Benchmark

Data: 
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      value: 00:00:00.0032757
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 3052.78261135025
    BenchmarkInput: System.Collections.Hashtable
  - Technique: foreach Get-Module
    Time: 
      value: 00:00:00.0039819
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.21558750801355
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 2511.3639217459
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ExecutionContextAndArrayList
    Time: 
      value: 00:00:00.0115988
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.54086149525292
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 862.158154291823
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ExecutionContextAndHashtable
    Time: 
      value: 00:00:00.0138784
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 4.23677381933632
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 720.544154945815
    BenchmarkInput: System.Collections.Hashtable
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2095
---
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2095 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|00:00:00.003275|1x           |3052.78/s |
|foreach Get-Module             |00:00:00.003981|1.22x        |2511.36/s |
|ExecutionContextAndArrayList   |00:00:00.011598|3.54x        |862.16/s  |
|ExecutionContextAndHashtable   |00:00:00.013878|4.24x        |720.54/s  |
