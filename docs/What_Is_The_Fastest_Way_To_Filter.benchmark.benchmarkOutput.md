
What Is The Fastest Way To Filter
---------------------------------
> @2095 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotScriptBlockVariable|00:00:00.011252|1x           |8887.07/s |
|InlineScriptBlock     |00:00:00.012203|1.08x        |8194.71/s |
|Filter                |00:00:00.012695|1.13x        |7876.74/s |
|WhereObject           |00:00:00.032794|2.91x        |3049.31/s |
|DotInline             |00:00:00.040040|3.56x        |2497.45/s |
|ScriptBlockVariable   |00:00:00.040674|3.61x        |2458.52/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.413511|1x           |24.18/s   |
|Pipe to ScriptBlock               |00:00:01.155047|2.79x        |8.66/s    |
|.Where Method                     |00:00:05.375749|13x          |1.86/s    |
|Where-Object Property (Positional)|00:00:11.703321|28.3x        |0.85/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.011740|1x           |851.79/s  |
|Operator Filter (Explicit Array)|00:00:00.014870|1.27x        |672.49/s  |
|ForEach Loop                    |00:00:00.015846|1.35x        |631.06/s  |
|Pipe to ScriptBlock             |00:00:00.115550|9.84x        |86.54/s   |
|.Where Method                   |00:00:00.553500|47.15x       |18.07/s   |
|Linq.Enumerable::Where          |00:00:00.795222|67.74x       |12.58/s   |
|Where-Object Script (Positional)|00:00:01.639655|139.66x      |6.1/s     |




