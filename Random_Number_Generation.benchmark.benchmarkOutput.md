
Random Number Generation
------------------------
> @2594 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.007275|1x           |13744.76/s|
|GetRandom             |00:00:00.010347|1.42x        |9664.08/s |
|QuickRandom           |00:00:00.028924|3.98x        |3457.26/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004584|1x           |21811.68/s|
|[Random]::New().Next()|00:00:00.006927|1.51x        |14434.81/s|
|GetRandom             |00:00:00.011612|2.53x        |8611.56/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.000846|1x           |11813.35/s|
|[Random]::New().Next()|00:00:00.002352|2.78x        |4250.26/s |
|GetRandom             |00:00:00.765961|904.86x      |13.06/s   |




