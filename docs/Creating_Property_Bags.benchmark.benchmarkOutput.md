
Creating Property Bags
----------------------
> @2594 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.011874|1x             |8421.27/s |
|Static Constructors Only         |00:00:00.017110|1.44x          |5844.47/s |
|New-Object ; Add-Member          |00:00:00.031124|2.62x          |3212.9/s  |
|New-Object PSObject -Property @{}|00:00:00.043148|3.63x          |2317.58/s |
|New-Object `                     | Add-Member    |00:00:00.082295|6.93x     |1215.14/s|


### (2 properties)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.007528|1x             |13283.74/s|
|Static Constructors Only         |00:00:00.011144|1.48x          |8972.71/s |
|New-Object PSObject -Property @{}|00:00:00.027439|3.64x          |3644.42/s |
|New-Object ; Add-Member          |00:00:00.042814|5.69x          |2335.68/s |
|New-Object `                     | Add-Member    |00:00:00.138618|18.41x    |721.4/s|





