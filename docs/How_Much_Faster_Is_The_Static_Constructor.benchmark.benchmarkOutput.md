---
layout: Benchmark

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 5098455
      Days: 0
      Hours: 0
      Milliseconds: 509
      Minutes: 0
      Seconds: 0
      TotalDays: 5.90098958333333e-06
      TotalHours: 0.00014162375
      TotalMilliseconds: 509.8455
      TotalMinutes: 0.008497425
      TotalSeconds: 0.5098455
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
        FileName: How Much Faster Is The Static Constructor
        RepeatCount: 10240
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: How Much Faster Is The Static Constructor
    Throughput: 20084.5157993941
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
  - Technique: New-Object
    Time: 
      Ticks: 18817084
      Days: 0
      Hours: 0
      Milliseconds: 881
      Minutes: 0
      Seconds: 1
      TotalDays: 2.17790324074074e-05
      TotalHours: 0.000522696777777778
      TotalMilliseconds: 1881.7084
      TotalMinutes: 0.0313618066666667
      TotalSeconds: 1.8817084
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        FileName: How Much Faster Is The Static Constructor
        RepeatCount: 10240
    RelativeSpeed: 3.69074239156764
    ClockSpeed: 2295
    FileName: How Much Faster Is The Static Constructor
    Throughput: 5441.86336203845
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2295
---
How Much Faster Is The Static Constructor
-----------------------------------------
> @2295 Mhz


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.509845|1x           |20084.52/s|
|New-Object       |00:00:01.881708|3.69x        |5441.86/s |
