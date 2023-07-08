---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 74998
      Days: 0
      Hours: 0
      Milliseconds: 7
      Minutes: 0
      Seconds: 0
      TotalDays: 8.68032407407407e-08
      TotalHours: 2.08327777777778e-06
      TotalMilliseconds: 7.4998
      TotalMinutes: 0.000124996666666667
      TotalSeconds: 0.0074998
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  "$pwd"
              
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 13333.6888983706
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 81602
      Days: 0
      Hours: 0
      Milliseconds: 8
      Minutes: 0
      Seconds: 0
      TotalDays: 9.44467592592593e-08
      TotalHours: 2.26672222222222e-06
      TotalMilliseconds: 8.1602
      TotalMinutes: 0.000136003333333333
      TotalSeconds: 0.0081602
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        FileName: ToString Or Not ToString
        ScriptBlock: |
          
                  $PWD.ToString()
              
    RelativeSpeed: 1.08805568148484
    ClockSpeed: 2295
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 12254.6016029019
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2295
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|Quoted   |100        |00:00:00.007499|1x           |13333.69/s|
|ToString |100        |00:00:00.008160|1.09x        |12254.6/s |
