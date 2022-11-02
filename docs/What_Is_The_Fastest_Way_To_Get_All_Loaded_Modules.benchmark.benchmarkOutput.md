
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2594 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|foreach Get-Module             |00:00:00.002365|1x           |4228.15/s |
|Get-Module -ExpandProperty Name|00:00:00.003407|1.44x        |2935.05/s |
|ExecutionContextAndHashtable   |00:00:00.007279|3.08x        |1373.65/s |
|ExecutionContextAndArrayList   |00:00:00.011473|4.85x        |871.6/s   |




