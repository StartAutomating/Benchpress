---
layout: Benchmark

Data: 
  - Technique: Get-Module -ExpandProperty Name
    Time: 
      value: 00:00:00.0024270
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 4120.31314379893
    BenchmarkInput: System.Collections.Hashtable
  - Technique: foreach Get-Module
    Time: 
      value: 00:00:00.0035116
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.44688916357643
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 2847.70474997152
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ExecutionContextAndArrayList
    Time: 
      value: 00:00:00.0078121
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.21882983106716
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 1280.06553935562
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ExecutionContextAndHashtable
    Time: 
      value: 00:00:00.0116841
      FileName: What Is The Fastest Way To Get All Loaded Modules
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 4.81421508034611
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Get All Loaded Modules
    Throughput: 855.863951866211
    BenchmarkInput: System.Collections.Hashtable
FileName: What Is The Fastest Way To Get All Loaded Modules
ClockSpeed: 2793
---
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2793 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|00:00:00.002427|1x           |4120.31/s |
|foreach Get-Module             |00:00:00.003511|1.45x        |2847.7/s  |
|ExecutionContextAndArrayList   |00:00:00.007812|3.22x        |1280.07/s |
|ExecutionContextAndHashtable   |00:00:00.011684|4.81x        |855.86/s  |
