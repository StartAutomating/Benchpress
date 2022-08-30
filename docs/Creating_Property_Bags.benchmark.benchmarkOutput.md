
Creating Property Bags
----------------------
> @2793 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.007456|1x             |13410.76/s|
|New-Object PSObject -Property @{}|00:00:00.014349|1.92x          |6969.13/s |
|Static Constructors Only         |00:00:00.014407|1.93x          |6941.07/s |
|New-Object ; Add-Member          |00:00:00.027362|3.67x          |3654.58/s |
|New-Object `                     | Add-Member    |00:00:00.064147|8.6x      |1558.91/s|


### (2 properties)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.006715|1x             |14891.15/s|
|Static Constructors Only         |00:00:00.009142|1.36x          |10938.29/s|
|New-Object PSObject -Property @{}|00:00:00.018389|2.74x          |5437.97/s |
|New-Object ; Add-Member          |00:00:00.037586|5.6x           |2660.55/s |
|New-Object `                     | Add-Member    |00:00:00.111667|16.63x    |895.51/s|




