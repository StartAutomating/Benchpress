---
layout: Benchmark

Data: 
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      value: 00:00:00.0025307
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 3951.47587623978
    BenchmarkInput: System.Collections.Hashtable
  - Technique: foreach Get-Module
    Time: 
      value: 00:00:00.0034433
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.36061168846564
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 2904.19074724828
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ExecutionContextAndArrayList
    Time: 
      value: 00:00:00.0077397
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.0583237839333
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 1292.0397431425
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ExecutionContextAndHashtable
    Time: 
      value: 00:00:00.0110164
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 4.35310388430079
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 907.737554918122
    BenchmarkInput: System.Collections.Hashtable
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2594
---
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2594 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|00:00:00.002530|1x           |3951.48/s |
|foreach Get-Module             |00:00:00.003443|1.36x        |2904.19/s |
|ExecutionContextAndArrayList   |00:00:00.007739|3.06x        |1292.04/s |
|ExecutionContextAndHashtable   |00:00:00.011016|4.35x        |907.74/s  |
