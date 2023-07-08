---
layout: Benchmark
title: What Is The Quickest Way To Compare Types

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 56892
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.58472222222222e-08
      TotalHours: 1.58033333333333e-06
      TotalMilliseconds: 5.6892
      TotalMinutes: 9.482e-05
      TotalSeconds: 0.0056892
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [int]
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 17577.1637488575
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 102760
      Days: 0
      Hours: 0
      Milliseconds: 10
      Minutes: 0
      Seconds: 0
      TotalDays: 1.18935185185185e-07
      TotalHours: 2.85444444444444e-06
      TotalMilliseconds: 10.276
      TotalMinutes: 0.000171266666666667
      TotalSeconds: 0.010276
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.8062293468326
    GroupName: Single Type comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 9731.41300116777
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 452239
      Days: 0
      Hours: 0
      Milliseconds: 45
      Minutes: 0
      Seconds: 0
      TotalDays: 5.23424768518519e-07
      TotalHours: 1.25621944444444e-05
      TotalMilliseconds: 45.2239
      TotalMinutes: 0.000753731666666667
      TotalSeconds: 0.0452239
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        GroupName: Single Type comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 7.94907895661956
    GroupName: Single Type comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 2211.22017340389
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 52807
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.1119212962963e-08
      TotalHours: 1.46686111111111e-06
      TotalMilliseconds: 5.2807
      TotalMinutes: 8.80116666666667e-05
      TotalSeconds: 0.0052807
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 18936.8833677353
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 58622
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.7849537037037e-08
      TotalHours: 1.62838888888889e-06
      TotalMilliseconds: 5.8622
      TotalMinutes: 9.77033333333333e-05
      TotalSeconds: 0.0058622
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.11011797678338
    GroupName: Multitype comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 17058.4422230562
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 68934
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.97847222222222e-08
      TotalHours: 1.91483333333333e-06
      TotalMilliseconds: 6.8934
      TotalMinutes: 0.00011489
      TotalSeconds: 0.0068934
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        GroupName: Multitype comparison
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.30539511807147
    GroupName: Multitype comparison
    ClockSpeed: 2295
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 14506.6295296951
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2295
---
What Is The Quickest Way To Compare Types
-----------------------------------------
> @2295 Mhz


### Multitype comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.005280|1x           |18936.88/s|
|.GetType().Name|00:00:00.005862|1.11x        |17058.44/s|
|.GetType() -eq |00:00:00.006893|1.31x        |14506.63/s|


### Single Type comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.005689|1x           |17577.16/s|
|.GetType().Name|00:00:00.010276|1.81x        |9731.41/s |
|.GetType() -eq |00:00:00.045223|7.95x        |2211.22/s |
