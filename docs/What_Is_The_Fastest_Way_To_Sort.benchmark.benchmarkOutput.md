---
layout: Benchmark

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 464648
      Days: 0
      Hours: 0
      Milliseconds: 46
      Minutes: 0
      Seconds: 0
      TotalDays: 5.37787037037037e-07
      TotalHours: 1.29068888888889e-05
      TotalMilliseconds: 46.4648
      TotalMinutes: 0.000774413333333333
      TotalSeconds: 0.0464648
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
    Throughput: 2152.16680153579
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 913183
      Days: 0
      Hours: 0
      Milliseconds: 91
      Minutes: 0
      Seconds: 0
      TotalDays: 1.05692476851852e-06
      TotalHours: 2.53661944444444e-05
      TotalMilliseconds: 91.3183
      TotalMinutes: 0.00152197166666667
      TotalSeconds: 0.0913183
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 1.96532213632685
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Sort
    Throughput: 1095.07075799703
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2594
---
What Is The Fastest Way To Sort
-------------------------------
> @2594 Mhz


### 


|Technique     |Time           |RelativeSpeed|Throughput|
|--------------|---------------|-------------|----------|
|ArrayList.Sort|00:00:00.046464|1x           |2152.17/s |
|Sort-Object   |00:00:00.091318|1.97x        |1095.07/s |
