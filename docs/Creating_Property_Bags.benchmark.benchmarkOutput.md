
Creating Property Bags
----------------------
> @2095 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.011614|1x             |8609.93/s |
|New-Object PSObject -Property @{}|00:00:00.028123|2.42x          |3555.81/s |
|New-Object ; Add-Member          |00:00:00.048401|4.17x          |2066.07/s |
|Static Constructors Only         |00:00:00.057666|4.97x          |1734.1/s  |
|New-Object `                     | Add-Member    |00:00:00.107745|9.28x     |928.12/s|


### (2 properties)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.009874|1x             |10127.3/s |
|Static Constructors Only         |00:00:00.014073|1.43x          |7105.81/s |
|New-Object PSObject -Property @{}|00:00:00.035113|3.56x          |2847.91/s |
|New-Object ; Add-Member          |00:00:00.055927|5.66x          |1788.04/s |
|New-Object `                     | Add-Member    |00:00:00.187973|19.04x    |531.99/s|




