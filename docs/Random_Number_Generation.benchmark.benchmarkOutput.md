
Random Number Generation
------------------------
> @2594 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004174|1x           |23955.54/s|
|GetRandom             |00:00:00.009426|2.26x        |10608.95/s|
|[Random]::New().Next()|00:00:00.030287|7.26x        |3301.67/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004178|1x           |23930.31/s|
|[Random]::New().Next()|00:00:00.006354|1.52x        |15735.89/s|
|GetRandom             |00:00:00.010782|2.58x        |9274.63/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.000871|1x           |11471.84/s|
|[Random]::New().Next()|00:00:00.002293|2.63x        |4360.34/s |
|GetRandom             |00:00:00.695144|797.46x      |14.39/s   |




