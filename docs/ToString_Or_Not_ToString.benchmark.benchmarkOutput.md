---
layout: Benchmark

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 51122
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.91689814814815e-08
      TotalHours: 1.42005555555556e-06
      TotalMilliseconds: 5.1122
      TotalMinutes: 8.52033333333333e-05
      TotalSeconds: 0.0051122
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "$pwd"
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: ToString Or Not ToString
    Throughput: 19561.050037166
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 54943
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.35914351851852e-08
      TotalHours: 1.52619444444444e-06
      TotalMilliseconds: 5.4943
      TotalMinutes: 9.15716666666667e-05
      TotalSeconds: 0.0054943
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1.07474277219201
    ClockSpeed: 2594
    FileName: ToString Or Not ToString
    Throughput: 18200.6807054584
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2594
---
ToString Or Not ToString
------------------------
> @2594 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|Quoted   |00:00:00.005112|1x           |19561.05/s|
|ToString |00:00:00.005494|1.07x        |18200.68/s|
