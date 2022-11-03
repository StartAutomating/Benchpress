---
layout: Benchmark

Data: 
  - Technique: .GetType() -eq
    Time: 
      value: 00:00:00.0051582
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 19386.6077313792
    BenchmarkInput: System.Collections.Hashtable
  - Technique: .GetType().Name
    Time: 
      value: 00:00:00.0072487
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.40527703462448
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 13795.5771379696
    BenchmarkInput: System.Collections.Hashtable
  - Technique: -is operator
    Time: 
      value: 00:00:00.0335320
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 6.50071730448606
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 2982.22593343672
    BenchmarkInput: System.Collections.Hashtable
  - Technique: -is operator
    Time: 
      value: 00:00:00.0038814
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 25763.8996238471
    BenchmarkInput: System.Collections.Hashtable
  - Technique: .GetType().Name
    Time: 
      value: 00:00:00.0043031
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.10864636471376
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 23239.060212405
    BenchmarkInput: System.Collections.Hashtable
  - Technique: .GetType() -eq
    Time: 
      value: 00:00:00.0049085
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.26462101303653
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 20372.8226545788
    BenchmarkInput: System.Collections.Hashtable
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2594
---
What Is The Quickest Way To Compare Types
-----------------------------------------
> @2594 Mhz


### Multitype comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.003881|1x           |25763.9/s |
|.GetType().Name|00:00:00.004303|1.11x        |23239.06/s|
|.GetType() -eq |00:00:00.004908|1.26x        |20372.82/s|


### Single Type comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|.GetType() -eq |00:00:00.005158|1x           |19386.61/s|
|.GetType().Name|00:00:00.007248|1.41x        |13795.58/s|
|-is operator   |00:00:00.033532|6.5x         |2982.23/s |
