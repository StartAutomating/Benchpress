
What Is The Fastest Way To Filter
---------------------------------
> @2594 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotScriptBlockVariable|00:00:00.008146|1x           |12275.66/s|
|ScriptBlockVariable   |00:00:00.008624|1.06x        |11594.61/s|
|DotInline             |00:00:00.008652|1.06x        |11558.02/s|
|InlineScriptBlock     |00:00:00.018428|2.26x        |5426.47/s |
|Filter                |00:00:00.019372|2.38x        |5162.01/s |
|WhereObject           |00:00:00.026338|3.23x        |3796.69/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.317211|1x           |31.52/s   |
|Pipe to ScriptBlock               |00:00:00.877579|2.77x        |11.39/s   |
|.Where Method                     |00:00:03.409454|10.75x       |2.93/s    |
|Where-Object Property (Positional)|00:00:08.159292|25.72x       |1.23/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.007422|1x           |1347.31/s |
|ForEach Loop                    |00:00:00.010745|1.45x        |930.6/s   |
|Operator Filter (Explicit Array)|00:00:00.012344|1.66x        |810.1/s   |
|Pipe to ScriptBlock             |00:00:00.082084|11.06x       |121.83/s  |
|.Where Method                   |00:00:00.461446|62.17x       |21.67/s   |
|Linq.Enumerable::Where          |00:00:00.610543|82.26x       |16.38/s   |
|Where-Object Script (Positional)|00:00:01.282275|172.76x      |7.8/s     |




