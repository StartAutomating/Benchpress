
Random Number Generation
------------------------
> @2594 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004614|1x           |21673.17/s|
|[Random]::New().Next()|00:00:00.004782|1.04x        |20911.75/s|
|GetRandom             |00:00:00.033953|7.36x        |2945.17/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004576|1x           |21851.24/s|
|[Random]::New().Next()|00:00:00.006907|1.51x        |14477.23/s|
|GetRandom             |00:00:00.011702|2.56x        |8544.96/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.000924|1x           |10817.83/s|
|[Random]::New().Next()|00:00:00.002352|2.54x        |4251.52/s |
|GetRandom             |00:00:00.756471|818.34x      |13.22/s   |




