---
layout: Benchmark

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 499244
      Days: 0
      Hours: 0
      Milliseconds: 49
      Minutes: 0
      Seconds: 0
      TotalDays: 5.77828703703704e-07
      TotalHours: 1.38678888888889e-05
      TotalMilliseconds: 49.9244
      TotalMinutes: 0.000832073333333333
      TotalSeconds: 0.0499244
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
    Throughput: 2003.02857921177
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 831845
      Days: 0
      Hours: 0
      Milliseconds: 83
      Minutes: 0
      Seconds: 0
      TotalDays: 9.62783564814815e-07
      TotalHours: 2.31068055555556e-05
      TotalMilliseconds: 83.1845
      TotalMinutes: 0.00138640833333333
      TotalSeconds: 0.0831845
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 1.66620930847441
    ClockSpeed: 2594
    FileName: What Is The Fastest Way To Sort
    Throughput: 1202.1470346038
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
|ArrayList.Sort|00:00:00.049924|1x           |2003.03/s |
|Sort-Object   |00:00:00.083184|1.67x        |1202.15/s |
