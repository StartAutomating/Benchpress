Random Number Generation
------------------------
> @2095 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004888|1x           |20454.5/s |
|[Random]::New().Next()|00:00:00.005134|1.05x        |19476.09/s|
|GetRandom             |00:00:00.010934|2.24x        |9145.45/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|[Random]::New().Next()|00:00:00.007697|1x           |12991.4/s |
|GetRandom             |00:00:00.013017|1.69x        |7681.79/s |
|QuickRandom           |00:00:00.034144|4.44x        |2928.72/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.000924|1x           |10814.32/s|
|[Random]::New().Next()|00:00:00.002796|3.02x        |3575.77/s |
|GetRandom             |00:00:00.815838|882.27x      |12.26/s   |
