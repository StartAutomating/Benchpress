---
layout: Benchmark

Data: 
  - Technique: $executionContext
    Time: 
      value: 00:00:00.7729585
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 129.373051722699
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:01.9554643
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.52984384025792
    GroupName: Applications
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 51.1387500145106
    BenchmarkInput: System.Collections.Hashtable
  - Technique: $executionContext
    Time: 
      value: 00:00:00.0070522
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 14179.9722072545
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:00.0145670
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.06559655143076
    GroupName: Cmdlets
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 6864.83146838745
    BenchmarkInput: System.Collections.Hashtable
  - Technique: $executionContext
    Time: 
      value: 00:00:00.0069253
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 14439.8076617619
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:00.0219834
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.17436067751578
    GroupName: Aliases
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 4548.88688737866
    BenchmarkInput: System.Collections.Hashtable
  - Technique: $executionContext
    Time: 
      value: 00:00:00.0068629
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 14571.0996808929
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:00.0149249
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.17472205627359
    GroupName: Function
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 6700.21239673298
    BenchmarkInput: System.Collections.Hashtable
  - Technique: $executionContext
    Time: 
      value: 00:00:00.0064484
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 15507.7228459773
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:00.0171132
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.65386762607779
    GroupName: All
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 5843.44248883902
    BenchmarkInput: System.Collections.Hashtable
  - Technique: $executionContext
    Time: 
      value: 00:00:01.2418780
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 80.5232075936606
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:04.3768944
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.5244157638673
    GroupName: WildcardMiss
    ClockSpeed: 2095
    FileName: Comparing Command Lookup
    Throughput: 22.8472498673946
    BenchmarkInput: System.Collections.Hashtable
FileName: Comparing Command Lookup
ClockSpeed: 2095
---
Comparing Command Lookup
------------------------
> @2095 Mhz


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006925|1x           |14439.81/s|
|Get-Command      |00:00:00.021983|3.17x        |4548.89/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006448|1x           |15507.72/s|
|Get-Command      |00:00:00.017113|2.65x        |5843.44/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.772958|1x           |129.37/s  |
|Get-Command      |00:00:01.955464|2.53x        |51.14/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.007052|1x           |14179.97/s|
|Get-Command      |00:00:00.014567|2.07x        |6864.83/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006862|1x           |14571.1/s |
|Get-Command      |00:00:00.014924|2.17x        |6700.21/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.241878|1x           |80.52/s   |
|Get-Command      |00:00:04.376894|3.52x        |22.85/s   |
