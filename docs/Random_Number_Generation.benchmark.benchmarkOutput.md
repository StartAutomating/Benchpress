
Random Number Generation
------------------------
> @2095 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.005206|1x           |19206.39/s|
|[Random]::New().Next()|00:00:00.005626|1.08x        |17774.62/s|
|GetRandom             |00:00:00.012135|2.33x        |8240.22/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.005551|1x           |18013.15/s|
|QuickRandom           |00:00:00.007690|1.39x        |13003.39/s|
|GetRandom             |00:00:00.049510|8.92x        |2019.79/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.000958|1x           |10428.62/s|
|QuickRandom           |00:00:00.002746|2.86x        |3640.47/s |
|GetRandom             |00:00:00.833672|869.41x      |12/s      |




