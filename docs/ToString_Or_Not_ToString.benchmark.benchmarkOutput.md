---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 47216
      Days: 0
      Hours: 0
      Milliseconds: 4
      Minutes: 0
      Seconds: 0
      TotalDays: 5.46481481481481e-08
      TotalHours: 1.31155555555556e-06
      TotalMilliseconds: 4.7216
      TotalMinutes: 7.86933333333333e-05
      TotalSeconds: 0.0047216
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  "$pwd"
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 21179.261267367
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 55086
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 6.37569444444444e-08
      TotalHours: 1.53016666666667e-06
      TotalMilliseconds: 5.5086
      TotalMinutes: 9.181e-05
      TotalSeconds: 0.0055086
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  $PWD.ToString()
              
    RelativeSpeed: 1.16668078617418
    ClockSpeed: 2095
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 18153.4328141452
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2095
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|Quoted   |100        |00:00:00.004721|1x           |21179.26/s|
|ToString |100        |00:00:00.005508|1.17x        |18153.43/s|
