
Creating Property Bags
----------------------
> @2095 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.014106|1x             |7088.88/s |
|Static Constructors Only         |00:00:00.016865|1.2x           |5929.37/s |
|New-Object PSObject -Property @{}|00:00:00.020356|1.44x          |4912.34/s |
|New-Object ; Add-Member          |00:00:00.030976|2.2x           |3228.23/s |
|New-Object `                     | Add-Member    |00:00:00.085934|6.09x     |1163.68/s|


### (2 properties)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.007542|1x             |13258.2/s |
|Static Constructors Only         |00:00:00.010860|1.44x          |9207.76/s |
|New-Object PSObject -Property @{}|00:00:00.018471|2.45x          |5413.89/s |
|New-Object ; Add-Member          |00:00:00.044572|5.91x          |2243.52/s |
|New-Object `                     | Add-Member    |00:00:00.160629|21.3x     |622.55/s|




