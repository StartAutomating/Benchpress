
Creating Property Bags
----------------------
> @2594 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.009967|1x             |10032.61/s|
|New-Object PSObject -Property @{}|00:00:00.018692|1.88x          |5349.77/s |
|Static Constructors Only         |00:00:00.022603|2.27x          |4424.05/s |
|New-Object ; Add-Member          |00:00:00.045409|4.56x          |2202.2/s  |
|New-Object `                     | Add-Member    |00:00:00.077686|7.79x     |1287.22/s|


### (2 properties)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.007194|1x             |13900.28/s|
|Static Constructors Only         |00:00:00.010323|1.44x          |9686.54/s |
|New-Object PSObject -Property @{}|00:00:00.017298|2.4x           |5781.02/s |
|New-Object ; Add-Member          |00:00:00.043933|6.11x          |2276.19/s |
|New-Object `                     | Add-Member    |00:00:00.125734|17.48x    |795.33/s|




