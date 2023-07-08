---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Array
    Time: 
      Ticks: 311511
      Days: 0
      Hours: 0
      Milliseconds: 31
      Minutes: 0
      Seconds: 0
      TotalDays: 3.60545138888889e-07
      TotalHours: 8.65308333333333e-06
      TotalMilliseconds: 31.1511
      TotalMinutes: 0.000519185
      TotalSeconds: 0.0311511
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2397
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 3210.15951282619
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 314679
      Days: 0
      Hours: 0
      Milliseconds: 31
      Minutes: 0
      Seconds: 0
      TotalDays: 3.64211805555556e-07
      TotalHours: 8.74108333333333e-06
      TotalMilliseconds: 31.4679
      TotalMinutes: 0.000524465
      TotalSeconds: 0.0314679
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.01016978533663
    ClockSpeed: 2397
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 3177.84154646481
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Arraylist
    Time: 
      Ticks: 343335
      Days: 0
      Hours: 0
      Milliseconds: 34
      Minutes: 0
      Seconds: 0
      TotalDays: 3.97378472222222e-07
      TotalHours: 9.53708333333333e-06
      TotalMilliseconds: 34.3335
      TotalMinutes: 0.000572225
      TotalSeconds: 0.0343335
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.10216011633618
    ClockSpeed: 2397
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2912.6072203533
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 1062135
      Days: 0
      Hours: 0
      Milliseconds: 106
      Minutes: 0
      Seconds: 0
      TotalDays: 1.22932291666667e-06
      TotalHours: 2.950375e-05
      TotalMilliseconds: 106.2135
      TotalMinutes: 0.001770225
      TotalSeconds: 0.1062135
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 3.40962277415565
    ClockSpeed: 2397
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 941.49990349626
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2397
---


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Array     |00:00:00.031151|1x           |3210.16/s |
|Queue     |00:00:00.031467|1.01x        |3177.84/s |
|Arraylist |00:00:00.034333|1.1x         |2912.61/s |
|Tee-Object|00:00:00.106213|3.41x        |941.5/s   |
