---
layout: Benchmark

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 5356589
      Days: 0
      Hours: 0
      Milliseconds: 535
      Minutes: 0
      Seconds: 0
      TotalDays: 6.19975578703704e-06
      TotalHours: 0.000148794138888889
      TotalMilliseconds: 535.6589
      TotalMinutes: 0.00892764833333333
      TotalSeconds: 0.5356589
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 1
    ClockSpeed: 2394
    FileName: How Much Faster Is The Static Constructor
    Throughput: 19116.6430726718
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
  - Technique: New-Object
    Time: 
      Ticks: 18699659
      Days: 0
      Hours: 0
      Milliseconds: 869
      Minutes: 0
      Seconds: 1
      TotalDays: 2.16431238425926e-05
      TotalHours: 0.000519434972222222
      TotalMilliseconds: 1869.9659
      TotalMinutes: 0.0311660983333333
      TotalSeconds: 1.8699659
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 3.49096393245776
    ClockSpeed: 2394
    FileName: How Much Faster Is The Static Constructor
    Throughput: 5476.03568599834
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2394
---
How Much Faster Is The Static Constructor
-----------------------------------------
> @2394 Mhz


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.535658|1x           |19116.64/s|
|New-Object       |00:00:01.869965|3.49x        |5476.04/s |
