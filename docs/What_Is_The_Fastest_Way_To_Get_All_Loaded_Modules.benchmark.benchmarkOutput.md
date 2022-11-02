What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2095 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|00:00:00.003073|1x           |3254.15/s |
|foreach Get-Module             |00:00:00.004055|1.32x        |2465.79/s |
|ExecutionContextAndArrayList   |00:00:00.009848|3.2x         |1015.35/s |
|ExecutionContextAndHashtable   |00:00:00.013217|4.3x         |756.57/s  |
