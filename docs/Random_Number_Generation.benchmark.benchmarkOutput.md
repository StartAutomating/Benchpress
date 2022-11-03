---
layout: Benchmark

Data: 
  - Technique: QuickRandom
    Time: 
      value: 00:00:00.0039120
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 25562.3721881391
    BenchmarkInput: System.Collections.Hashtable
  - Technique: [Random]::New().Next()
    Time: 
      value: 00:00:00.0040268
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.02934560327198
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 24833.6147809675
    BenchmarkInput: System.Collections.Hashtable
  - Technique: GetRandom
    Time: 
      value: 00:00:00.0091654
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.3428936605317
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 10910.5985554368
    BenchmarkInput: System.Collections.Hashtable
  - Technique: [Random]::New().Next()
    Time: 
      value: 00:00:00.0041102
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 24329.7163155078
    BenchmarkInput: System.Collections.Hashtable
  - Technique: GetRandom
    Time: 
      value: 00:00:00.0105887
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.57620067150017
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 9444.02995646302
    BenchmarkInput: System.Collections.Hashtable
  - Technique: QuickRandom
    Time: 
      value: 00:00:00.0377134
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 9.1755632329327
    GroupName: (Min and Max)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 2651.57742340919
    BenchmarkInput: System.Collections.Hashtable
  - Technique: [Random]::New().Next()
    Time: 
      value: 00:00:00.0007860
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 12722.6463104326
    BenchmarkInput: System.Collections.Hashtable
  - Technique: QuickRandom
    Time: 
      value: 00:00:00.0024473
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.11361323155216
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 4086.13574142933
    BenchmarkInput: System.Collections.Hashtable
  - Technique: GetRandom
    Time: 
      value: 00:00:00.6035190
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 767.835877862595
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2793
    FileName: Random Number Generation
    Throughput: 16.5694866275958
    BenchmarkInput: System.Collections.Hashtable
FileName: Random Number Generation
ClockSpeed: 2793
---
Random Number Generation
------------------------
> @2793 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.003912|1x           |25562.37/s|
|[Random]::New().Next()|00:00:00.004026|1.03x        |24833.61/s|
|GetRandom             |00:00:00.009165|2.34x        |10910.6/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.004110|1x           |24329.72/s|
|GetRandom             |00:00:00.010588|2.58x        |9444.03/s |
|QuickRandom           |00:00:00.037713|9.18x        |2651.58/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.000786|1x           |12722.65/s|
|QuickRandom           |00:00:00.002447|3.11x        |4086.14/s |
|GetRandom             |00:00:00.603519|767.84x      |16.57/s   |
