---
layout: Benchmark

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 3524393
      Days: 0
      Hours: 0
      Milliseconds: 352
      Minutes: 0
      Seconds: 0
      TotalDays: 4.07915856481482e-06
      TotalHours: 9.78998055555556e-05
      TotalMilliseconds: 352.4393
      TotalMinutes: 0.00587398833333333
      TotalSeconds: 0.3524393
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
        RepeatCount: 10240
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    Throughput: 29054.6485593406
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
  - Technique: New-Object
    Time: 
      Ticks: 11493174
      Days: 0
      Hours: 0
      Milliseconds: 149
      Minutes: 0
      Seconds: 1
      TotalDays: 1.33022847222222e-05
      TotalHours: 0.000319254833333333
      TotalMilliseconds: 1149.3174
      TotalMinutes: 0.01915529
      TotalSeconds: 1.1493174
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        RepeatCount: 10240
    RelativeSpeed: 3.26103643946631
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    Throughput: 8909.63627628017
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2594
---
How Much Faster Is The Static Constructor
-----------------------------------------
> @2594 Mhz


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.352439|1x           |29054.65/s|
|New-Object       |00:00:01.149317|3.26x        |8909.64/s |
