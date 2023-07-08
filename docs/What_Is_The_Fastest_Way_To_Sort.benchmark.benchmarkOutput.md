---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 452631
      Days: 0
      Hours: 0
      Milliseconds: 45
      Minutes: 0
      Seconds: 0
      TotalDays: 5.23878472222222e-07
      TotalHours: 1.25730833333333e-05
      TotalMilliseconds: 45.2631
      TotalMinutes: 0.000754385
      TotalSeconds: 0.0452631
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
    Throughput: 2209.30515143682
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 577685
      Days: 0
      Hours: 0
      Milliseconds: 57
      Minutes: 0
      Seconds: 0
      TotalDays: 6.68616898148148e-07
      TotalHours: 1.60468055555556e-05
      TotalMilliseconds: 57.7685
      TotalMinutes: 0.000962808333333333
      TotalSeconds: 0.0577685
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: $arr | Sort-Object
    RelativeSpeed: 1.27628244640778
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 1731.04719700183
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2594
---




|Technique     |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------|-----------|---------------|-------------|----------|
|ArrayList.Sort|100        |00:00:00.045263|1x           |2209.31/s |
|Sort-Object   |100        |00:00:00.057768|1.28x        |1731.05/s |
