Creating Property Bags
----------------------
> @2095 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.011879|1x           |8417.86/s |
|New-Object PSObject -Property @{}|00:00:00.016120|1.36x        |6203.44/s |
|Static Constructors Only         |00:00:00.016366|1.38x        |6110.04/s |
|New-Object ; Add-Member          |00:00:00.029782|2.51x        |3357.64/s |
|New-Object \| Add-Member         |00:00:00.086545|7.29x        |1155.46/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.007126|1x           |14032.72/s|
|Static Constructors Only         |00:00:00.014178|1.99x        |7052.73/s |
|New-Object PSObject -Property @{}|00:00:00.016555|2.32x        |6040.22/s |
|New-Object ; Add-Member          |00:00:00.041502|5.82x        |2409.51/s |
|New-Object \| Add-Member         |00:00:00.148199|20.8x        |674.77/s  |
