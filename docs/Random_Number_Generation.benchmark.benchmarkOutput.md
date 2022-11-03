---
layout: Benchmark

Data: 
  - Technique: QuickRandom
    Time: 
      value: 00:00:00.0050226
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 19910.0067694023
    BenchmarkInput: System.Collections.Hashtable
  - Technique: [Random]::New().Next()
    Time: 
      value: 00:00:00.0052213
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.0395611834508
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 19152.3183881409
    BenchmarkInput: System.Collections.Hashtable
  - Technique: GetRandom
    Time: 
      value: 00:00:00.0406163
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 8.08670807948075
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 2462.06572238239
    BenchmarkInput: System.Collections.Hashtable
  - Technique: [Random]::New().Next()
    Time: 
      value: 00:00:00.0052993
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 18870.4168475082
    BenchmarkInput: System.Collections.Hashtable
  - Technique: QuickRandom
    Time: 
      value: 00:00:00.0075797
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.43032098579058
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 13193.134292914
    BenchmarkInput: System.Collections.Hashtable
  - Technique: GetRandom
    Time: 
      value: 00:00:00.0129662
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.4467759892816
    GroupName: (Min and Max)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 7712.35982786013
    BenchmarkInput: System.Collections.Hashtable
  - Technique: [Random]::New().Next()
    Time: 
      value: 00:00:00.0009790
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 10214.5045965271
    BenchmarkInput: System.Collections.Hashtable
  - Technique: QuickRandom
    Time: 
      value: 00:00:00.0029358
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.99877425944842
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 3406.22658219225
    BenchmarkInput: System.Collections.Hashtable
  - Technique: GetRandom
    Time: 
      value: 00:00:00.8385732
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 856.560980592441
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2095
    FileName: Random Number Generation
    Throughput: 11.9250173986004
    BenchmarkInput: System.Collections.Hashtable
FileName: Random Number Generation
ClockSpeed: 2095
---
Random Number Generation
------------------------
> @2095 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.005022|1x           |19910.01/s|
|[Random]::New().Next()|00:00:00.005221|1.04x        |19152.32/s|
|GetRandom             |00:00:00.040616|8.09x        |2462.07/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.005299|1x           |18870.42/s|
|QuickRandom           |00:00:00.007579|1.43x        |13193.13/s|
|GetRandom             |00:00:00.012966|2.45x        |7712.36/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.000979|1x           |10214.5/s |
|QuickRandom           |00:00:00.002935|3x           |3406.23/s |
|GetRandom             |00:00:00.838573|856.56x      |11.93/s   |
