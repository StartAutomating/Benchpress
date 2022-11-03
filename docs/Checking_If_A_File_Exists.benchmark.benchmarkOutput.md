---
layout: Benchmark

Data: 
  - Technique: Get Resolved Path
    Time: 
      value: 00:00:00.0128283
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 7795.26515594428
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Test-Path
    Time: 
      value: 00:00:00.0258277
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.01333769868182
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 3871.812046756
    BenchmarkInput: System.Collections.Hashtable
  - Technique: [IO.File]::Exists
    Time: 
      value: 00:00:00.0337623
      FileName: Checking If A File Exists
      GroupName: (Found Path)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.63186080774538
    GroupName: (Found Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 2961.88352096865
    BenchmarkInput: System.Collections.Hashtable
  - Technique: [IO.File]::Exists
    Time: 
      value: 00:00:00.0063369
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 15780.5867222143
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Test-Path
    Time: 
      value: 00:00:00.0275468
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 4.34704666319494
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 3630.18572030145
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get Resolved Path
    Time: 
      value: 00:00:00.0984337
      FileName: Checking If A File Exists
      GroupName: (Missing Path)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 15.5334153923843
    GroupName: (Missing Path)
    ClockSpeed: 2594
    FileName: Checking If A File Exists
    Throughput: 1015.91223331034
    BenchmarkInput: System.Collections.Hashtable
FileName: Checking If A File Exists
ClockSpeed: 2594
---
Checking If A File Exists
-------------------------
> @2594 Mhz


### (Found Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|Get Resolved Path|00:00:00.012828|1x           |7795.27/s |
|Test-Path        |00:00:00.025827|2.01x        |3871.81/s |
|[IO.File]::Exists|00:00:00.033762|2.63x        |2961.88/s |


### (Missing Path)


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|[IO.File]::Exists|00:00:00.006336|1x           |15780.59/s|
|Test-Path        |00:00:00.027546|4.35x        |3630.19/s |
|Get Resolved Path|00:00:00.098433|15.53x       |1015.91/s |
