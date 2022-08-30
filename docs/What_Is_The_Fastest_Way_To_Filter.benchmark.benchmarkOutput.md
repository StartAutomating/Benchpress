
What Is The Fastest Way To Filter
---------------------------------
> @2793 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotScriptBlockVariable|00:00:00.009372|1x           |10669.85/s|
|InlineScriptBlock     |00:00:00.009691|1.03x        |10318.85/s|
|DotInline             |00:00:00.009768|1.04x        |10237.41/s|
|ScriptBlockVariable   |00:00:00.009855|1.05x        |10146.72/s|
|Filter                |00:00:00.011649|1.24x        |8584.13/s |
|WhereObject           |00:00:00.037245|3.97x        |2684.9/s  |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.220744|1x           |45.3/s    |
|Pipe to ScriptBlock               |00:00:00.948289|4.3x         |10.55/s   |
|.Where Method                     |00:00:03.224856|14.61x       |3.1/s     |
|Where-Object Property (Positional)|00:00:07.911123|35.84x       |1.26/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.007949|1x           |1257.94/s |
|ForEach Loop                    |00:00:00.009565|1.2x         |1045.38/s |
|Operator Filter (Explicit Array)|00:00:00.032078|4.04x        |311.73/s  |
|Pipe to ScriptBlock             |00:00:00.094694|11.91x       |105.6/s   |
|.Where Method                   |00:00:00.446625|56.18x       |22.39/s   |
|Linq.Enumerable::Where          |00:00:00.603411|75.91x       |16.57/s   |
|Where-Object Script (Positional)|00:00:01.285781|161.74x      |7.78/s    |




