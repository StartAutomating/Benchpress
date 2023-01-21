---
layout: Benchmark

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 49687
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.75081018518519e-08
      TotalHours: 1.38019444444444e-06
      TotalMilliseconds: 4.9687
      TotalMinutes: 8.28116666666667e-05
      TotalSeconds: 0.0049687
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "$pwd"
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: ToString Or Not ToString
    Throughput: 20125.9886891944
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 55256
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.39537037037037e-08
      TotalHours: 1.53488888888889e-06
      TotalMilliseconds: 5.5256
      TotalMinutes: 9.20933333333333e-05
      TotalSeconds: 0.0055256
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1.11208163101012
    ClockSpeed: 2793
    FileName: ToString Or Not ToString
    Throughput: 18097.582163023
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2793
---
ToString Or Not ToString
------------------------
> @2793 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|Quoted   |00:00:00.004968|1x           |20125.99/s|
|ToString |00:00:00.005525|1.11x        |18097.58/s|
