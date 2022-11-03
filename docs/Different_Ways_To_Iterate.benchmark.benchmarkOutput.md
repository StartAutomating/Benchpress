---
layout: Benchmark

Data: 
  - Technique: For loop
    Time: 
      value: 00:00:00.0076952
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    Throughput: 12995.1138371972
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Foreach _
    Time: 
      value: 00:00:00.0081145
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.05448851231937
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    Throughput: 12323.6182143077
    BenchmarkInput: System.Collections.Hashtable
  - Technique: For _
    Time: 
      value: 00:00:00.0091768
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.19253560661191
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    Throughput: 10897.0447214715
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Foreach Statement
    Time: 
      value: 00:00:00.0152931
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.98735575423641
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    Throughput: 6538.89662658323
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Pipe to ScriptBlock
    Time: 
      value: 00:00:00.0186571
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.42451138371972
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    Throughput: 5359.8898006657
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Foreach-Object
    Time: 
      value: 00:00:00.0916896
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 11.9151678968708
    ClockSpeed: 2095
    FileName: Different Ways To Iterate
    Throughput: 1090.63623355321
    BenchmarkInput: System.Collections.Hashtable
FileName: Different Ways To Iterate
ClockSpeed: 2095
---
Different Ways To Iterate
-------------------------
> @2095 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|For loop           |00:00:00.007695|1x           |12995.11/s|
|Foreach _          |00:00:00.008114|1.05x        |12323.62/s|
|For _              |00:00:00.009176|1.19x        |10897.04/s|
|Foreach Statement  |00:00:00.015293|1.99x        |6538.9/s  |
|Pipe to ScriptBlock|00:00:00.018657|2.42x        |5359.89/s |
|Foreach-Object     |00:00:00.091689|11.92x       |1090.64/s |
