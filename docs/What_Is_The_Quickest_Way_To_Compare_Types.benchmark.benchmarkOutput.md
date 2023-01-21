---
layout: Benchmark

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 45842
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.30578703703704e-08
      TotalHours: 1.27338888888889e-06
      TotalMilliseconds: 4.5842
      TotalMinutes: 7.64033333333333e-05
      TotalSeconds: 0.0045842
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  1 -is [int]
              
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 21814.0569783168
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 67497
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.81215277777778e-08
      TotalHours: 1.87491666666667e-06
      TotalMilliseconds: 6.7497
      TotalMinutes: 0.000112495
      TotalSeconds: 0.0067497
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
    RelativeSpeed: 1.47238340386545
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 14815.4732802939
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 76890
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.89930555555556e-08
      TotalHours: 2.13583333333333e-06
      TotalMilliseconds: 7.689
      TotalMinutes: 0.00012815
      TotalSeconds: 0.007689
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
    RelativeSpeed: 1.67728284106278
    GroupName: Single Type comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 13005.592404734
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 45973
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.32094907407407e-08
      TotalHours: 1.27702777777778e-06
      TotalMilliseconds: 4.5973
      TotalMinutes: 7.66216666666667e-05
      TotalSeconds: 0.0045973
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 21751.8978530877
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 50657
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.8630787037037e-08
      TotalHours: 1.40713888888889e-06
      TotalMilliseconds: 5.0657
      TotalMinutes: 8.44283333333333e-05
      TotalSeconds: 0.0050657
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
    RelativeSpeed: 1.10188588954386
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 19740.6084055511
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 59034
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.83263888888889e-08
      TotalHours: 1.63983333333333e-06
      TotalMilliseconds: 5.9034
      TotalMinutes: 9.839e-05
      TotalSeconds: 0.0059034
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
    RelativeSpeed: 1.28410153785918
    GroupName: Multitype comparison
    ClockSpeed: 2095
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 16939.3908595047
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2095
---
What Is The Quickest Way To Compare Types
-----------------------------------------
> @2095 Mhz


### Multitype comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.004597|1x           |21751.9/s |
|.GetType().Name|00:00:00.005065|1.1x         |19740.61/s|
|.GetType() -eq |00:00:00.005903|1.28x        |16939.39/s|


### Single Type comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.004584|1x           |21814.06/s|
|.GetType().Name|00:00:00.006749|1.47x        |14815.47/s|
|.GetType() -eq |00:00:00.007689|1.68x        |13005.59/s|
