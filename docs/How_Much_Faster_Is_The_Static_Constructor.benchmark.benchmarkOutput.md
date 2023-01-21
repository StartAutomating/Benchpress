---
layout: Benchmark

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 3506257
      Days: 0
      Hours: 0
      Milliseconds: 350
      Minutes: 0
      Seconds: 0
      TotalDays: 4.05816782407407e-06
      TotalHours: 9.73960277777778e-05
      TotalMilliseconds: 350.6257
      TotalMinutes: 0.00584376166666667
      TotalSeconds: 0.3506257
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
    Throughput: 29204.9327815959
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
  - Technique: New-Object
    Time: 
      Ticks: 11789056
      Days: 0
      Hours: 0
      Milliseconds: 178
      Minutes: 0
      Seconds: 1
      TotalDays: 1.36447407407407e-05
      TotalHours: 0.000327473777777778
      TotalMilliseconds: 1178.9056
      TotalMinutes: 0.0196484266666667
      TotalSeconds: 1.1789056
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 3.36229089881318
    ClockSpeed: 2793
    FileName: How Much Faster Is The Static Constructor
    Throughput: 8686.02201906582
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
|StaticConstructor|00:00:00.350625|1x           |29204.93/s|
|New-Object       |00:00:01.178905|3.36x        |8686.02/s |
