---
layout: Benchmark

Data: 
  - Technique: QuickRandom
    Time: 
      value: 00:00:00.0041558
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 24062.755666779
    BenchmarkInput: System.Collections.Hashtable
  - Technique: [Random]::New().Next()
    Time: 
      value: 00:00:00.0043110
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.03734539679484
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 23196.4741359313
    BenchmarkInput: System.Collections.Hashtable
  - Technique: GetRandom
    Time: 
      value: 00:00:00.0091499
      FileName: Random Number Generation
      GroupName: (AnyRandomNumber)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.20171808075461
    GroupName: (AnyRandomNumber)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 10929.0811921442
    BenchmarkInput: System.Collections.Hashtable
  - Technique: [Random]::New().Next()
    Time: 
      value: 00:00:00.0043148
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 23176.0452396403
    BenchmarkInput: System.Collections.Hashtable
  - Technique: QuickRandom
    Time: 
      value: 00:00:00.0063338
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.46792435338834
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 15788.3103350279
    BenchmarkInput: System.Collections.Hashtable
  - Technique: GetRandom
    Time: 
      value: 00:00:00.0106388
      FileName: Random Number Generation
      GroupName: (Min and Max)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.46565310095485
    GroupName: (Min and Max)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 9399.55634094071
    BenchmarkInput: System.Collections.Hashtable
  - Technique: [Random]::New().Next()
    Time: 
      value: 00:00:00.0009051
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 11048.5029278533
    BenchmarkInput: System.Collections.Hashtable
  - Technique: QuickRandom
    Time: 
      value: 00:00:00.0441133
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 48.738592420727
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 226.689003089771
    BenchmarkInput: System.Collections.Hashtable
  - Technique: GetRandom
    Time: 
      value: 00:00:00.6736960
      FileName: Random Number Generation
      GroupName: (Random Byte Buffer)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 744.333222848304
    GroupName: (Random Byte Buffer)
    ClockSpeed: 2594
    FileName: Random Number Generation
    Throughput: 14.8434902389208
    BenchmarkInput: System.Collections.Hashtable
FileName: Random Number Generation
ClockSpeed: 2594
---
Random Number Generation
------------------------
> @2594 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004155|1x           |24062.76/s|
|[Random]::New().Next()|00:00:00.004311|1.04x        |23196.47/s|
|GetRandom             |00:00:00.009149|2.2x         |10929.08/s|


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.004314|1x           |23176.05/s|
|QuickRandom           |00:00:00.006333|1.47x        |15788.31/s|
|GetRandom             |00:00:00.010638|2.47x        |9399.56/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.000905|1x           |11048.5/s |
|QuickRandom           |00:00:00.044113|48.74x       |226.69/s  |
|GetRandom             |00:00:00.673696|744.33x      |14.84/s   |
