---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 507748
      Days: 0
      Hours: 0
      Milliseconds: 50
      Minutes: 0
      Seconds: 0
      TotalDays: 5.87671296296296e-07
      TotalHours: 1.41041111111111e-05
      TotalMilliseconds: 50.7748
      TotalMinutes: 0.000846246666666667
      TotalSeconds: 0.0507748
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
    RepeatCount: 100
    Throughput: 1969.48092360777
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 571962
      Days: 0
      Hours: 0
      Milliseconds: 57
      Minutes: 0
      Seconds: 0
      TotalDays: 6.61993055555556e-07
      TotalHours: 1.58878333333333e-05
      TotalMilliseconds: 57.1962
      TotalMinutes: 0.00095327
      TotalSeconds: 0.0571962
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 1.12646824802855
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 1748.36789856669
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2594
---




|Technique     |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------|-----------|---------------|-------------|----------|
|ArrayList.Sort|100        |00:00:00.050774|1x           |1969.48/s |
|Sort-Object   |100        |00:00:00.057196|1.13x        |1748.37/s |
