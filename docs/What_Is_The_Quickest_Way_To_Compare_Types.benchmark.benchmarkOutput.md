---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 39336
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.55277777777778e-08
      TotalHours: 1.09266666666667e-06
      TotalMilliseconds: 3.9336
      TotalMinutes: 6.556e-05
      TotalSeconds: 0.0039336
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 25422.0052877771
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: .GetType() -eq
    Time: 
      Ticks: 63839
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.38877314814815e-08
      TotalHours: 1.77330555555556e-06
      TotalMilliseconds: 6.3839
      TotalMinutes: 0.000106398333333333
      TotalSeconds: 0.0063839
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
    RelativeSpeed: 1.6229153955664
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 15664.4057707671
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: .GetType().Name
    Time: 
      Ticks: 180847
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.09313657407407e-07
      TotalHours: 5.02352777777778e-06
      TotalMilliseconds: 18.0847
      TotalMinutes: 0.000301411666666667
      TotalSeconds: 0.0180847
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
    RelativeSpeed: 4.59749339027863
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 5529.53601663284
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: -is operator
    Time: 
      Ticks: 38990
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.51273148148148e-08
      TotalHours: 1.08305555555556e-06
      TotalMilliseconds: 3.899
      TotalMinutes: 6.49833333333333e-05
      TotalSeconds: 0.003899
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 25647.6019492177
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
  - Technique: .GetType().Name
    Time: 
      Ticks: 43808
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.07037037037037e-08
      TotalHours: 1.21688888888889e-06
      TotalMilliseconds: 4.3808
      TotalMinutes: 7.30133333333333e-05
      TotalSeconds: 0.0043808
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
    RelativeSpeed: 1.12357014619133
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 22826.880934989
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
  - Technique: .GetType() -eq
    Time: 
      Ticks: 51230
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.92939814814815e-08
      TotalHours: 1.42305555555556e-06
      TotalMilliseconds: 5.123
      TotalMinutes: 8.53833333333333e-05
      TotalSeconds: 0.005123
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
    RelativeSpeed: 1.31392664785843
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 19519.8126097989
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2594
---


### Multitype comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.003899|1x           |25647.6/s |
|.GetType().Name|100        |00:00:00.004380|1.12x        |22826.88/s|
|.GetType() -eq |100        |00:00:00.005123|1.31x        |19519.81/s|


### Single Type comparison


|Technique      |RepeatCount|Time           |RelativeSpeed|Throughput|
|---------------|-----------|---------------|-------------|----------|
|-is operator   |100        |00:00:00.003933|1x           |25422.01/s|
|.GetType() -eq |100        |00:00:00.006383|1.62x        |15664.41/s|
|.GetType().Name|100        |00:00:00.018084|4.6x         |5529.54/s |
