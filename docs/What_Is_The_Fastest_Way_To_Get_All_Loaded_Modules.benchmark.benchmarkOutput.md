
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2095 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|00:00:00.003206|1x           |3118.47/s |
|foreach Get-Module             |00:00:00.004213|1.31x        |2373.61/s |
|ExecutionContextAndArrayList   |00:00:00.017699|5.52x        |564.98/s  |
|ExecutionContextAndHashtable   |00:00:00.023842|7.44x        |419.42/s  |




