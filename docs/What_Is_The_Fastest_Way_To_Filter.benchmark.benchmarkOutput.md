
What Is The Fastest Way To Filter
---------------------------------
> @2594 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotInline             |00:00:00.008860|1x           |11286.17/s|
|InlineScriptBlock     |00:00:00.008890|1x           |11248.21/s|
|DotScriptBlockVariable|00:00:00.009165|1.03x        |10910.24/s|
|ScriptBlockVariable   |00:00:00.009605|1.08x        |10410.7/s |
|Filter                |00:00:00.034916|3.94x        |2864.01/s |
|WhereObject           |00:00:00.052962|5.98x        |1888.11/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.309894|1x           |32.27/s   |
|Pipe to ScriptBlock               |00:00:00.917378|2.96x        |10.9/s    |
|.Where Method                     |00:00:04.457505|14.38x       |2.24/s    |
|Where-Object Property (Positional)|00:00:09.648474|31.13x       |1.04/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.008127|1x           |1230.47/s |
|ForEach Loop                    |00:00:00.010647|1.31x        |939.22/s  |
|Operator Filter (Explicit Array)|00:00:00.039206|4.82x        |255.06/s  |
|Pipe to ScriptBlock             |00:00:00.108728|13.38x       |91.97/s   |
|.Where Method                   |00:00:00.512834|63.1x        |19.5/s    |
|Linq.Enumerable::Where          |00:00:00.790631|97.28x       |12.65/s   |
|Where-Object Script (Positional)|00:00:01.419354|174.65x      |7.05/s    |




