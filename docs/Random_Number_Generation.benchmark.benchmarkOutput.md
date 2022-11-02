
Random Number Generation
------------------------
> @2594 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004204|1x           |23782.34/s|
|[Random]::New().Next()|00:00:00.004385|1.04x        |22805.02/s|
|GetRandom             |00:00:00.009659|2.3x         |10352.93/s|


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.004449|1x           |22474.44/s|
|QuickRandom           |00:00:00.006185|1.39x        |16166.58/s|
|GetRandom             |00:00:00.035177|7.91x        |2842.73/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.000949|1x           |10531.86/s|
|QuickRandom           |00:00:00.002279|2.4x         |4387.7/s  |
|GetRandom             |00:00:00.703936|741.38x      |14.21/s   |




