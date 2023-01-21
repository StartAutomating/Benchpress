---
layout: Benchmark

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 554626
      Days: 0
      Hours: 0
      Milliseconds: 55
      Minutes: 0
      Seconds: 0
      TotalDays: 6.41928240740741e-07
      TotalHours: 1.54062777777778e-05
      TotalMilliseconds: 55.4626
      TotalMinutes: 0.000924376666666667
      TotalSeconds: 0.0554626
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
    Throughput: 1803.01680772268
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 1110133
      Days: 0
      Hours: 0
      Milliseconds: 111
      Minutes: 0
      Seconds: 0
      TotalDays: 1.28487615740741e-06
      TotalHours: 3.08370277777778e-05
      TotalMilliseconds: 111.0133
      TotalMinutes: 0.00185022166666667
      TotalSeconds: 0.1110133
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 2.0015884578076
    ClockSpeed: 2095
    FileName: What Is The Fastest Way To Sort
    Throughput: 900.792968049774
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2095
---
What Is The Fastest Way To Sort
-------------------------------
> @2095 Mhz


### 


|Technique     |Time           |RelativeSpeed|Throughput|
|--------------|---------------|-------------|----------|
|ArrayList.Sort|00:00:00.055462|1x           |1803.02/s |
|Sort-Object   |00:00:00.111013|2x           |900.79/s  |
