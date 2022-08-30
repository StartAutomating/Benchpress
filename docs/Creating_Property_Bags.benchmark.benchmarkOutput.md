
Creating Property Bags
----------------------
> @2594 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.008288|1x             |12065.05/s|
|Static Constructors Only         |00:00:00.014061|1.7x           |7111.87/s |
|New-Object PSObject -Property @{}|00:00:00.014392|1.74x          |6948.21/s |
|New-Object ; Add-Member          |00:00:00.026707|3.22x          |3744.29/s |
|New-Object `                     | Add-Member    |00:00:00.072006|8.69x     |1388.76/s|


### (2 properties)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.006300|1x             |15872.01/s|
|Static Constructors Only         |00:00:00.009417|1.49x          |10618.87/s|
|New-Object PSObject -Property @{}|00:00:00.016684|2.65x          |5993.62/s |
|New-Object ; Add-Member          |00:00:00.041082|6.52x          |2434.11/s |
|New-Object `                     | Add-Member    |00:00:00.125841|19.97x    |794.65/s|




