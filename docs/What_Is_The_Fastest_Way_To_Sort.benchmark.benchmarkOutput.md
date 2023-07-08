---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 330849
      Days: 0
      Hours: 0
      Milliseconds: 33
      Minutes: 0
      Seconds: 0
      TotalDays: 3.82927083333333e-07
      TotalHours: 9.19025e-06
      TotalMilliseconds: 33.0849
      TotalMinutes: 0.000551415
      TotalSeconds: 0.0330849
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: |
           
                  $al = [collections.arraylist]::new($arr) 
                  $al.Sort()
                  $al
              
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 3022.52689293303
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 671258
      Days: 0
      Hours: 0
      Milliseconds: 67
      Minutes: 0
      Seconds: 0
      TotalDays: 7.76918981481481e-07
      TotalHours: 1.86460555555556e-05
      TotalMilliseconds: 67.1258
      TotalMinutes: 0.00111876333333333
      TotalSeconds: 0.0671258
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: $arr | Sort-Object
    RelativeSpeed: 2.02889535709644
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 1489.74015952138
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2594
---


### 


|Technique     |Time           |RelativeSpeed|Throughput|
|--------------|---------------|-------------|----------|
|ArrayList.Sort|00:00:00.033084|1x           |3022.53/s |
|Sort-Object   |00:00:00.067125|2.03x        |1489.74/s |
