---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 39887
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.61655092592593e-08
      TotalHours: 1.10797222222222e-06
      TotalMilliseconds: 3.9887
      TotalMinutes: 6.64783333333333e-05
      TotalSeconds: 0.0039887
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  1 -is [int]
              
        GroupName: Single Type comparison
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 25070.8250808534
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 57611
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.66793981481482e-08
      TotalHours: 1.60030555555556e-06
      TotalMilliseconds: 5.7611
      TotalMinutes: 9.60183333333333e-05
      TotalSeconds: 0.0057611
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        GroupName: Single Type comparison
    RelativeSpeed: 1.44435530373305
    GroupName: Single Type comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 17357.7962541876
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 71353
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.25844907407407e-08
      TotalHours: 1.98202777777778e-06
      TotalMilliseconds: 7.1353
      TotalMinutes: 0.000118921666666667
      TotalSeconds: 0.0071353
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        GroupName: Single Type comparison
    RelativeSpeed: 1.78887858199413
    GroupName: Single Type comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 14014.8276876936
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 42836
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.95787037037037e-08
      TotalHours: 1.18988888888889e-06
      TotalMilliseconds: 4.2836
      TotalMinutes: 7.13933333333333e-05
      TotalSeconds: 0.0042836
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        GroupName: Multitype comparison
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 23344.8501260622
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 50797
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.87928240740741e-08
      TotalHours: 1.41102777777778e-06
      TotalMilliseconds: 5.0797
      TotalMinutes: 8.46616666666667e-05
      TotalSeconds: 0.0050797
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        GroupName: Multitype comparison
    RelativeSpeed: 1.18584835185358
    GroupName: Multitype comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 19686.2019410595
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 328985
      Days: 0
      Hours: 0
      Milliseconds: 32
      Minutes: 0
      Seconds: 0
      TotalDays: 3.80769675925926e-07
      TotalHours: 9.13847222222222e-06
      TotalMilliseconds: 32.8985
      TotalMinutes: 0.000548308333333333
      TotalSeconds: 0.0328985
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        GroupName: Multitype comparison
    RelativeSpeed: 7.68010551872257
    GroupName: Multitype comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 3039.65226378102
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2793
---


### Multitype comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|.GetType().Name|00:00:00.004283|1x           |23344.85/s|
|.GetType() -eq |00:00:00.005079|1.19x        |19686.2/s |
|-is operator   |00:00:00.032898|7.68x        |3039.65/s |


### Single Type comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.003988|1x           |25070.83/s|
|.GetType().Name|00:00:00.005761|1.44x        |17357.8/s |
|.GetType() -eq |00:00:00.007135|1.79x        |14014.83/s|
