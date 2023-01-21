---
layout: Benchmark

Data: 
  - Technique: ArrayList.Sort
    Time: 
      Ticks: 178316
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 2.06384259259259e-07
      TotalHours: 4.95322222222222e-06
      TotalMilliseconds: 17.8316
      TotalMinutes: 0.000297193333333333
      TotalSeconds: 0.0178316
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: |
           
                  $al = [collections.arraylist]::new($arr) 
                  $al.Sort()
                  $al
              
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Sort
    Throughput: 5608.02171426008
    BenchmarkInput: 
      FileName: What Is The Fastest Way To Sort
  - Technique: Sort-Object
    Time: 
      Ticks: 848829
      Days: 0
      Hours: 0
      Milliseconds: 84
      Minutes: 0
      Seconds: 0
      TotalDays: 9.82440972222222e-07
      TotalHours: 2.35785833333333e-05
      TotalMilliseconds: 84.8829
      TotalMinutes: 0.001414715
      TotalSeconds: 0.0848829
      FileName: What Is The Fastest Way To Sort
      GroupName: 
      BenchmarkInput: 
        FileName: What Is The Fastest Way To Sort
        ScriptBlock: $arr | Sort-Object
    RelativeSpeed: 4.76025146369367
    ClockSpeed: 2793
    FileName: What Is The Fastest Way To Sort
    Throughput: 1178.09358539824
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
|ArrayList.Sort|00:00:00.017831|1x           |5608.02/s |
|Sort-Object   |00:00:00.084882|4.76x        |1178.09/s |
