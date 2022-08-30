
What Is The Fastest Way To Filter
---------------------------------
> @2594 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|InlineScriptBlock     |00:00:00.010085|1x           |9915.03/s |
|ScriptBlockVariable   |00:00:00.010228|1.01x        |9776.8/s  |
|DotScriptBlockVariable|00:00:00.010323|1.02x        |9687.11/s |
|Filter                |00:00:00.012213|1.21x        |8188/s    |
|DotInline             |00:00:00.036818|3.65x        |2716.03/s |
|WhereObject           |00:00:00.056143|5.57x        |1781.16/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.353008|1x           |28.33/s   |
|Pipe to ScriptBlock               |00:00:00.886329|2.51x        |11.28/s   |
|.Where Method                     |00:00:04.528740|12.83x       |2.21/s    |
|Where-Object Property (Positional)|00:00:09.996356|28.32x       |1/s       |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ForEach Loop                    |00:00:00.012604|1x           |793.37/s  |
|Operator Filter (Explicit Array)|00:00:00.013602|1.08x        |735.16/s  |
|Operator Filter (Assumed Array) |00:00:00.027670|2.2x         |361.4/s   |
|Pipe to ScriptBlock             |00:00:00.105024|8.33x        |95.22/s   |
|.Where Method                   |00:00:00.515760|40.92x       |19.39/s   |
|Linq.Enumerable::Where          |00:00:00.670438|53.19x       |14.92/s   |
|Where-Object Script (Positional)|00:00:01.470025|116.63x      |6.8/s     |




