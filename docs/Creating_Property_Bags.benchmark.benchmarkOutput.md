---
layout: Benchmark

Data: 
  - Technique: PSCustomObject
    Time: 
      value: 00:00:00.0081050
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 12338.0629241209
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object PSObject -Property @{}
    Time: 
      value: 00:00:00.0135876
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.67644663787785
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 7359.65144690747
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Static Constructors Only
    Time: 
      value: 00:00:00.0145150
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.79086983343615
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 6889.42473303479
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object ; Add-Member
    Time: 
      value: 00:00:00.0280242
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.45764342998149
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 3568.34450225163
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object | Add-Member
    Time: 
      value: 00:00:00.0771572
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 9.51970388648982
    GroupName: (1 property)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 1296.05532600976
    BenchmarkInput: System.Collections.Hashtable
  - Technique: PSCustomObject
    Time: 
      value: 00:00:00.0058390
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 17126.2202431923
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Static Constructors Only
    Time: 
      value: 00:00:00.0090522
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.55029970885426
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 11047.0382890347
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object PSObject -Property @{}
    Time: 
      value: 00:00:00.0140893
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.4129645487241
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 7097.58469192934
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object ; Add-Member
    Time: 
      value: 00:00:00.0395119
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 6.76689501626991
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 2530.88310104045
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object | Add-Member
    Time: 
      value: 00:00:00.1248342
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 21.3793800308272
    GroupName: (2 properties)
    ClockSpeed: 2594
    FileName: Creating Property Bags
    Throughput: 801.062529338915
    BenchmarkInput: System.Collections.Hashtable
FileName: Creating Property Bags
ClockSpeed: 2594
---
Creating Property Bags
----------------------
> @2594 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.008105|1x           |12338.06/s|
|New-Object PSObject -Property @{}|00:00:00.013587|1.68x        |7359.65/s |
|Static Constructors Only         |00:00:00.014515|1.79x        |6889.42/s |
|New-Object ; Add-Member          |00:00:00.028024|3.46x        |3568.34/s |
|New-Object \| Add-Member         |00:00:00.077157|9.52x        |1296.06/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.005839|1x           |17126.22/s|
|Static Constructors Only         |00:00:00.009052|1.55x        |11047.04/s|
|New-Object PSObject -Property @{}|00:00:00.014089|2.41x        |7097.58/s |
|New-Object ; Add-Member          |00:00:00.039511|6.77x        |2530.88/s |
|New-Object \| Add-Member         |00:00:00.124834|21.38x       |801.06/s  |
