How Much Faster Is Piping To A ScriptBlock
------------------------------------------
> @2095 Mhz


### 


|Technique                       |Time           |RelativeSpeed|Throughput|
|--------------------------------|---------------|-------------|----------|
|ScriptBlock                     |00:00:00.159399|1x           |6424.11/s |
|DotScriptBlock                  |00:00:00.173122|1.09x        |5914.89/s |
|ScriptBlockWithPipelineParameter|00:00:00.686282|4.31x        |1492.1/s  |
|ForeachObject                   |00:00:00.887926|5.57x        |1153.25/s |
