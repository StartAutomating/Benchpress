---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 215179
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.49049768518519e-07
      TotalHours: 5.97719444444444e-06
      TotalMilliseconds: 21.5179
      TotalMinutes: 0.000358631666666667
      TotalSeconds: 0.0215179
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  $al = [collections.arraylist]::new($arr) 
                  $al.Sort()
                  $al
              
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 4647.29364854377
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 948678
      Days: 0
      Hours: 0
      Milliseconds: 94
      Minutes: 0
      Seconds: 0
      TotalDays: 1.09800694444444e-06
      TotalHours: 2.63521666666667e-05
      TotalMilliseconds: 94.8678
      TotalMinutes: 0.00158113
      TotalSeconds: 0.0948678
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 4.40878524391321
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 1054.09844014513
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2095
---




|Technique     |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------|-----------|---------------|-------------|----------|
|ArrayList.Sort|100        |00:00:00.021517|1x           |4647.29/s |
|Sort-Object   |100        |00:00:00.094867|4.41x        |1054.1/s  |
