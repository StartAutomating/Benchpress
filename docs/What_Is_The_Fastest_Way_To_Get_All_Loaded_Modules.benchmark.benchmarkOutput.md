
What Is The Fastest Way To Get All Loaded Modules
-------------------------------------------------
> @2594 Mhz


### 


|Technique                      |Time           |RelativeSpeed|Throughput|
|-------------------------------|---------------|-------------|----------|
|Get-Module -ExpandProperty Name|00:00:00.002999|1x           |3333.89/s |
|foreach Get-Module             |00:00:00.003976|1.33x        |2514.96/s |
|ExecutionContextAndArrayList   |00:00:00.016092|5.37x        |621.4/s   |
|ExecutionContextAndHashtable   |00:00:00.041950|13.99x       |238.38/s  |





