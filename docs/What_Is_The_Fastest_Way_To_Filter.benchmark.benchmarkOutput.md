
What Is The Fastest Way To Filter
---------------------------------
> @2594 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotScriptBlockVariable|00:00:00.009495|1x           |10531.08/s|
|InlineScriptBlock     |00:00:00.009740|1.03x        |10266.94/s|
|ScriptBlockVariable   |00:00:00.009896|1.04x        |10104.28/s|
|DotInline             |00:00:00.010520|1.11x        |9505.25/s |
|Filter                |00:00:00.011008|1.16x        |9084.3/s  |
|WhereObject           |00:00:00.053681|5.65x        |1862.83/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.342857|1x           |29.17/s   |
|Pipe to ScriptBlock               |00:00:00.856743|2.5x         |11.67/s   |
|.Where Method                     |00:00:04.510903|13.16x       |2.22/s    |
|Where-Object Property (Positional)|00:00:09.949141|29.02x       |1.01/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.010041|1x           |995.85/s  |
|Operator Filter (Explicit Array)|00:00:00.012014|1.2x         |832.3/s   |
|ForEach Loop                    |00:00:00.012110|1.21x        |825.74/s  |
|Pipe to ScriptBlock             |00:00:00.098695|9.83x        |101.32/s  |
|.Where Method                   |00:00:00.489084|48.71x       |20.45/s   |
|Linq.Enumerable::Where          |00:00:00.691029|68.82x       |14.47/s   |
|Where-Object Script (Positional)|00:00:01.408868|140.3x       |7.1/s     |




