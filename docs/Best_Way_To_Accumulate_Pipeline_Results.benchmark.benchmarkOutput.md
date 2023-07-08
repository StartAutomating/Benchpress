---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Queue
    Time: 
      Ticks: 166980
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.93263888888889e-07
      TotalHours: 4.63833333333333e-06
      TotalMilliseconds: 16.698
      TotalMinutes: 0.0002783
      TotalSeconds: 0.016698
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 5988.74116660678
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 190607
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.20609953703704e-07
      TotalHours: 5.29463888888889e-06
      TotalMilliseconds: 19.0607
      TotalMinutes: 0.000317678333333333
      TotalSeconds: 0.0190607
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.14149598754342
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 5246.39703683495
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 364588
      Days: 0
      Hours: 0
      Milliseconds: 36
      Minutes: 0
      Seconds: 0
      TotalDays: 4.21976851851852e-07
      TotalHours: 1.01274444444444e-05
      TotalMilliseconds: 36.4588
      TotalMinutes: 0.000607646666666667
      TotalSeconds: 0.0364588
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.18342316445083
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2742.8220347351
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Arraylist
    Time: 
      Ticks: 450590
      Days: 0
      Hours: 0
      Milliseconds: 45
      Minutes: 0
      Seconds: 0
      TotalDays: 5.21516203703704e-07
      TotalHours: 1.25163888888889e-05
      TotalMilliseconds: 45.059
      TotalMinutes: 0.000750983333333333
      TotalSeconds: 0.045059
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.69846688226135
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2219.31245700082
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2793
---


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Queue     |00:00:00.016698|1x           |5988.74/s |
|Array     |00:00:00.019060|1.14x        |5246.4/s  |
|Tee-Object|00:00:00.036458|2.18x        |2742.82/s |
|Arraylist |00:00:00.045059|2.7x         |2219.31/s |
