---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 238766
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.76349537037037e-07
      TotalHours: 6.63238888888889e-06
      TotalMilliseconds: 23.8766
      TotalMinutes: 0.000397943333333333
      TotalSeconds: 0.0238766
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
    Throughput: 4188.2010001424
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 1135608
      Days: 0
      Hours: 0
      Milliseconds: 113
      Minutes: 0
      Seconds: 0
      TotalDays: 1.31436111111111e-06
      TotalHours: 3.15446666666667e-05
      TotalMilliseconds: 113.5608
      TotalMinutes: 0.00189268
      TotalSeconds: 0.1135608
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 4.75615456136971
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Sort
    Throughput: 880.585554170101
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2295
---
What Is The Fastest Way To Sort
-------------------------------
> @2295 Mhz


### 


|Technique     |Time           |RelativeSpeed|Throughput|
|--------------|---------------|-------------|----------|
|ArrayList.Sort|00:00:00.023876|1x           |4188.2/s  |
|Sort-Object   |00:00:00.113560|4.76x        |880.59/s  |
