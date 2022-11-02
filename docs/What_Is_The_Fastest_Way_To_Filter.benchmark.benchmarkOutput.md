What Is The Fastest Way To Filter
---------------------------------
> @2095 Mhz


### Filtering a Pipeline


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|DotScriptBlockVariable|00:00:00.010099|1x           |9901.48/s |
|DotInline             |00:00:00.010545|1.04x        |9482.9/s  |
|ScriptBlockVariable   |00:00:00.011221|1.11x        |8911.39/s |
|InlineScriptBlock     |00:00:00.012203|1.21x        |8194.44/s |
|Filter                |00:00:00.012360|1.22x        |8090.29/s |
|WhereObject           |00:00:00.064718|6.41x        |1545.16/s |


### Filtering by Property Values


|Technique                         |Time           |RelativeSpeed|Throughput|
|----------------------------------|---------------|-------------|----------|
|ForEach Loop                      |00:00:00.391919|1x           |25.52/s   |
|Pipe to ScriptBlock               |00:00:01.035733|2.64x        |9.65/s    |
|.Where Method                     |00:00:05.389118|13.75x       |1.86/s    |
|Where-Object Property (Positional)|00:00:11.650979|29.73x       |0.86/s    |


### Filtering Values


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|Operator Filter (Assumed Array) |00:00:00.009826|1x           |1017.71/s |
|ForEach Loop                    |00:00:00.015425|1.57x        |648.26/s  |
|Operator Filter (Explicit Array)|00:00:00.053735|5.47x        |186.1/s   |
|Pipe to ScriptBlock             |00:00:00.112254|11.42x       |89.08/s   |
|.Where Method                   |00:00:00.611176|62.2x        |16.36/s   |
|Linq.Enumerable::Where          |00:00:00.810633|82.5x        |12.34/s   |
|Where-Object Script (Positional)|00:00:01.706726|173.69x      |5.86/s    |
