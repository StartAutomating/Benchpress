
Creating Property Bags
----------------------
> @2095 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.008931|1x             |11196.7/s |
|New-Object PSObject -Property @{}|00:00:00.016638|1.86x          |6010.34/s |
|Static Constructors Only         |00:00:00.017214|1.93x          |5809.23/s |
|New-Object ; Add-Member          |00:00:00.033307|3.73x          |3002.34/s |
|New-Object `                     | Add-Member    |00:00:00.085403|9.56x     |1170.91/s|


### (2 properties)


|Technique                        |Time           |RelativeSpeed  |Throughput|
|---------------------------------|---------------|---------------|----------|
|PSCustomObject                   |00:00:00.008597|1x             |11631.69/s|
|Static Constructors Only         |00:00:00.011097|1.29x          |9011.04/s |
|New-Object PSObject -Property @{}|00:00:00.017748|2.06x          |5634.15/s |
|New-Object ; Add-Member          |00:00:00.045077|5.24x          |2218.4/s  |
|New-Object `                     | Add-Member    |00:00:00.148823|17.31x    |671.94/s|




