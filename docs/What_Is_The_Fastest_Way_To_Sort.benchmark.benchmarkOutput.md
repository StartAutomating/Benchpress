---
layout: Benchmark

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 245337
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.83954861111111e-07
      TotalHours: 6.81491666666667e-06
      TotalMilliseconds: 24.5337
      TotalMinutes: 0.000408895
      TotalSeconds: 0.0245337
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: |
           
                  $al = [collections.arraylist]::new($arr) 
                  $al.Sort()
                  $al
              
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Sort
    Throughput: 4076.02603765433
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 742633
      Days: 0
      Hours: 0
      Milliseconds: 74
      Minutes: 0
      Seconds: 0
      TotalDays: 8.59528935185185e-07
      TotalHours: 2.06286944444444e-05
      TotalMilliseconds: 74.2633
      TotalMinutes: 0.00123772166666667
      TotalSeconds: 0.0742633
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: $arr | Sort-Object
    RelativeSpeed: 3.02699144442135
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Sort
    Throughput: 1346.56014478215
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
|ArrayList.Sort|00:00:00.024533|1x           |4076.03/s |
|Sort-Object   |00:00:00.074263|3.03x        |1346.56/s |
