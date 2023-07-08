---
layout: Benchmark

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 74230
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.59143518518519e-08
      TotalHours: 2.06194444444444e-06
      TotalMilliseconds: 7.423
      TotalMinutes: 0.000123716666666667
      TotalSeconds: 0.007423
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "$pwd"
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: ToString Or Not ToString
    Throughput: 13471.6421931833
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 77839
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 9.00914351851852e-08
      TotalHours: 2.16219444444444e-06
      TotalMilliseconds: 7.7839
      TotalMinutes: 0.000129731666666667
      TotalSeconds: 0.0077839
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1.0486191566752
    ClockSpeed: 2295
    FileName: ToString Or Not ToString
    Throughput: 12847.030408921
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2295
---
ToString Or Not ToString
------------------------
> @2295 Mhz


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|Quoted   |00:00:00.007423|1x           |13471.64/s|
|ToString |00:00:00.007783|1.05x        |12847.03/s|
