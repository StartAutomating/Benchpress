---
layout: Benchmark

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 5522770
      Days: 0
      Hours: 0
      Milliseconds: 552
      Minutes: 0
      Seconds: 0
      TotalDays: 6.39209490740741e-06
      TotalHours: 0.000153410277777778
      TotalMilliseconds: 552.277
      TotalMinutes: 0.00920461666666667
      TotalSeconds: 0.552277
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: How Much Faster Is The Static Constructor
    Throughput: 18541.4203379826
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
  - Technique: New-Object
    Time: 
      Ticks: 18901963
      Days: 0
      Hours: 0
      Milliseconds: 890
      Minutes: 0
      Seconds: 1
      TotalDays: 2.18772719907407e-05
      TotalHours: 0.000525054527777778
      TotalMilliseconds: 1890.1963
      TotalMinutes: 0.0315032716666667
      TotalSeconds: 1.8901963
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        RepeatCount: 10240
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 3.42255118355463
    ClockSpeed: 2295
    FileName: How Much Faster Is The Static Constructor
    Throughput: 5417.4267508618
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2295
---
How Much Faster Is The Static Constructor
-----------------------------------------
> @2295 Mhz


### 


|Technique        |Time           |RelativeSpeed|Throughput|
|-----------------|---------------|-------------|----------|
|StaticConstructor|00:00:00.552277|1x           |18541.42/s|
|New-Object       |00:00:01.890196|3.42x        |5417.43/s |
