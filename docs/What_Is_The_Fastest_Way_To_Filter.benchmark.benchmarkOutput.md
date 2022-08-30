
What Is The Fastest Way To Filter
---------------------------------
> @2594 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotInline             |00:00:00.009794|1x           |10209.5/s |
|ScriptBlockVariable   |00:00:00.009828|1x           |10174.49/s|
|Filter                |00:00:00.010896|1.11x        |9177.26/s |
|WhereObject           |00:00:00.029344|3x           |3407.84/s |
|DotScriptBlockVariable|00:00:00.033721|3.44x        |2965.47/s |
|InlineScriptBlock     |00:00:00.034195|3.49x        |2924.33/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.364451|1x           |27.44/s   |
|Pipe to ScriptBlock               |00:00:00.847914|2.33x        |11.79/s   |
|.Where Method                     |00:00:04.339750|11.91x       |2.3/s     |
|Where-Object Property (Positional)|00:00:10.022960|27.5x        |1/s       |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.008309|1x           |1203.51/s |
|ForEach Loop                    |00:00:00.014107|1.7x         |708.84/s  |
|Operator Filter (Explicit Array)|00:00:00.041530|5x           |240.79/s  |
|Pipe to ScriptBlock             |00:00:00.102974|12.39x       |97.11/s   |
|.Where Method                   |00:00:00.470733|56.65x       |21.24/s   |
|Linq.Enumerable::Where          |00:00:00.636570|76.61x       |15.71/s   |
|Where-Object Script (Positional)|00:00:01.408813|169.55x      |7.1/s     |




