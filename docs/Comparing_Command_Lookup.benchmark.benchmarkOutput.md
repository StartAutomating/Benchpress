
Comparing Command Lookup
------------------------
> @2594 Mhz


### Aliases


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006615|1x           |15115.56/s|
|Get-Command      |00:00:00.015550|2.35x        |6430.7/s  |


### All


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.005800|1x           |17239.3/s |
|Get-Command      |00:00:00.014896|2.57x        |6712.81/s |


### Applications


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.640854|1x           |156.04/s  |
|Get-Command      |00:00:01.744384|2.72x        |57.33/s   |


### Cmdlets


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|Get-Command      |00:00:00.012932|1x           |7732.34/s |
|$executionContext|00:00:00.033094|2.56x        |3021.65/s |


### Function


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:00.006082|1x           |16440.34/s|
|Get-Command      |00:00:00.016291|2.68x        |6138.32/s |


### WildcardMiss


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|$executionContext|00:00:01.110015|1x           |90.09/s   |
|Get-Command      |00:00:03.650105|3.29x        |27.4/s    |




