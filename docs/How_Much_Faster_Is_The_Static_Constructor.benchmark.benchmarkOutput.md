---
layout: Benchmark

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 3271533
      Days: 0
      Hours: 0
      Milliseconds: 327
      Minutes: 0
      Seconds: 0
      TotalDays: 3.78649652777778e-06
      TotalHours: 9.08759166666667e-05
      TotalMilliseconds: 327.1533
      TotalMinutes: 0.005452555
      TotalSeconds: 0.3271533
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    Throughput: 31300.310894006
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
  - Technique: New-Object
    Time: 
      Ticks: 10997689
      Days: 0
      Hours: 0
      Milliseconds: 99
      Minutes: 0
      Seconds: 1
      TotalDays: 1.2728806712963e-05
      TotalHours: 0.000305491361111111
      TotalMilliseconds: 1099.7689
      TotalMinutes: 0.0183294816666667
      TotalSeconds: 1.0997689
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 3.36163168765224
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    Throughput: 9311.04707543558
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2594
---
How Much Faster Is The Static Constructor
-----------------------------------------
> @2594 Mhz


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.327153|1x           |31300.31/s|
|New-Object       |00:00:01.099768|3.36x        |9311.05/s |
