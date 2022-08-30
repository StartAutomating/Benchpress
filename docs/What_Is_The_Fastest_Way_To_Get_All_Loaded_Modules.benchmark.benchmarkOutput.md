
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2594 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|foreach Get-Module             |00:00:00.002470|1x           |4048.42/s |
|Get-Module -ExpandProperty Name|00:00:00.003546|1.44x        |2819.36/s |
|ExecutionContextAndArrayList   |00:00:00.007667|3.1x         |1304.24/s |
|ExecutionContextAndHashtable   |00:00:00.011201|4.53x        |892.74/s  |




