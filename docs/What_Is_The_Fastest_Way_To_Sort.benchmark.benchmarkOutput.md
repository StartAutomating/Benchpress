---
layout: Benchmark

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 246457
      Days: 0
      Hours: 0
      Milliseconds: 24
      Minutes: 0
      Seconds: 0
      TotalDays: 2.85251157407407e-07
      TotalHours: 6.84602777777778e-06
      TotalMilliseconds: 24.6457
      TotalMinutes: 0.000410761666666667
      TotalSeconds: 0.0246457
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  $al = [collections.arraylist]::new($arr) 
                  $al.Sort()
                  $al
              
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Sort
    Throughput: 4057.50293154587
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 904444
      Days: 0
      Hours: 0
      Milliseconds: 90
      Minutes: 0
      Seconds: 0
      TotalDays: 1.04681018518519e-06
      TotalHours: 2.51234444444444e-05
      TotalMilliseconds: 90.4444
      TotalMinutes: 0.00150740666666667
      TotalSeconds: 0.0904444
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: $arr | Sort-Object
        FileName: What Is The Fastest Way To Sort
    RelativeSpeed: 3.66978418141907
    ClockSpeed: 2295
    FileName: What Is The Fastest Way To Sort
    Throughput: 1105.65164896887
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
|ArrayList.Sort|00:00:00.024645|1x           |4057.5/s  |
|Sort-Object   |00:00:00.090444|3.67x        |1105.65/s |
