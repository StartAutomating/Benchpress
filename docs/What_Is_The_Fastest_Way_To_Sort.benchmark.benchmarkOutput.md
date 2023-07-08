---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 180025
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.08362268518519e-07
      TotalHours: 5.00069444444444e-06
      TotalMilliseconds: 18.0025
      TotalMinutes: 0.000300041666666667
      TotalSeconds: 0.0180025
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
    Throughput: 5554.78405776975
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 547582
      Days: 0
      Hours: 0
      Milliseconds: 54
      Minutes: 0
      Seconds: 0
      TotalDays: 6.33775462962963e-07
      TotalHours: 1.52106111111111e-05
      TotalMilliseconds: 54.7582
      TotalMinutes: 0.000912636666666667
      TotalSeconds: 0.0547582
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 3.04169976392168
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Sort
    Throughput: 1826.21050363233
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2793
---
What Is The Fastest Way To Sort
-------------------------------
> @2793 Mhz


### 


|Technique     |Time           |RelativeSpeed|Throughput|
|--------------|---------------|-------------|----------|
|ArrayList.Sort|00:00:00.018002|1x           |5554.78/s |
|Sort-Object   |00:00:00.054758|3.04x        |1826.21/s |
