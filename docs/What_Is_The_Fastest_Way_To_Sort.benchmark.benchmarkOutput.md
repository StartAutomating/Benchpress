---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 211140
      Days: 0
      Hours: 0
      Milliseconds: 21
      Minutes: 0
      Seconds: 0
      TotalDays: 2.44375e-07
      TotalHours: 5.865e-06
      TotalMilliseconds: 21.114
      TotalMinutes: 0.0003519
      TotalSeconds: 0.021114
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: |
           
                  $al = [collections.arraylist]::new($arr) 
                  $al.Sort()
                  $al
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 4736.19399450601
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 830860
      Days: 0
      Hours: 0
      Milliseconds: 83
      Minutes: 0
      Seconds: 0
      TotalDays: 9.61643518518519e-07
      TotalHours: 2.30794444444444e-05
      TotalMilliseconds: 83.086
      TotalMinutes: 0.00138476666666667
      TotalSeconds: 0.083086
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: $arr | Sort-Object
    RelativeSpeed: 3.93511414227527
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 1203.57220229642
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2095
---




|Technique     |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------|-----------|---------------|-------------|----------|
|ArrayList.Sort|100        |00:00:00.021114|1x           |4736.19/s |
|Sort-Object   |100        |00:00:00.083086|3.94x        |1203.57/s |
