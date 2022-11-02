
Creating Property Bags
----------------------
> @2594 Mhz


### (1 property)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.007379|1x           |13551.24/s|
|New-Object PSObject -Property @{}|00:00:00.013773|1.87x        |7260.48/s |
|Static Constructors Only         |00:00:00.016962|2.3x         |5895.36/s |
|New-Object ; Add-Member          |00:00:00.025328|3.43x        |3948.11/s |
|New-Object \| Add-Member         |00:00:00.072754|9.86x        |1374.49/s |


### (2 properties)


|Technique                        |Time           |RelativeSpeed|Throughput|
|---------------------------------|---------------|-------------|----------|
|PSCustomObject                   |00:00:00.005834|1x           |17139.72/s|
|Static Constructors Only         |00:00:00.008996|1.54x        |11115.56/s|
|New-Object PSObject -Property @{}|00:00:00.014114|2.42x        |7085.01/s |
|New-Object ; Add-Member          |00:00:00.038600|6.62x        |2590.63/s |
|New-Object \| Add-Member         |00:00:00.123960|21.25x       |806.71/s  |




