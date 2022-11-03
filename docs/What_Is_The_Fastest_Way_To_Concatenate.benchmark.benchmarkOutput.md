---
layout: Benchmark

Data: 
  - Technique: JoinStrings
    Time: 
      value: 00:00:00.0060146
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 16626.2095567453
    BenchmarkInput: System.Collections.Hashtable
  - Technique: AddStrings
    Time: 
      value: 00:00:00.0065790
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.09383832673827
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 15199.8784009728
    BenchmarkInput: System.Collections.Hashtable
  - Technique: StringBuilder
    Time: 
      value: 00:00:00.0441488
      FileName: What Is The Fastest Way To Concatenate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 7.34027200478835
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Concatenate
    Throughput: 2265.0672271953
    BenchmarkInput: System.Collections.Hashtable
FileName: What Is The Fastest Way To Concatenate
ClockSpeed: 2095
---
What Is The Fastest Way To Concatenate
--------------------------------------
> @2095 Mhz


### 


|Technique    |Time           |RelativeSpeed|Throughput|
|-------------|---------------|-------------|----------|
|JoinStrings  |00:00:00.006014|1x           |16626.21/s|
|AddStrings   |00:00:00.006579|1.09x        |15199.88/s|
|StringBuilder|00:00:00.044148|7.34x        |2265.07/s |
