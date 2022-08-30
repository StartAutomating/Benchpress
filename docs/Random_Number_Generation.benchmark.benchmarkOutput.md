
Random Number Generation
------------------------
> @2095 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.005481|1x           |18241.85/s|
|[Random]::New().Next()|00:00:00.005670|1.03x        |17635.75/s|
|GetRandom             |00:00:00.012007|2.19x        |8328.48/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.005843|1x           |17113.03/s|
|QuickRandom           |00:00:00.007807|1.34x        |12807.87/s|
|GetRandom             |00:00:00.050932|8.72x        |1963.4/s  |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.001072|1x           |9324.88/s |
|QuickRandom           |00:00:00.002926|2.73x        |3417.4/s  |
|GetRandom             |00:00:00.879802|820.4x       |11.37/s   |




