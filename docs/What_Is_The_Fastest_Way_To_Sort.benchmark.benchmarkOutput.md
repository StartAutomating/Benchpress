---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 264270
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 0
      TotalDays: 3.05868055555556e-07
      TotalHours: 7.34083333333333e-06
      TotalMilliseconds: 26.427
      TotalMinutes: 0.00044045
      TotalSeconds: 0.026427
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  $al = [collections.arraylist]::new($arr) 
                  $al.Sort()
                  $al
              
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 3784.00877890037
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 1166888
      Days: 0
      Hours: 0
      Milliseconds: 116
      Minutes: 0
      Seconds: 0
      TotalDays: 1.35056481481481e-06
      TotalHours: 3.24135555555556e-05
      TotalMilliseconds: 116.6888
      TotalMinutes: 0.00194481333333333
      TotalSeconds: 0.1166888
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 4.41551443599349
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 856.980275741974
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2295
---




|Technique     |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------|-----------|---------------|-------------|----------|
|ArrayList.Sort|100        |00:00:00.026427|1x           |3784.01/s |
|Sort-Object   |100        |00:00:00.116688|4.42x        |856.98/s  |
