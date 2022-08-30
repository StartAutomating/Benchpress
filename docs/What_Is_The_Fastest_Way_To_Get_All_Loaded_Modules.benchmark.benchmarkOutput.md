
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2594 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|foreach Get-Module             |00:00:00.002597|1x           |3849.41/s |
|Get-Module -ExpandProperty Name|00:00:00.003814|1.47x        |2621.64/s |
|ExecutionContextAndHashtable   |00:00:00.007668|2.95x        |1304/s    |
|ExecutionContextAndArrayList   |00:00:00.011457|4.41x        |872.83/s  |




