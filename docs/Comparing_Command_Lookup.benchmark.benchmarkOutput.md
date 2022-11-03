---
layout: Benchmark

Data: 
  - Technique: $executionContext
    Time: 
      value: 00:00:00.5958520
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Applications
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 167.826910038063
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:01.8006636
      FileName: Comparing Command Lookup
      GroupName: Applications
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.02199808006015
    GroupName: Applications
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 55.5350816221309
    BenchmarkInput: System.Collections.Hashtable
  - Technique: $executionContext
    Time: 
      value: 00:00:00.0054322
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Cmdlets
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 18408.7478369721
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:00.0120852
      FileName: Comparing Command Lookup
      GroupName: Cmdlets
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.22473399359376
    GroupName: Cmdlets
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 8274.58378843544
    BenchmarkInput: System.Collections.Hashtable
  - Technique: $executionContext
    Time: 
      value: 00:00:00.0054614
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Aliases
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 18310.3233603105
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:00.0142634
      FileName: Comparing Command Lookup
      GroupName: Aliases
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.61167466217453
    GroupName: Aliases
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 7010.95110562699
    BenchmarkInput: System.Collections.Hashtable
  - Technique: $executionContext
    Time: 
      value: 00:00:00.0053209
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Function
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 18793.8130767351
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:00.0152365
      FileName: Comparing Command Lookup
      GroupName: Function
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.86351932943675
    GroupName: Function
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 6563.18708364782
    BenchmarkInput: System.Collections.Hashtable
  - Technique: $executionContext
    Time: 
      value: 00:00:00.0050493
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: All
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 19804.7254074822
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:00.0136711
      FileName: Comparing Command Lookup
      GroupName: All
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.7075238151823
    GroupName: All
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 7314.70035330003
    BenchmarkInput: System.Collections.Hashtable
  - Technique: $executionContext
    Time: 
      value: 00:00:01.0758505
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: WildcardMiss
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 92.9497174560964
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Get-Command
    Time: 
      value: 00:00:03.2123773
      FileName: Comparing Command Lookup
      GroupName: WildcardMiss
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.98589562397378
    GroupName: WildcardMiss
    ClockSpeed: 2793
    FileName: Comparing Command Lookup
    Throughput: 31.1295936501606
    BenchmarkInput: System.Collections.Hashtable
FileName: Comparing Command Lookup
ClockSpeed: 2793
---
Comparing Command Lookup
------------------------
> @2793 Mhz


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005461|1x           |18310.32/s|
|Get-Command      |00:00:00.014263|2.61x        |7010.95/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005049|1x           |19804.73/s|
|Get-Command      |00:00:00.013671|2.71x        |7314.7/s  |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.595852|1x           |167.83/s  |
|Get-Command      |00:00:01.800663|3.02x        |55.54/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005432|1x           |18408.75/s|
|Get-Command      |00:00:00.012085|2.22x        |8274.58/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005320|1x           |18793.81/s|
|Get-Command      |00:00:00.015236|2.86x        |6563.19/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.075850|1x           |92.95/s   |
|Get-Command      |00:00:03.212377|2.99x        |31.13/s   |
