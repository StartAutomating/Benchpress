---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 186420
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.15763888888889e-07
      TotalHours: 5.17833333333333e-06
      TotalMilliseconds: 18.642
      TotalMinutes: 0.0003107
      TotalSeconds: 0.018642
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  $al = [collections.arraylist]::new($arr) 
                  $al.Sort()
                  $al
              
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Sort
    Throughput: 5364.2313056539
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 876631
      Days: 0
      Hours: 0
      Milliseconds: 87
      Minutes: 0
      Seconds: 0
      TotalDays: 1.01461921296296e-06
      TotalHours: 2.43508611111111e-05
      TotalMilliseconds: 87.6631
      TotalMinutes: 0.00146105166666667
      TotalSeconds: 0.0876631
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 4.70245145370668
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Sort
    Throughput: 1140.73082060753
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2793
---


### 


|Technique     |Time           |RelativeSpeed|Throughput|
|--------------|---------------|-------------|----------|
|ArrayList.Sort|00:00:00.018642|1x           |5364.23/s |
|Sort-Object   |00:00:00.087663|4.7x         |1140.73/s |
