
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2095 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|foreach Get-Module             |00:00:00.002917|1x           |3427.12/s |
|Get-Module -ExpandProperty Name|00:00:00.004243|1.45x        |2356.32/s |
|ExecutionContextAndArrayList   |00:00:00.009291|3.18x        |1076.28/s |
|ExecutionContextAndHashtable   |00:00:00.013501|4.63x        |740.66/s  |




