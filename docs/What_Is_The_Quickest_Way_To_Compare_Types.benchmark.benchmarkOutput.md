---
layout: Benchmark

Data: 
  - Technique: -is operator
    Time: 
      Ticks: 39030
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.51736111111111e-08
      TotalHours: 1.08416666666667e-06
      TotalMilliseconds: 3.903
      TotalMinutes: 6.505e-05
      TotalSeconds: 0.003903
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        ScriptBlock: |
          
                  1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Single Type comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 25621.3169356905
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 48885
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.65798611111111e-08
      TotalHours: 1.35791666666667e-06
      TotalMilliseconds: 4.8885
      TotalMinutes: 8.1475e-05
      TotalSeconds: 0.0048885
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        ScriptBlock: |
                  
                  (1).GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.25249807840123
    GroupName: Single Type comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 20456.1726500972
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 68237
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.89780092592593e-08
      TotalHours: 1.89547222222222e-06
      TotalMilliseconds: 6.8237
      TotalMinutes: 0.000113728333333333
      TotalSeconds: 0.0068237
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Single Type comparison
      BenchmarkInput: 
        GroupName: Single Type comparison
        ScriptBlock: |
          
                  (1).GetType().Name -eq 'int32'
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.74832180374071
    GroupName: Single Type comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 14654.806043642
    BenchmarkInput: 
      GroupName: Single Type comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: -is operator
    Time: 
      Ticks: 37212
      Days: 0
      Hours: 0
      Milliseconds: 3
      Minutes: 0
      Seconds: 0
      TotalDays: 4.30694444444444e-08
      TotalHours: 1.03366666666667e-06
      TotalMilliseconds: 3.7212
      TotalMinutes: 6.202e-05
      TotalSeconds: 0.0037212
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  1 -is [double] -or 1 -is [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1
    GroupName: Multitype comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 26873.0517037515
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType().Name
    Time: 
      Ticks: 41237
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 4.77280092592593e-08
      TotalHours: 1.14547222222222e-06
      TotalMilliseconds: 4.1237
      TotalMinutes: 6.87283333333333e-05
      TotalSeconds: 0.0041237
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  (1).GetType().Name -in 'double','int32'
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.1081640331076
    GroupName: Multitype comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 24250.0666876834
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
  - Technique: .GetType() -eq
    Time: 
      Ticks: 47161
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.45844907407407e-08
      TotalHours: 1.31002777777778e-06
      TotalMilliseconds: 4.7161
      TotalMinutes: 7.86016666666667e-05
      TotalSeconds: 0.0047161
      FileName: What Is The Quickest Way To Compare Types
      GroupName: Multitype comparison
      BenchmarkInput: 
        GroupName: Multitype comparison
        ScriptBlock: |
          
                  $one = 1
                  $one.GetType() -eq [double] -or $one.GetType() -eq [int]
              
        FileName: What Is The Quickest Way To Compare Types
    RelativeSpeed: 1.26735999140062
    GroupName: Multitype comparison
    ClockSpeed: 2793
    FileName: What Is The Quickest Way To Compare Types
    Throughput: 21203.9608998961
    BenchmarkInput: 
      GroupName: Multitype comparison
      FileName: What Is The Quickest Way To Compare Types
FileName: What Is The Quickest Way To Compare Types
ClockSpeed: 2793
---
What Is The Quickest Way To Compare Types
-----------------------------------------
> @2793 Mhz


### Multitype comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.003721|1x           |26873.05/s|
|.GetType().Name|00:00:00.004123|1.11x        |24250.07/s|
|.GetType() -eq |00:00:00.004716|1.27x        |21203.96/s|


### Single Type comparison


|Technique      |Time           |RelativeSpeed|Throughput|
|---------------|---------------|-------------|----------|
|-is operator   |00:00:00.003903|1x           |25621.32/s|
|.GetType() -eq |00:00:00.004888|1.25x        |20456.17/s|
|.GetType().Name|00:00:00.006823|1.75x        |14654.81/s|
