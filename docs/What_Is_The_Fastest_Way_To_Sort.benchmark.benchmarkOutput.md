---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 300622
      Days: 0
      Hours: 0
      Milliseconds: 30
      Minutes: 0
      Seconds: 0
      TotalDays: 3.4794212962963e-07
      TotalHours: 8.35061111111111e-06
      TotalMilliseconds: 30.0622
      TotalMinutes: 0.000501036666666667
      TotalSeconds: 0.0300622
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: |
           
                  $al = [collections.arraylist]::new($arr) 
                  $al.Sort()
                  $al
              
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 3326.43652161186
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 548524
      Days: 0
      Hours: 0
      Milliseconds: 54
      Minutes: 0
      Seconds: 0
      TotalDays: 6.34865740740741e-07
      TotalHours: 1.52367777777778e-05
      TotalMilliseconds: 54.8524
      TotalMinutes: 0.000914206666666667
      TotalSeconds: 0.0548524
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: $arr | Sort-Object
    RelativeSpeed: 1.82463026658062
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 1823.07428663103
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2793
---


### 


|Technique     |Time           |RelativeSpeed|Throughput|
|--------------|---------------|-------------|----------|
|ArrayList.Sort|00:00:00.030062|1x           |3326.44/s |
|Sort-Object   |00:00:00.054852|1.82x        |1823.07/s |
