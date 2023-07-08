---
layout: Benchmark
title: How Much Faster Is The Static Constructor

Data: 
  - Technique: StaticConstructor
    Time: 
      Ticks: 3461527
      Days: 0
      Hours: 0
      Milliseconds: 346
      Minutes: 0
      Seconds: 0
      TotalDays: 4.00639699074074e-06
      TotalHours: 9.61535277777778e-05
      TotalMilliseconds: 346.1527
      TotalMinutes: 0.00576921166666667
      TotalSeconds: 0.3461527
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is The Static Constructor
        RepeatCount: 10240
        ScriptBlock: |
          
                          $b = [byte[]]::new(1kb)
                          $b = $null
                      
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 29582.3201725712
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
  - Technique: New-Object
    Time: 
      Ticks: 11427298
      Days: 0
      Hours: 0
      Milliseconds: 142
      Minutes: 0
      Seconds: 1
      TotalDays: 1.32260393518519e-05
      TotalHours: 0.000317424944444444
      TotalMilliseconds: 1142.7298
      TotalMinutes: 0.0190454966666667
      TotalSeconds: 1.1427298
      FileName: How Much Faster Is The Static Constructor
      GroupName: 
      BenchmarkInput: 
        FileName: How Much Faster Is The Static Constructor
        RepeatCount: 10240
        ScriptBlock: |
          
                          $b = New-Object Byte[] 1kb
                          $b = $null
                      
    RelativeSpeed: 3.30123035296272
    ClockSpeed: 2594
    FileName: How Much Faster Is The Static Constructor
    RepeatCount: 10240
    Throughput: 8960.99847925555
    BenchmarkInput: 
      RepeatCount: 10240
      FileName: How Much Faster Is The Static Constructor
FileName: How Much Faster Is The Static Constructor
ClockSpeed: 2594
---




|Technique        |RepeatCount|Time           |RelativeSpeed|Throughput|
|-----------------|-----------|---------------|-------------|----------|
|StaticConstructor|10240      |00:00:00.346152|1x           |29582.32/s|
|New-Object       |10240      |00:00:01.142729|3.3x         |8961/s    |
