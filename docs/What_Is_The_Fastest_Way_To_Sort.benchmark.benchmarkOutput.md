---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 396517
      Days: 0
      Hours: 0
      Milliseconds: 39
      Minutes: 0
      Seconds: 0
      TotalDays: 4.58931712962963e-07
      TotalHours: 1.10143611111111e-05
      TotalMilliseconds: 39.6517
      TotalMinutes: 0.000660861666666667
      TotalSeconds: 0.0396517
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: |
           
                  $al = [collections.arraylist]::new($arr) 
                  $al.Sort()
                  $al
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 2521.95996640749
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 814095
      Days: 0
      Hours: 0
      Milliseconds: 81
      Minutes: 0
      Seconds: 0
      TotalDays: 9.42239583333333e-07
      TotalHours: 2.261375e-05
      TotalMilliseconds: 81.4095
      TotalMinutes: 0.001356825
      TotalSeconds: 0.0814095
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: $arr | Sort-Object
    RelativeSpeed: 2.05311499885251
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 1228.35786978178
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2095
---




|Technique     |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------|-----------|---------------|-------------|----------|
|ArrayList.Sort|100        |00:00:00.039651|1x           |2521.96/s |
|Sort-Object   |100        |00:00:00.081409|2.05x        |1228.36/s |
