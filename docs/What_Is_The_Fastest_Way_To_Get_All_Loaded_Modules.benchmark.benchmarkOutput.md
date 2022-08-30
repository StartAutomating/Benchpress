
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2095 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|foreach Get-Module             |00:00:00.002903|1x           |3444.12/s |
|Get-Module -ExpandProperty Name|00:00:00.004338|1.49x        |2305.16/s |
|ExecutionContextAndHashtable   |00:00:00.011095|3.82x        |901.31/s  |
|ExecutionContextAndArrayList   |00:00:00.013402|4.62x        |746.12/s  |




