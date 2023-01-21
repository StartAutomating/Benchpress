---
layout: Benchmark

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 183104
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.11925925925926e-07
      TotalHours: 5.08622222222222e-06
      TotalMilliseconds: 18.3104
      TotalMinutes: 0.000305173333333333
      TotalSeconds: 0.0183104
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  $al = [collections.arraylist]::new($arr) 
                  $al.Sort()
                  $al
              
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Sort
    Throughput: 5461.37714085984
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 545600
      Days: 0
      Hours: 0
      Milliseconds: 54
      Minutes: 0
      Seconds: 0
      TotalDays: 6.31481481481481e-07
      TotalHours: 1.51555555555556e-05
      TotalMilliseconds: 54.56
      TotalMinutes: 0.000909333333333333
      TotalSeconds: 0.05456
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 2.97972736805313
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Sort
    Throughput: 1832.84457478006
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
FileName: What Is The Fastest Way To Sort
ClockSpeed: 2793
---
What Is The Fastest Way To Sort
-------------------------------
> @2793 Mhz


### 


|Technique     |Time           |RelativeSpeed|Throughput|
|--------------|---------------|-------------|----------|
|ArrayList.Sort|00:00:00.018310|1x           |5461.38/s |
|Sort-Object   |00:00:00.054560|2.98x        |1832.84/s |
