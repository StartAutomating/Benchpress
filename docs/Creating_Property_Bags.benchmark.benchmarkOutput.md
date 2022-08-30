
Creating Property Bags
----------------------
> @2095 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.010932|1x             |9146.95/s |
|Static Constructors Only         |00:00:00.017645|1.61x          |5667.17/s |
|New-Object PSObject -Property @{}|00:00:00.020169|1.84x          |4957.93/s |
|New-Object ; Add-Member          |00:00:00.065078|5.95x          |1536.6/s  |
|New-Object `                     | Add-Member    |00:00:00.096255|8.8x      |1038.9/s|


### (2 properties)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.008525|1x             |11729.1/s |
|Static Constructors Only         |00:00:00.012256|1.44x          |8158.74/s |
|New-Object PSObject -Property @{}|00:00:00.030705|3.6x           |3256.79/s |
|New-Object ; Add-Member          |00:00:00.054142|6.35x          |1846.97/s |
|New-Object `                     | Add-Member    |00:00:00.154605|18.13x    |646.81/s|




