---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 75151
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.69803240740741e-08
      TotalHours: 2.08752777777778e-06
      TotalMilliseconds: 7.5151
      TotalMinutes: 0.000125251666666667
      TotalSeconds: 0.0075151
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "$pwd"
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1
    ClockSpeed: 2397
    FileName: ToString Or Not ToString
    Throughput: 13306.5428271081
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 82474
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.54560185185185e-08
      TotalHours: 2.29094444444444e-06
      TotalMilliseconds: 8.2474
      TotalMinutes: 0.000137456666666667
      TotalSeconds: 0.0082474
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1.09744381312291
    ClockSpeed: 2397
    FileName: ToString Or Not ToString
    Throughput: 12125.0333438417
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2397
---


### 


|Technique|Time           |RelativeSpeed|Throughput|
|---------|---------------|-------------|----------|
|Quoted   |00:00:00.007515|1x           |13306.54/s|
|ToString |00:00:00.008247|1.1x         |12125.03/s|
