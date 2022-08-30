
What Is The Fastest Way To Filter
---------------------------------
> @2095 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotInline             |00:00:00.011662|1x           |8574.42/s |
|Filter                |00:00:00.012987|1.11x        |7699.95/s |
|DotScriptBlockVariable|00:00:00.013090|1.12x        |7639.24/s |
|InlineScriptBlock     |00:00:00.023014|1.97x        |4345.12/s |
|ScriptBlockVariable   |00:00:00.023146|1.98x        |4320.33/s |
|WhereObject           |00:00:00.033283|2.85x        |3004.48/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.401229|1x           |24.92/s   |
|Pipe to ScriptBlock               |00:00:00.933857|2.33x        |10.71/s   |
|.Where Method                     |00:00:04.423217|11.02x       |2.26/s    |
|Where-Object Property (Positional)|00:00:09.470464|23.6x        |1.06/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.011535|1x           |866.9/s   |
|ForEach Loop                    |00:00:00.014810|1.28x        |675.21/s  |
|Operator Filter (Explicit Array)|00:00:00.048159|4.17x        |207.64/s  |
|Pipe to ScriptBlock             |00:00:00.140207|12.15x       |71.32/s   |
|.Where Method                   |00:00:00.596299|51.69x       |16.77/s   |
|Linq.Enumerable::Where          |00:00:00.808895|70.12x       |12.36/s   |
|Where-Object Script (Positional)|00:00:01.726837|149.7x       |5.79/s    |




