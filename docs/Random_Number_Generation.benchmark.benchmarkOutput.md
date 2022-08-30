
Random Number Generation
------------------------
> @2594 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.004316|1x           |23165.84/s|
|QuickRandom           |00:00:00.004345|1.01x        |23011.78/s|
|GetRandom             |00:00:00.041709|9.66x        |2397.54/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.004225|1x           |23667.52/s|
|QuickRandom           |00:00:00.006136|1.45x        |16296.47/s|
|GetRandom             |00:00:00.010483|2.48x        |9539.25/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.000817|1x           |12226.43/s|
|QuickRandom           |00:00:00.002560|3.13x        |3905.18/s |
|GetRandom             |00:00:00.659344|806.14x      |15.17/s   |




