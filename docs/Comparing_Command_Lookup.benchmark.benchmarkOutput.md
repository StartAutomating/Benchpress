Comparing Command Lookup
------------------------
> @2095 Mhz


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006932|1x           |14425.02/s|
|Get-Command      |00:00:00.021041|3.04x        |4752.56/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006323|1x           |15814.78/s|
|Get-Command      |00:00:00.019275|3.05x        |5187.96/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.745370|1x           |134.16/s  |
|Get-Command      |00:00:01.958137|2.63x        |51.07/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.007389|1x           |13532.53/s|
|Get-Command      |00:00:00.014362|1.94x        |6962.38/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006790|1x           |14727.32/s|
|Get-Command      |00:00:00.014710|2.17x        |6797.77/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.257719|1x           |79.51/s   |
|Get-Command      |00:00:04.345334|3.45x        |23.01/s   |
