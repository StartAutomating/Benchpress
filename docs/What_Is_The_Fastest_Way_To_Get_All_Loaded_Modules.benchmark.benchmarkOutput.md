
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2793 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|foreach Get-Module             |00:00:00.002558|1x           |3908.39/s |
|ExecutionContextAndHashtable   |00:00:00.007291|2.85x        |1371.55/s |
|ExecutionContextAndArrayList   |00:00:00.011338|4.43x        |881.94/s  |
|Get-Module -ExpandProperty Name|00:00:00.015196|5.94x        |658.07/s  |




