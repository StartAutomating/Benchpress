multithreading
--------------
> @2095 Mhz


### Multi-Threading


|Technique               |Time           |RelativeSpeed|Throughput|
|------------------------|---------------|-------------|----------|
|Runspace                |00:00:00.995721|1x           |3.01/s    |
|ForEach-Object -Parallel|00:00:01.047232|1.05x        |2.86/s    |
|Start-ThreadJob         |00:00:02.357003|2.37x        |1.27/s    |
|Start-Job               |00:00:34.499693|34.65x       |0.09/s    |
