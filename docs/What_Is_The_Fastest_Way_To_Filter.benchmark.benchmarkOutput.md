
What Is The Fastest Way To Filter
---------------------------------
> @2594 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotInline             |00:00:00.009069|1x           |11025.48/s|
|ScriptBlockVariable   |00:00:00.009116|1.01x        |10969/s   |
|DotScriptBlockVariable|00:00:00.009132|1.01x        |10949.66/s|
|InlineScriptBlock     |00:00:00.009556|1.05x        |10463.64/s|
|WhereObject           |00:00:00.027885|3.07x        |3586.11/s |
|Filter                |00:00:00.034415|3.79x        |2905.68/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.348890|1x           |28.66/s   |
|Pipe to ScriptBlock               |00:00:00.905184|2.59x        |11.05/s   |
|.Where Method                     |00:00:04.501656|12.9x        |2.22/s    |
|Where-Object Property (Positional)|00:00:09.893152|28.36x       |1.01/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.008328|1x           |1200.74/s |
|ForEach Loop                    |00:00:00.011912|1.43x        |839.43/s  |
|Operator Filter (Explicit Array)|00:00:00.032129|3.86x        |311.24/s  |
|Pipe to ScriptBlock             |00:00:00.119075|14.3x        |83.98/s   |
|.Where Method                   |00:00:00.484665|58.2x        |20.63/s   |
|Linq.Enumerable::Where          |00:00:00.704493|84.59x       |14.19/s   |
|Where-Object Script (Positional)|00:00:01.431164|171.85x      |6.99/s    |




