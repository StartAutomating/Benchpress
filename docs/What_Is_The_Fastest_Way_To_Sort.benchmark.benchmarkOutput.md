---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 191715
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.21892361111111e-07
      TotalHours: 5.32541666666667e-06
      TotalMilliseconds: 19.1715
      TotalMinutes: 0.000319525
      TotalSeconds: 0.0191715
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
    Throughput: 5216.07594606577
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 703798
      Days: 0
      Hours: 0
      Milliseconds: 70
      Minutes: 0
      Seconds: 0
      TotalDays: 8.14581018518518e-07
      TotalHours: 1.95499444444444e-05
      TotalMilliseconds: 70.3798
      TotalMinutes: 0.00117299666666667
      TotalSeconds: 0.0703798
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 3.6710638186892
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 1420.86223603932
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2594
---




|Technique     |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------|-----------|---------------|-------------|----------|
|ArrayList.Sort|100        |00:00:00.019171|1x           |5216.08/s |
|Sort-Object   |100        |00:00:00.070379|3.67x        |1420.86/s |
