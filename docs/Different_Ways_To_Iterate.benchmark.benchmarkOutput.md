---
layout: Benchmark

Data: 
  - Technique: Foreach Statement
    Time: 
      value: 00:00:00.0061565
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 16242.9952083164
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Foreach _
    Time: 
      value: 00:00:00.0063136
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.02551774547227
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 15838.8241256969
    BenchmarkInput: System.Collections.Hashtable
  - Technique: For loop
    Time: 
      value: 00:00:00.0066315
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.0771542272395
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 15079.5445977531
    BenchmarkInput: System.Collections.Hashtable
  - Technique: For _
    Time: 
      value: 00:00:00.0069930
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.13587265491757
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 14300.0143000143
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Pipe to ScriptBlock
    Time: 
      value: 00:00:00.0152994
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.48508080890116
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 6536.20403414513
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Foreach-Object
    Time: 
      value: 00:00:00.0737395
      FileName: Different Ways To Iterate
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 11.9775034516365
    ClockSpeed: 2793
    FileName: Different Ways To Iterate
    Throughput: 1356.12527885326
    BenchmarkInput: System.Collections.Hashtable
FileName: Different Ways To Iterate
ClockSpeed: 2793
---
Different Ways To Iterate
-------------------------
> @2793 Mhz


### 


|Technique          |Time           |RelativeSpeed|Throughput|
|-------------------|---------------|-------------|----------|
|Foreach Statement  |00:00:00.006156|1x           |16243/s   |
|Foreach _          |00:00:00.006313|1.03x        |15838.82/s|
|For loop           |00:00:00.006631|1.08x        |15079.54/s|
|For _              |00:00:00.006993|1.14x        |14300.01/s|
|Pipe to ScriptBlock|00:00:00.015299|2.49x        |6536.2/s  |
|Foreach-Object     |00:00:00.073739|11.98x       |1356.13/s |
