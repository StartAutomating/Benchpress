
Creating Property Bags
----------------------
> @2594 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.008151|1x             |12267.68/s|
|New-Object PSObject -Property @{}|00:00:00.014549|1.78x          |6872.95/s |
|Static Constructors Only         |00:00:00.016380|2.01x          |6104.75/s |
|New-Object ; Add-Member          |00:00:00.029485|3.62x          |3391.51/s |
|New-Object `                     | Add-Member    |00:00:00.071447|8.76x     |1399.63/s|


### (2 properties)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.006667|1x             |14998.13/s|
|Static Constructors Only         |00:00:00.009271|1.39x          |10785.86/s|
|New-Object PSObject -Property @{}|00:00:00.016185|2.43x          |6178.48/s |
|New-Object ; Add-Member          |00:00:00.042411|6.36x          |2357.87/s |
|New-Object `                     | Add-Member    |00:00:00.127256|19.09x    |785.81/s|




