---
layout: Benchmark
title: What Is The Fastest Way To Sort

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 237209
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.74547453703704e-07
      TotalHours: 6.58913888888889e-06
      TotalMilliseconds: 23.7209
      TotalMinutes: 0.000395348333333333
      TotalSeconds: 0.0237209
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
    Throughput: 4215.69164745014
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 1067182
      Days: 0
      Hours: 0
      Milliseconds: 106
      Minutes: 0
      Seconds: 0
      TotalDays: 1.23516435185185e-06
      TotalHours: 2.96439444444444e-05
      TotalMilliseconds: 106.7182
      TotalMinutes: 0.00177863666666667
      TotalSeconds: 0.1067182
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 4.49891024370913
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Sort
    RepeatCount: 100
    Throughput: 937.047289028488
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2095
---




|Technique     |RepeatCount|Time           |RelativeSpeed|Throughput|
|--------------|-----------|---------------|-------------|----------|
|ArrayList.Sort|100        |00:00:00.023720|1x           |4215.69/s |
|Sort-Object   |100        |00:00:00.106718|4.5x         |937.05/s  |
