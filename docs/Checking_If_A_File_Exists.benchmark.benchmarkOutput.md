---
layout: Benchmark

Data: 
  - Technique: [IO.File]::Exists
    Time: 
      value: 00:00:00.0085404
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    Throughput: 11709.0534401199
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get Resolved Path
    Time: 
      value: 00:00:00.0159282
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.86504145004918
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    Throughput: 6278.17330269585
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Test-Path
    Time: 
      value: 00:00:00.0621861
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 7.2814036813264
    GroupName: (Found Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    Throughput: 1608.07640292606
    BenchmarkInput: System.Collections.Hashtable
  - Technique: [IO.File]::Exists
    Time: 
      value: 00:00:00.0073379
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    Throughput: 13627.8771855708
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Test-Path
    Time: 
      value: 00:00:00.0324818
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 4.42657981166274
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    Throughput: 3078.64711930989
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get Resolved Path
    Time: 
      value: 00:00:00.1303818
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 17.7682715763366
    GroupName: (Missing Path)
    ClockSpeed: 2095
    FileName: Checking If A File Exists
    Throughput: 766.978213216875
    BenchmarkInput: System.Collections.Hashtable
FileName: Checking If A File Exists
ClockSpeed: 2095
---
Checking If A File Exists
-------------------------
> @2095 Mhz


### (Found Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.008540|1x           |11709.05/s|
|Get Resolved Path|00:00:00.015928|1.87x        |6278.17/s |
|Test-Path        |00:00:00.062186|7.28x        |1608.08/s |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.007337|1x           |13627.88/s|
|Test-Path        |00:00:00.032481|4.43x        |3078.65/s |
|Get Resolved Path|00:00:00.130381|17.77x       |766.98/s  |
