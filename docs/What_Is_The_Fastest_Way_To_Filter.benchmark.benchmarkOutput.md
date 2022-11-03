---
layout: Benchmark

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      value: 00:00:00.0098222
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 1018.10185090917
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ForEach Loop
    Time: 
      value: 00:00:00.0143090
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.45680193846592
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 698.86085680341
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Operator Filter (Explicit Array)
    Time: 
      value: 00:00:00.0154926
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.57730447353953
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 645.469449930935
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Pipe to ScriptBlock
    Time: 
      value: 00:00:00.1287154
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 13.1045386980514
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 77.6907813672645
    BenchmarkInput: System.Collections.Hashtable
  - Technique: .Where Method
    Time: 
      value: 00:00:00.6289631
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 64.0348496263566
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 15.899183910789
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Linq.Enumerable::Where
    Time: 
      value: 00:00:00.8127222
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 82.7433976094969
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 12.3043273581059
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Where-Object Script (Positional)
    Time: 
      value: 00:00:01.7120555
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 174.304687340922
    GroupName: Filtering Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 5.84093214267879
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ForEach Loop
    Time: 
      value: 00:00:00.4337330
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 23.0556586655846
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Pipe to ScriptBlock
    Time: 
      value: 00:00:01.0110025
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.33093285500527
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 9.89117237593379
    BenchmarkInput: System.Collections.Hashtable
  - Technique: .Where Method
    Time: 
      value: 00:00:05.3698553
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 12.380555088038
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 1.86224757303982
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Where-Object Property (Positional)
    Time: 
      value: 00:00:12.0266296
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 27.7281866955016
    GroupName: Filtering by Property Values
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 0.831488150262813
    BenchmarkInput: System.Collections.Hashtable
  - Technique: DotInline
    Time: 
      value: 00:00:00.0107634
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 9290.74456026906
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ScriptBlockVariable
    Time: 
      value: 00:00:00.0108017
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.00355835516658
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 9257.80201264616
    BenchmarkInput: System.Collections.Hashtable
  - Technique: InlineScriptBlock
    Time: 
      value: 00:00:00.0108022
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.00360480888938
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 9257.37349799115
    BenchmarkInput: System.Collections.Hashtable
  - Technique: DotScriptBlockVariable
    Time: 
      value: 00:00:00.0115405
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.07219837597785
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 8665.13582600407
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Filter
    Time: 
      value: 00:00:00.0122785
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.14076407083264
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 8144.31730260211
    BenchmarkInput: System.Collections.Hashtable
  - Technique: WhereObject
    Time: 
      value: 00:00:00.0630497
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 5.85778657301596
    GroupName: Filtering a Pipeline
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Filter
    Throughput: 1586.05036978764
    BenchmarkInput: System.Collections.Hashtable
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2095
---
What Is The Fastest Way To Filter
---------------------------------
> @2095 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotInline             |00:00:00.010763|1x           |9290.74/s |
|ScriptBlockVariable   |00:00:00.010801|1x           |9257.8/s  |
|InlineScriptBlock     |00:00:00.010802|1x           |9257.37/s |
|DotScriptBlockVariable|00:00:00.011540|1.07x        |8665.14/s |
|Filter                |00:00:00.012278|1.14x        |8144.32/s |
|WhereObject           |00:00:00.063049|5.86x        |1586.05/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.433733|1x           |23.06/s   |
|Pipe to ScriptBlock               |00:00:01.011002|2.33x        |9.89/s    |
|.Where Method                     |00:00:05.369855|12.38x       |1.86/s    |
|Where-Object Property (Positional)|00:00:12.026629|27.73x       |0.83/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.009822|1x           |1018.1/s  |
|ForEach Loop                    |00:00:00.014309|1.46x        |698.86/s  |
|Operator Filter (Explicit Array)|00:00:00.015492|1.58x        |645.47/s  |
|Pipe to ScriptBlock             |00:00:00.128715|13.1x        |77.69/s   |
|.Where Method                   |00:00:00.628963|64.03x       |15.9/s    |
|Linq.Enumerable::Where          |00:00:00.812722|82.74x       |12.3/s    |
|Where-Object Script (Positional)|00:00:01.712055|174.3x       |5.84/s    |
