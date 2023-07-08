---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 570445
      Days: 0
      Hours: 0
      Milliseconds: 57
      Minutes: 0
      Seconds: 0
      TotalDays: 6.60237268518519e-07
      TotalHours: 1.58456944444444e-05
      TotalMilliseconds: 57.0445
      TotalMinutes: 0.000950741666666667
      TotalSeconds: 0.0570445
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
    Throughput: 1753.01738116733
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 680884
      Days: 0
      Hours: 0
      Milliseconds: 68
      Minutes: 0
      Seconds: 0
      TotalDays: 7.88060185185185e-07
      TotalHours: 1.89134444444444e-05
      TotalMilliseconds: 68.0884
      TotalMinutes: 0.00113480666666667
      TotalSeconds: 0.0680884
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: $arr | Sort-Object
    RelativeSpeed: 1.19360148655874
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 1468.67895265567
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2095
---




|Technique     |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------|-----------|---------------|-------------|----------|
|ArrayList.Sort|100        |00:00:00.057044|1x           |1753.02/s |
|Sort-Object   |100        |00:00:00.068088|1.19x        |1468.68/s |
