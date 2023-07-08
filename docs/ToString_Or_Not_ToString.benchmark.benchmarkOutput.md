---
layout: Benchmark

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 50059
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.79386574074074e-08
      TotalHours: 1.39052777777778e-06
      TotalMilliseconds: 5.0059
      TotalMinutes: 8.34316666666667e-05
      TotalSeconds: 0.0050059
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "$pwd"
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: ToString Or Not ToString
    Throughput: 19976.4278151781
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 54588
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.31805555555556e-08
      TotalHours: 1.51633333333333e-06
      TotalMilliseconds: 5.4588
      TotalMinutes: 9.098e-05
      TotalSeconds: 0.0054588
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1.09047324157494
    ClockSpeed: 2594
    FileName: ToString Or Not ToString
    Throughput: 18319.04447864
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
|Quoted   |00:00:00.005005|1x           |19976.43/s|
|ToString |00:00:00.005458|1.09x        |18319.04/s|
