---
layout: Benchmark

Data: 
  - Technique: SingleQuote
    Time: 
      value: 00:00:00.4164597
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 24588.2134573886
    BenchmarkInput: System.Collections.Hashtable
  - Technique: SingleHerestring
    Time: 
      value: 00:00:00.4311609
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.03530041442185
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 23749.8344585513
    BenchmarkInput: System.Collections.Hashtable
  - Technique: DoubleQuote
    Time: 
      value: 00:00:00.4332741
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.0403746148787
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 23633.9998167442
    BenchmarkInput: System.Collections.Hashtable
  - Technique: DoubleHerestring
    Time: 
      value: 00:00:00.4538409
      FileName: Whats In A Quote
      GroupName: 
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.08975946532161
    ClockSpeed: 2793
    FileName: Whats In A Quote
    Throughput: 22562.9730595017
    BenchmarkInput: System.Collections.Hashtable
FileName: Whats In A Quote
ClockSpeed: 2793
---
Whats In A Quote
----------------
> @2793 Mhz


### 


|Technique       |Time           |RelativeSpeed|Throughput|
|----------------|---------------|-------------|----------|
|SingleQuote     |00:00:00.416459|1x           |24588.21/s|
|SingleHerestring|00:00:00.431160|1.04x        |23749.83/s|
|DoubleQuote     |00:00:00.433274|1.04x        |23634/s   |
|DoubleHerestring|00:00:00.453840|1.09x        |22562.97/s|
