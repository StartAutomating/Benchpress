---
layout: Benchmark

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 240431
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.7827662037037e-07
      TotalHours: 6.67863888888889e-06
      TotalMilliseconds: 24.0431
      TotalMinutes: 0.000400718333333333
      TotalSeconds: 0.0240431
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  $al = [collections.arraylist]::new($arr) 
                  $al.Sort()
                  $al
              
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 1
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Sort
    Throughput: 4159.19744126173
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 860674
      Days: 0
      Hours: 0
      Milliseconds: 86
      Minutes: 0
      Seconds: 0
      TotalDays: 9.96150462962963e-07
      TotalHours: 2.39076111111111e-05
      TotalMilliseconds: 86.0674
      TotalMinutes: 0.00143445666666667
      TotalSeconds: 0.0860674
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 3.5797130985605
    ClockSpeed: 2394
    FileName: What Is The Fastest Way To Sort
    Throughput: 1161.88010791542
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2394
---
What Is The Fastest Way To Sort
-------------------------------
> @2394 Mhz


### 


|Technique     |Time           |RelativeSpeed|Throughput|
|--------------|---------------|-------------|----------|
|ArrayList.Sort|00:00:00.024043|1x           |4159.2/s  |
|Sort-Object   |00:00:00.086067|3.58x        |1161.88/s |
