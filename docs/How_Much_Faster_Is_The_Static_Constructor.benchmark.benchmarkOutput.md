---
layout: Benchmark

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 4098919
      Days: 0
      Hours: 0
      Milliseconds: 409
      Minutes: 0
      Seconds: 0
      TotalDays: 4.74411921296296e-06
      TotalHours: 0.000113858861111111
      TotalMilliseconds: 409.8919
      TotalMinutes: 0.00683153166666667
      TotalSeconds: 0.4098919
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is The Static Constructor
    Throughput: 24982.1965254742
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
  - Technique: New-Object
    Time: 
      Ticks: 13407353
      Days: 0
      Hours: 0
      Milliseconds: 340
      Minutes: 0
      Seconds: 1
      TotalDays: 1.55177696759259e-05
      TotalHours: 0.000372426472222222
      TotalMilliseconds: 1340.7353
      TotalMinutes: 0.0223455883333333
      TotalSeconds: 1.3407353
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
    RelativeSpeed: 3.27094851105865
    ClockSpeed: 2095
    FileName: How Much Faster Is The Static Constructor
    Throughput: 7637.60005423889
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2095
---
How Much Faster Is The Static Constructor
-----------------------------------------
> @2095 Mhz


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.409891|1x           |24982.2/s |
|New-Object       |00:00:01.340735|3.27x        |7637.6/s  |
