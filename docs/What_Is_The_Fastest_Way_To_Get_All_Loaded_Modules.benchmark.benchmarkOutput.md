
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2594 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|foreach Get-Module             |00:00:00.002465|1x           |4056.63/s |
|Get-Module -ExpandProperty Name|00:00:00.003540|1.44x        |2824.22/s |
|ExecutionContextAndHashtable   |00:00:00.007434|3.02x        |1345.12/s |
|ExecutionContextAndArrayList   |00:00:00.011479|4.66x        |871.09/s  |




