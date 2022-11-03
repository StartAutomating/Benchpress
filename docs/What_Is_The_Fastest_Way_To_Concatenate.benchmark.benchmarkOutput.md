---
layout: Benchmark

Data: 
  - Technique: AddStrings
    Time: 
      value: 00:00:00.0048494
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 20621.1077659092
    BenchmarkInput: System.Collections.Hashtable
  - Technique: JoinStrings
    Time: 
      value: 00:00:00.0052009
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.07248319379717
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 19227.4414043723
    BenchmarkInput: System.Collections.Hashtable
  - Technique: StringBuilder
    Time: 
      value: 00:00:00.0089949
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.85484802243577
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 11117.4109773316
    BenchmarkInput: System.Collections.Hashtable
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2793
---
What Is The Fastest Way To Concatenate
--------------------------------------
> @2793 Mhz


### 


|Technique    |Time           |RelativeSpeed|Throughput|
|-------------|---------------|-------------|----------|
|AddStrings   |00:00:00.004849|1x           |20621.11/s|
|JoinStrings  |00:00:00.005200|1.07x        |19227.44/s|
|StringBuilder|00:00:00.008994|1.85x        |11117.41/s|
