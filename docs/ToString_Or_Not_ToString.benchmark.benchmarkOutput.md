---
layout: Benchmark

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 55903
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.47025462962963e-08
      TotalHours: 1.55286111111111e-06
      TotalMilliseconds: 5.5903
      TotalMinutes: 9.31716666666667e-05
      TotalSeconds: 0.0055903
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "$pwd"
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: ToString Or Not ToString
    Throughput: 17888.1276496789
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 64132
      Days: 0
      Hours: 0
      Milliseconds: 6
      Minutes: 0
      Seconds: 0
      TotalDays: 7.42268518518518e-08
      TotalHours: 1.78144444444444e-06
      TotalMilliseconds: 6.4132
      TotalMinutes: 0.000106886666666667
      TotalSeconds: 0.0064132
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1.14720140242921
    ClockSpeed: 2095
    FileName: ToString Or Not ToString
    Throughput: 15592.8397679785
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2095
---
ToString Or Not ToString
------------------------
> @2095 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|Quoted   |00:00:00.005590|1x           |17888.13/s|
|ToString |00:00:00.006413|1.15x        |15592.84/s|
