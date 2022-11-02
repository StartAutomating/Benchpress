
Creating Property Bags
----------------------
> @2594 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.010014|1x           |9985.82/s |
|Static Constructors Only         |00:00:00.014101|1.41x        |7091.65/s |
|New-Object PSObject -Property @{}|00:00:00.015783|1.58x        |6335.93/s |
|New-Object ; Add-Member          |00:00:00.025446|2.54x        |3929.88/s |
|New-Object \| Add-Member         |00:00:00.071203|7.11x        |1404.42/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.005969|1x           |16750.98/s|
|Static Constructors Only         |00:00:00.009483|1.59x        |10544.41/s|
|New-Object PSObject -Property @{}|00:00:00.017658|2.96x        |5663.06/s |
|New-Object ; Add-Member          |00:00:00.035712|5.98x        |2800.12/s |
|New-Object \| Add-Member         |00:00:00.125090|20.95x       |799.42/s  |




