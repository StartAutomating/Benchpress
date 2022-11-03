---
layout: Benchmark

Data: 
  - Technique: Operator Filter (Assumed Array)
    Time: 
      value: 00:00:00.0083578
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 1196.48711383378
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ForEach Loop
    Time: 
      value: 00:00:00.0120503
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.44180286678312
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 829.854858385268
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Operator Filter (Explicit Array)
    Time: 
      value: 00:00:00.0122571
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.46654622029721
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 815.85366848602
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Pipe to ScriptBlock
    Time: 
      value: 00:00:00.0860326
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 10.2936897269616
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 116.235008589767
    BenchmarkInput: System.Collections.Hashtable
  - Technique: .Where Method
    Time: 
      value: 00:00:00.5079896
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 60.7803010361578
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 19.6854423791353
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Linq.Enumerable::Where
    Time: 
      value: 00:00:00.6957746
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 83.2485343032856
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 14.3724706248259
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Where-Object Script (Positional)
    Time: 
      value: 00:00:01.4590840
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 174.577520400105
    GroupName: Filtering Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 6.853615007772
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ForEach Loop
    Time: 
      value: 00:00:00.3433175
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 29.12755685335
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Pipe to ScriptBlock
    Time: 
      value: 00:00:00.9084843
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 2.64619280986259
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 11.0073448710121
    BenchmarkInput: System.Collections.Hashtable
  - Technique: .Where Method
    Time: 
      value: 00:00:04.5388562
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 13.220579201468
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 2.20319824188305
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Where-Object Property (Positional)
    Time: 
      value: 00:00:09.9598765
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering by Property Values
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 29.0106869006095
    GroupName: Filtering by Property Values
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 1.00402851380738
    BenchmarkInput: System.Collections.Hashtable
  - Technique: DotInline
    Time: 
      value: 00:00:00.0088586
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 11288.4654460073
    BenchmarkInput: System.Collections.Hashtable
  - Technique: DotScriptBlockVariable
    Time: 
      value: 00:00:00.0089930
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.01517169755943
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 11119.759813188
    BenchmarkInput: System.Collections.Hashtable
  - Technique: InlineScriptBlock
    Time: 
      value: 00:00:00.0093590
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 1.05648748109182
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 10684.9022331446
    BenchmarkInput: System.Collections.Hashtable
  - Technique: WhereObject
    Time: 
      value: 00:00:00.0272094
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.0715237170659
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 3675.2004821863
    BenchmarkInput: System.Collections.Hashtable
  - Technique: ScriptBlockVariable
    Time: 
      value: 00:00:00.0336149
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.7946063712099
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 2974.87126244612
    BenchmarkInput: System.Collections.Hashtable
  - Technique: Filter
    Time: 
      value: 00:00:00.0344468
      FileName: What Is The Fastest Way To Filter
      GroupName: Filtering a Pipeline
      BenchmarkInput: System.Collections.Hashtable
    RelativeSpeed: 3.88851511525523
    GroupName: Filtering a Pipeline
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Filter
    Throughput: 2903.02727684429
    BenchmarkInput: System.Collections.Hashtable
FileName: What Is The Fastest Way To Filter
ClockSpeed: 2594
---
What Is The Fastest Way To Filter
---------------------------------
> @2594 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotInline             |00:00:00.008858|1x           |11288.47/s|
|DotScriptBlockVariable|00:00:00.008993|1.02x        |11119.76/s|
|InlineScriptBlock     |00:00:00.009359|1.06x        |10684.9/s |
|WhereObject           |00:00:00.027209|3.07x        |3675.2/s  |
|ScriptBlockVariable   |00:00:00.033614|3.79x        |2974.87/s |
|Filter                |00:00:00.034446|3.89x        |2903.03/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.343317|1x           |29.13/s   |
|Pipe to ScriptBlock               |00:00:00.908484|2.65x        |11.01/s   |
|.Where Method                     |00:00:04.538856|13.22x       |2.2/s     |
|Where-Object Property (Positional)|00:00:09.959876|29.01x       |1/s       |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.008357|1x           |1196.49/s |
|ForEach Loop                    |00:00:00.012050|1.44x        |829.85/s  |
|Operator Filter (Explicit Array)|00:00:00.012257|1.47x        |815.85/s  |
|Pipe to ScriptBlock             |00:00:00.086032|10.29x       |116.24/s  |
|.Where Method                   |00:00:00.507989|60.78x       |19.69/s   |
|Linq.Enumerable::Where          |00:00:00.695774|83.25x       |14.37/s   |
|Where-Object Script (Positional)|00:00:01.459084|174.58x      |6.85/s    |
