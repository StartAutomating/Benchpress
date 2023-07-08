---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 407090
      Days: 0
      Hours: 0
      Milliseconds: 40
      Minutes: 0
      Seconds: 0
      TotalDays: 4.71168981481481e-07
      TotalHours: 1.13080555555556e-05
      TotalMilliseconds: 40.709
      TotalMinutes: 0.000678483333333333
      TotalSeconds: 0.040709
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
    Throughput: 2456.45925962318
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 720436
      Days: 0
      Hours: 0
      Milliseconds: 72
      Minutes: 0
      Seconds: 0
      TotalDays: 8.33837962962963e-07
      TotalHours: 2.00121111111111e-05
      TotalMilliseconds: 72.0436
      TotalMinutes: 0.00120072666666667
      TotalSeconds: 0.0720436
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: $arr | Sort-Object
    RelativeSpeed: 1.76972168316588
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 1388.04834850008
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2295
---




|Technique     |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------|-----------|---------------|-------------|----------|
|ArrayList.Sort|100        |00:00:00.040709|1x           |2456.46/s |
|Sort-Object   |100        |00:00:00.072043|1.77x        |1388.05/s |
