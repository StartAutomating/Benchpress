---
layout: Benchmark

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 3415362
      Days: 0
      Hours: 0
      Milliseconds: 341
      Minutes: 0
      Seconds: 0
      TotalDays: 3.95296527777778e-06
      TotalHours: 9.48711666666667e-05
      TotalMilliseconds: 341.5362
      TotalMinutes: 0.00569227
      TotalSeconds: 0.3415362
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: How Much Faster Is The Static Constructor
    Throughput: 29982.1805126367
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
  - Technique: New-Object
    Time: 
      Ticks: 11521274
      Days: 0
      Hours: 0
      Milliseconds: 152
      Minutes: 0
      Seconds: 1
      TotalDays: 1.33348078703704e-05
      TotalHours: 0.000320035388888889
      TotalMilliseconds: 1152.1274
      TotalMinutes: 0.0192021233333333
      TotalSeconds: 1.1521274
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 3.37336832815965
    ClockSpeed: 2793
    FileName: How Much Faster Is The Static Constructor
    Throughput: 8887.90597289848
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2793
---
How Much Faster Is The Static Constructor
-----------------------------------------
> @2793 Mhz


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.341536|1x           |29982.18/s|
|New-Object       |00:00:01.152127|3.37x        |8887.91/s |
