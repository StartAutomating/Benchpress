
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2095 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|foreach Get-Module             |00:00:00.002965|1x           |3372.11/s |
|Get-Module -ExpandProperty Name|00:00:00.004183|1.41x        |2390.34/s |
|ExecutionContextAndArrayList   |00:00:00.008995|3.03x        |1111.62/s |
|ExecutionContextAndHashtable   |00:00:00.053445|18.02x       |187.11/s  |




