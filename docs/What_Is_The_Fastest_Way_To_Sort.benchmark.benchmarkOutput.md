---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 194544
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.25166666666667e-07
      TotalHours: 5.404e-06
      TotalMilliseconds: 19.4544
      TotalMinutes: 0.00032424
      TotalSeconds: 0.0194544
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  $al = [collections.arraylist]::new($arr) 
                  $al.Sort()
                  $al
              
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Sort
    Throughput: 5140.22534747923
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 928423
      Days: 0
      Hours: 0
      Milliseconds: 92
      Minutes: 0
      Seconds: 0
      TotalDays: 1.07456365740741e-06
      TotalHours: 2.57895277777778e-05
      TotalMilliseconds: 92.8423
      TotalMinutes: 0.00154737166666667
      TotalSeconds: 0.0928423
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 4.77230343778271
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Sort
    Throughput: 1077.09524645555
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2594
---


### 


|Technique     |Time           |RelativeSpeed|Throughput|
|--------------|---------------|-------------|----------|
|ArrayList.Sort|00:00:00.019454|1x           |5140.23/s |
|Sort-Object   |00:00:00.092842|4.77x        |1077.1/s  |
