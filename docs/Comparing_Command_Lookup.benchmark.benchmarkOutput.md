
Comparing Command Lookup
------------------------
> @2095 Mhz


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.013216|1x           |7566.07/s |
|Get-Command      |00:00:00.020524|1.55x        |4872.27/s |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006875|1x           |14545.24/s|
|Get-Command      |00:00:00.030078|4.37x        |3324.64/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.750635|1x           |133.22/s  |
|Get-Command      |00:00:02.067931|2.75x        |48.36/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.007512|1x           |13311.68/s|
|Get-Command      |00:00:00.015209|2.02x        |6575.05/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.007172|1x           |13942.14/s|
|Get-Command      |00:00:00.015592|2.17x        |6413.3/s  |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.307238|1x           |76.5/s    |
|Get-Command      |00:00:04.344987|3.32x        |23.02/s   |




