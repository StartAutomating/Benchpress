
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2594 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|00:00:00.002462|1x           |4060.58/s |
|foreach Get-Module             |00:00:00.003086|1.25x        |3240.34/s |
|ExecutionContextAndArrayList   |00:00:00.006871|2.79x        |1455.33/s |
|ExecutionContextAndHashtable   |00:00:00.013509|5.49x        |740.21/s  |




