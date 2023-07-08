---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 4149079
      Days: 0
      Hours: 0
      Milliseconds: 414
      Minutes: 0
      Seconds: 0
      TotalDays: 4.80217476851852e-06
      TotalHours: 0.000115252194444444
      TotalMilliseconds: 414.9079
      TotalMinutes: 0.00691513166666667
      TotalSeconds: 0.4149079
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 24680.1760101459
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
  - Technique: New-Object
    Time: 
      Ticks: 13493829
      Days: 0
      Hours: 0
      Milliseconds: 349
      Minutes: 0
      Seconds: 1
      TotalDays: 1.56178576388889e-05
      TotalHours: 0.000374828583333333
      TotalMilliseconds: 1349.3829
      TotalMinutes: 0.022489715
      TotalSeconds: 1.3493829
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        RepeatCount: 10240
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
        FileName: How Much Faster Is The Static Constructor
    RelativeSpeed: 3.2522468239337
    ClockSpeed: 2095
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 7588.65404326674
    BenchmarkInput: 
      FileName: How Much Faster Is The Static Constructor
      RepeatCount: 10240
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2095
---




|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|StaticConstructor|10240      |00:00:00.414907|1x           |24680.18/s|
|New-Object       |10240      |00:00:01.349382|3.25x        |7588.65/s |
