---
layout: Benchmark

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 61868
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.16064814814815e-08
      TotalHours: 1.71855555555556e-06
      TotalMilliseconds: 6.1868
      TotalMinutes: 0.000103113333333333
      TotalSeconds: 0.0061868
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [int]
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2394
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 16163.4447533458
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 85856
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.93703703703704e-08
      TotalHours: 2.38488888888889e-06
      TotalMilliseconds: 8.5856
      TotalMinutes: 0.000143093333333333
      TotalSeconds: 0.0085856
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.38772871274326
    GroupName: Single Type comparison
    ClockSpeed: 2394
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 11647.4096161014
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 89181
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 1.0321875e-07
      TotalHours: 2.47725e-06
      TotalMilliseconds: 8.9181
      TotalMinutes: 0.000148635
      TotalSeconds: 0.0089181
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.44147216654813
    GroupName: Single Type comparison
    ClockSpeed: 2394
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 11213.1507832386
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 59352
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.86944444444444e-08
      TotalHours: 1.64866666666667e-06
      TotalMilliseconds: 5.9352
      TotalMinutes: 9.892e-05
      TotalSeconds: 0.0059352
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2394
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 16848.6318910904
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 69037
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.99039351851852e-08
      TotalHours: 1.91769444444444e-06
      TotalMilliseconds: 6.9037
      TotalMinutes: 0.000115061666666667
      TotalSeconds: 0.0069037
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.16317899986521
    GroupName: Multitype comparison
    ClockSpeed: 2394
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 14484.9863116879
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 74038
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.56921296296296e-08
      TotalHours: 2.05661111111111e-06
      TotalMilliseconds: 7.4038
      TotalMinutes: 0.000123396666666667
      TotalSeconds: 0.0074038
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.24743900795255
    GroupName: Multitype comparison
    ClockSpeed: 2394
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 13506.5777033415
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2394
---
What Is The Quickest Way To Compare Types
-----------------------------------------
> @2394 Mhz


### Multitype comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.005935|1x           |16848.63/s|
|.GetType().Name|00:00:00.006903|1.16x        |14484.99/s|
|.GetType() -eq |00:00:00.007403|1.25x        |13506.58/s|


### Single Type comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.006186|1x           |16163.44/s|
|.GetType() -eq |00:00:00.008585|1.39x        |11647.41/s|
|.GetType().Name|00:00:00.008918|1.44x        |11213.15/s|
