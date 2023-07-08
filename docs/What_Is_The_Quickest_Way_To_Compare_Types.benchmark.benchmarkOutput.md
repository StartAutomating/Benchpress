---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 38159
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.41655092592593e-08
      TotalHours: 1.05997222222222e-06
      TotalMilliseconds: 3.8159
      TotalMinutes: 6.35983333333333e-05
      TotalSeconds: 0.0038159
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
    Throughput: 26206.1374773972
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: .GetType() -eq
    Time: 
      Ticks: 50497
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.84456018518519e-08
      TotalHours: 1.40269444444444e-06
      TotalMilliseconds: 5.0497
      TotalMinutes: 8.41616666666667e-05
      TotalSeconds: 0.0050497
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
    RelativeSpeed: 1.32333132419613
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 19803.1566231657
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: .GetType().Name
    Time: 
      Ticks: 70204
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.12546296296296e-08
      TotalHours: 1.95011111111111e-06
      TotalMilliseconds: 7.0204
      TotalMinutes: 0.000117006666666667
      TotalSeconds: 0.0070204
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Single Type comparison
    RelativeSpeed: 1.83977567546319
    GroupName: Single Type comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 14244.2026095379
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
  - Technique: -is operator
    Time: 
      Ticks: 38453
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.4505787037037e-08
      TotalHours: 1.06813888888889e-06
      TotalMilliseconds: 3.8453
      TotalMinutes: 6.40883333333333e-05
      TotalSeconds: 0.0038453
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
    Throughput: 26005.7732816685
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
  - Technique: .GetType().Name
    Time: 
      Ticks: 44999
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.20821759259259e-08
      TotalHours: 1.24997222222222e-06
      TotalMilliseconds: 4.4999
      TotalMinutes: 7.49983333333333e-05
      TotalSeconds: 0.0044999
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
    RelativeSpeed: 1.1702337919018
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 22222.7160603569
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
  - Technique: .GetType() -eq
    Time: 
      Ticks: 49834
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.76782407407407e-08
      TotalHours: 1.38427777777778e-06
      TotalMilliseconds: 4.9834
      TotalMinutes: 8.30566666666667e-05
      TotalSeconds: 0.0049834
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
        GroupName: Multitype comparison
    RelativeSpeed: 1.29597170571867
    GroupName: Multitype comparison
    ClockSpeed: 2594
    FileName: What Is The Quickest Way To Compare Types
    RepeatCount: 100
    Throughput: 20066.6211823253
    BenchmarkInput: 
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2594
---


### Multitype comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.003845|1x           |26005.77/s|
|.GetType().Name|00:00:00.004499|1.17x        |22222.72/s|
|.GetType() -eq |00:00:00.004983|1.3x         |20066.62/s|


### Single Type comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.003815|1x           |26206.14/s|
|.GetType() -eq |00:00:00.005049|1.32x        |19803.16/s|
|.GetType().Name|00:00:00.007020|1.84x        |14244.2/s |
