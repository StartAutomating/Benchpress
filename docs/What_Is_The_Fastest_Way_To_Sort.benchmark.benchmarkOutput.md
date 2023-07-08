---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 262416
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 0
      TotalDays: 3.03722222222222e-07
      TotalHours: 7.28933333333333e-06
      TotalMilliseconds: 26.2416
      TotalMinutes: 0.00043736
      TotalSeconds: 0.0262416
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  $al = [collections.arraylist]::new($arr) 
                  $al.Sort()
                  $al
              
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 1
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Sort
    Throughput: 3810.74324736297
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 899200
      Days: 0
      Hours: 0
      Milliseconds: 89
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04074074074074e-06
      TotalHours: 2.49777777777778e-05
      TotalMilliseconds: 89.92
      TotalMinutes: 0.00149866666666667
      TotalSeconds: 0.08992
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 3.42662032802878
    ClockSpeed: 2397
    FileName: What Is The Fastest Way To Sort
    Throughput: 1112.09964412811
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2397
---


### 


|Technique     |Time           |RelativeSpeed|Throughput|
|--------------|---------------|-------------|----------|
|ArrayList.Sort|00:00:00.026241|1x           |3810.74/s |
|Sort-Object   |00:00:00.089920|3.43x        |1112.1/s  |
