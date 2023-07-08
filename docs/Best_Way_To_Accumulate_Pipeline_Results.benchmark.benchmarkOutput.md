---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Arraylist
    Time: 
      Ticks: 147192
      Days: 0
      Hours: 0
      Milliseconds: 14
      Minutes: 0
      Seconds: 0
      TotalDays: 1.70361111111111e-07
      TotalHours: 4.08866666666667e-06
      TotalMilliseconds: 14.7192
      TotalMinutes: 0.00024532
      TotalSeconds: 0.0147192
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 6793.84749171151
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 152307
      Days: 0
      Hours: 0
      Milliseconds: 15
      Minutes: 0
      Seconds: 0
      TotalDays: 1.7628125e-07
      TotalHours: 4.23075e-06
      TotalMilliseconds: 15.2307
      TotalMinutes: 0.000253845
      TotalSeconds: 0.0152307
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.0347505299201
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 6565.6864096857
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 384604
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 0
      TotalDays: 4.45143518518519e-07
      TotalHours: 1.06834444444444e-05
      TotalMilliseconds: 38.4604
      TotalMinutes: 0.000641006666666667
      TotalSeconds: 0.0384604
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.61294092070221
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2600.07696227808
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 457243
      Days: 0
      Hours: 0
      Milliseconds: 45
      Minutes: 0
      Seconds: 0
      TotalDays: 5.29216435185185e-07
      TotalHours: 1.27011944444444e-05
      TotalMilliseconds: 45.7243
      TotalMinutes: 0.000762071666666667
      TotalSeconds: 0.0457243
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 3.10643920865264
    ClockSpeed: 2793
    FileName: Best Way To Accumulate Pipeline Results
    Throughput: 2187.02090573284
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2793
---
Best Way To Accumulate Pipeline Results
---------------------------------------
> @2793 Mhz


### 


|Technique |Time           |RelativeSpeed|Throughput|
|----------|---------------|-------------|----------|
|Arraylist |00:00:00.014719|1x           |6793.85/s |
|Array     |00:00:00.015230|1.03x        |6565.69/s |
|Tee-Object|00:00:00.038460|2.61x        |2600.08/s |
|Queue     |00:00:00.045724|3.11x        |2187.02/s |
