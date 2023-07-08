---
layout: Benchmark
title: ToString Or Not ToString

Data: 
  - Technique: Quoted
    Time: 
      Ticks: 51057
      Days: 0
      Hours: 0
      Milliseconds: 5
      Minutes: 0
      Seconds: 0
      TotalDays: 5.909375e-08
      TotalHours: 1.41825e-06
      TotalMilliseconds: 5.1057
      TotalMinutes: 8.5095e-05
      TotalSeconds: 0.0051057
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  "$pwd"
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 19585.952954541
    BenchmarkInput: 
      FileName: ToString Or Not ToString
  - Technique: ToString
    Time: 
      Ticks: 316490
      Days: 0
      Hours: 0
      Milliseconds: 31
      Minutes: 0
      Seconds: 0
      TotalDays: 3.6630787037037e-07
      TotalHours: 8.79138888888889e-06
      TotalMilliseconds: 31.649
      TotalMinutes: 0.000527483333333333
      TotalSeconds: 0.031649
      FileName: ToString Or Not ToString
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $PWD.ToString()
              
        FileName: ToString Or Not ToString
    RelativeSpeed: 6.19875825058268
    ClockSpeed: 2594
    FileName: ToString Or Not ToString
    RepeatCount: 100
    Throughput: 3159.65749312775
    BenchmarkInput: 
      FileName: ToString Or Not ToString
FileName: ToString Or Not ToString
ClockSpeed: 2594
---




|Technique|RepeatCount|Time           |RelativeSpeed|Throughput|
|---------|-----------|---------------|-------------|----------|
|Quoted   |100        |00:00:00.005105|1x           |19585.95/s|
|ToString |100        |00:00:00.031649|6.2x         |3159.66/s |
