
What Is The Fastest Way To Filter
---------------------------------
> @2095 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotScriptBlockVariable|00:00:00.011013|1x           |9080.01/s |
|ScriptBlockVariable   |00:00:00.011452|1.04x        |8731.57/s |
|DotInline             |00:00:00.011532|1.05x        |8670.85/s |
|Filter                |00:00:00.012809|1.16x        |7806.83/s |
|InlineScriptBlock     |00:00:00.022561|2.05x        |4432.37/s |
|WhereObject           |00:00:00.048922|4.44x        |2044.05/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.311269|1x           |32.13/s   |
|Pipe to ScriptBlock               |00:00:00.925226|2.97x        |10.81/s   |
|.Where Method                     |00:00:04.475789|14.38x       |2.23/s    |
|Where-Object Property (Positional)|00:00:09.914578|31.85x       |1.01/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.012349|1x           |809.74/s  |
|ForEach Loop                    |00:00:00.014479|1.17x        |690.63/s  |
|Operator Filter (Explicit Array)|00:00:00.015270|1.24x        |654.84/s  |
|Pipe to ScriptBlock             |00:00:00.112189|9.08x        |89.13/s   |
|.Where Method                   |00:00:00.637651|51.63x       |15.68/s   |
|Linq.Enumerable::Where          |00:00:00.781531|63.28x       |12.8/s    |
|Where-Object Script (Positional)|00:00:01.822797|147.6x       |5.49/s    |




