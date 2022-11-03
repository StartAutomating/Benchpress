---
layout: Benchmark

Data: 
  - Technique: JoinStrings
    Time: 
      value: 00:00:00.0049168
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 20338.4315001627
    BenchmarkInput: System.Collections.Hashtable
  - Technique: AddStrings
    Time: 
      value: 00:00:00.0049599
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.00876586397657
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 20161.6968084034
    BenchmarkInput: System.Collections.Hashtable
  - Technique: StringBuilder
    Time: 
      value: 00:00:00.0089656
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.82346241457859
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 11153.7431962167
    BenchmarkInput: System.Collections.Hashtable
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2594
---
What Is The Fastest Way To Concatenate
--------------------------------------
> @2594 Mhz


### 


|Technique    |Time           |RelativeSpeed|Throughput|
|-------------|---------------|-------------|----------|
|JoinStrings  |00:00:00.004916|1x           |20338.43/s|
|AddStrings   |00:00:00.004959|1.01x        |20161.7/s |
|StringBuilder|00:00:00.008965|1.82x        |11153.74/s|
