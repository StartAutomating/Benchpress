---
layout: Benchmark

Data: 
  - Technique: $executionContext
    Time: 
      value: 00:00:00.6036280
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 165.664945960095
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:01.7009079
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.81780815336598
    GroupName: Applications
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 58.7921309554738
    BenchmarkInput: System.Collections.Hashtable
  - Technique: $executionContext
    Time: 
      value: 00:00:00.0059351
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 16848.9157722701
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:00.0121373
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.04500345402773
    GroupName: Cmdlets
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 8239.0647013751
    BenchmarkInput: System.Collections.Hashtable
  - Technique: $executionContext
    Time: 
      value: 00:00:00.0057634
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 17350.8692785509
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:00.0182321
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.16342783773467
    GroupName: Aliases
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 5484.83169793935
    BenchmarkInput: System.Collections.Hashtable
  - Technique: $executionContext
    Time: 
      value: 00:00:00.0055655
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 17967.8375707484
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:00.0122698
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.20461773425568
    GroupName: Function
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 8150.09209604068
    BenchmarkInput: System.Collections.Hashtable
  - Technique: $executionContext
    Time: 
      value: 00:00:00.0052881
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 18910.3836916851
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:00.0141209
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.67031637071916
    GroupName: All
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 7081.70159125835
    BenchmarkInput: System.Collections.Hashtable
  - Technique: $executionContext
    Time: 
      value: 00:00:01.0749786
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 93.0251076626084
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:03.5311416
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.28484827511915
    GroupName: WildcardMiss
    ClockSpeed: 2594
    FileName: Comparing Command Lookup
    Throughput: 28.3194534028315
    BenchmarkInput: System.Collections.Hashtable
FileName: Comparing Command Lookup
ClockSpeed: 2594
---
Comparing Command Lookup
------------------------
> @2594 Mhz


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005763|1x           |17350.87/s|
|Get-Command      |00:00:00.018232|3.16x        |5484.83/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005288|1x           |18910.38/s|
|Get-Command      |00:00:00.014120|2.67x        |7081.7/s  |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.603628|1x           |165.66/s  |
|Get-Command      |00:00:01.700907|2.82x        |58.79/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005935|1x           |16848.92/s|
|Get-Command      |00:00:00.012137|2.05x        |8239.06/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005565|1x           |17967.84/s|
|Get-Command      |00:00:00.012269|2.2x         |8150.09/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.074978|1x           |93.03/s   |
|Get-Command      |00:00:03.531141|3.28x        |28.32/s   |
