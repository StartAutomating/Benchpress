---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 594849
      Days: 0
      Hours: 0
      Milliseconds: 59
      Minutes: 0
      Seconds: 0
      TotalDays: 6.88482638888889e-07
      TotalHours: 1.65235833333333e-05
      TotalMilliseconds: 59.4849
      TotalMinutes: 0.000991415
      TotalSeconds: 0.0594849
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: |
           
                  $al = [collections.arraylist]::new($arr) 
                  $al.Sort()
                  $al
              
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 1681.09890072943
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 751871
      Days: 0
      Hours: 0
      Milliseconds: 75
      Minutes: 0
      Seconds: 0
      TotalDays: 8.70221064814815e-07
      TotalHours: 2.08853055555556e-05
      TotalMilliseconds: 75.1871
      TotalMinutes: 0.00125311833333333
      TotalSeconds: 0.0751871
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: $arr | Sort-Object
    RelativeSpeed: 1.26396951159034
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 1330.01538827804
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2295
---




|Technique     |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------|-----------|---------------|-------------|----------|
|ArrayList.Sort|100        |00:00:00.059484|1x           |1681.1/s  |
|Sort-Object   |100        |00:00:00.075187|1.26x        |1330.02/s |
