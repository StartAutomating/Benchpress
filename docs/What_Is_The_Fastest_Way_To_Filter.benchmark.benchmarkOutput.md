
What Is The Fastest Way To Filter
---------------------------------
> @2095 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|InlineScriptBlock     |00:00:00.011133|1x           |8981.74/s |
|ScriptBlockVariable   |00:00:00.011562|1.04x        |8649.02/s |
|DotScriptBlockVariable|00:00:00.011985|1.08x        |8343.28/s |
|Filter                |00:00:00.012740|1.14x        |7849.29/s |
|WhereObject           |00:00:00.032339|2.9x         |3092.16/s |
|DotInline             |00:00:00.039523|3.55x        |2530.15/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.315222|1x           |31.72/s   |
|Pipe to ScriptBlock               |00:00:01.003212|3.18x        |9.97/s    |
|.Where Method                     |00:00:04.966119|15.75x       |2.01/s    |
|Where-Object Property (Positional)|00:00:11.202042|35.54x       |0.89/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.011478|1x           |871.23/s  |
|ForEach Loop                    |00:00:00.012338|1.07x        |810.5/s   |
|Operator Filter (Explicit Array)|00:00:00.013054|1.14x        |766.02/s  |
|Pipe to ScriptBlock             |00:00:00.115176|10.03x       |86.82/s   |
|.Where Method                   |00:00:00.551349|48.04x       |18.14/s   |
|Linq.Enumerable::Where          |00:00:00.763063|66.48x       |13.11/s   |
|Where-Object Script (Positional)|00:00:01.600497|139.44x      |6.25/s    |




