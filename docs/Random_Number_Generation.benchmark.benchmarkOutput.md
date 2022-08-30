
Random Number Generation
------------------------
> @2095 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.006997|1x           |14291.02/s|
|[Random]::New().Next()|00:00:00.007060|1.01x        |14163.3/s |
|GetRandom             |00:00:00.012773|1.83x        |7828.71/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.005874|1x           |17021.57/s|
|QuickRandom           |00:00:00.008201|1.4x         |12193.04/s|
|GetRandom             |00:00:00.014253|2.43x        |7015.62/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.001061|1x           |9417.97/s |
|QuickRandom           |00:00:00.004385|4.13x        |2280.45/s |
|GetRandom             |00:00:00.950761|895.42x      |10.52/s   |




