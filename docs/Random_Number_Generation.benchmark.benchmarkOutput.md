
Random Number Generation
------------------------
> @2095 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.005127|1x           |19503.06/s|
|GetRandom             |00:00:00.011889|2.32x        |8410.5/s  |
|[Random]::New().Next()|00:00:00.044195|8.62x        |2262.68/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.005091|1x           |19642.51/s|
|[Random]::New().Next()|00:00:00.007828|1.54x        |12773.51/s|
|GetRandom             |00:00:00.013609|2.67x        |7347.97/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.001067|1x           |9371.19/s |
|[Random]::New().Next()|00:00:00.003330|3.12x        |3002.46/s |
|GetRandom             |00:00:00.885944|830.24x      |11.29/s   |




