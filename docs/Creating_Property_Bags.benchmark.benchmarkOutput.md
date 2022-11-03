---
layout: Benchmark

Data: 
  - Technique: PSCustomObject
    Time: 
      value: 00:00:00.0075933
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 13169.5046949284
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object PSObject -Property @{}
    Time: 
      value: 00:00:00.0133983
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.76448974754059
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 7463.6334460342
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Static Constructors Only
    Time: 
      value: 00:00:00.0158288
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.08457455915083
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 6317.59830182958
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object ; Add-Member
    Time: 
      value: 00:00:00.0233426
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.07410480291836
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 4284.01292058297
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object | Add-Member
    Time: 
      value: 00:00:00.0634678
      FileName: Creating Property Bags
      GroupName: (1 property)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 8.35839490076778
    GroupName: (1 property)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 1575.60211634876
    BenchmarkInput: System.Collections.Hashtable
  - Technique: PSCustomObject
    Time: 
      value: 00:00:00.0074889
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 13353.095915288
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Static Constructors Only
    Time: 
      value: 00:00:00.0086183
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.15080986526726
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 11603.2164115893
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object PSObject -Property @{}
    Time: 
      value: 00:00:00.0137704
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.83877471991881
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 7261.95317492593
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object ; Add-Member
    Time: 
      value: 00:00:00.0337935
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 4.51247846813284
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 2959.14894876234
    BenchmarkInput: System.Collections.Hashtable
  - Technique: New-Object | Add-Member
    Time: 
      value: 00:00:00.1102561
      FileName: Creating Property Bags
      GroupName: (2 properties)
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 14.7226027854558
    GroupName: (2 properties)
    ClockSpeed: 2793
    FileName: Creating Property Bags
    Throughput: 906.979296383602
    BenchmarkInput: System.Collections.Hashtable
FileName: Creating Property Bags
ClockSpeed: 2793
---
Creating Property Bags
----------------------
> @2793 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.007593|1x           |13169.5/s |
|New-Object PSObject -Property @{}|00:00:00.013398|1.76x        |7463.63/s |
|Static Constructors Only         |00:00:00.015828|2.08x        |6317.6/s  |
|New-Object ; Add-Member          |00:00:00.023342|3.07x        |4284.01/s |
|New-Object \| Add-Member         |00:00:00.063467|8.36x        |1575.6/s  |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.007488|1x           |13353.1/s |
|Static Constructors Only         |00:00:00.008618|1.15x        |11603.22/s|
|New-Object PSObject -Property @{}|00:00:00.013770|1.84x        |7261.95/s |
|New-Object ; Add-Member          |00:00:00.033793|4.51x        |2959.15/s |
|New-Object \| Add-Member         |00:00:00.110256|14.72x       |906.98/s  |
