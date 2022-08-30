
Random Number Generation
------------------------
> @2793 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004467|1x           |22382.88/s|
|[Random]::New().Next()|00:00:00.004576|1.02x        |21851.71/s|
|GetRandom             |00:00:00.010026|2.24x        |9974.07/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.004595|1x           |21760.42/s|
|QuickRandom           |00:00:00.006366|1.39x        |15706.72/s|
|GetRandom             |00:00:00.012718|2.77x        |7862.44/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.000966|1x           |10344.47/s|
|QuickRandom           |00:00:00.002430|2.51x        |4114.89/s |
|GetRandom             |00:00:00.720048|744.85x      |13.89/s   |




