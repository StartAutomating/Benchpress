
Random Number Generation
------------------------
> @2594 Mhz


### (AnyRandomNumber)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004611|1x           |21686.8/s |
|[Random]::New().Next()|00:00:00.004836|1.05x        |20675.25/s|
|GetRandom             |00:00:00.039707|8.61x        |2518.39/s |


### (Min and Max)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.004523|1x           |22106.78/s|
|[Random]::New().Next()|00:00:00.007024|1.55x        |14235.08/s|
|GetRandom             |00:00:00.011589|2.56x        |8628.65/s |


### (Random Byte Buffer)


|Technique             |Time           |RelativeSpeed|Throughput|
|----------------------|---------------|-------------|----------|
|QuickRandom           |00:00:00.000955|1x           |10462.44/s|
|[Random]::New().Next()|00:00:00.002227|2.33x        |4488.73/s |
|GetRandom             |00:00:00.735330|769.33x      |13.6/s    |




