---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Arraylist
    Time: 
      Ticks: 168069
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.94524305555556e-07
      TotalHours: 4.66858333333333e-06
      TotalMilliseconds: 16.8069
      TotalMinutes: 0.000280115
      TotalSeconds: 0.0168069
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 5949.93722816224
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 171140
      Days: 0
      Hours: 0
      Milliseconds: 17
      Minutes: 0
      Seconds: 0
      TotalDays: 1.98078703703704e-07
      TotalHours: 4.75388888888889e-06
      TotalMilliseconds: 17.114
      TotalMinutes: 0.000285233333333333
      TotalSeconds: 0.017114
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
    RelativeSpeed: 1.01827225722769
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 5843.16933504733
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 476929
      Days: 0
      Hours: 0
      Milliseconds: 47
      Minutes: 0
      Seconds: 0
      TotalDays: 5.52001157407407e-07
      TotalHours: 1.32480277777778e-05
      TotalMilliseconds: 47.6929
      TotalMinutes: 0.000794881666666667
      TotalSeconds: 0.0476929
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
    RelativeSpeed: 2.83769761229019
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 2096.74815328906
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 489530
      Days: 0
      Hours: 0
      Milliseconds: 48
      Minutes: 0
      Seconds: 0
      TotalDays: 5.66585648148148e-07
      TotalHours: 1.35980555555556e-05
      TotalMilliseconds: 48.953
      TotalMinutes: 0.000815883333333333
      TotalSeconds: 0.048953
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
    RelativeSpeed: 2.91267277130226
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 2042.7757236533
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2095
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Arraylist |100        |00:00:00.016806|1x           |5949.94/s |
|Array     |100        |00:00:00.017114|1.02x        |5843.17/s |
|Tee-Object|100        |00:00:00.047692|2.84x        |2096.75/s |
|Queue     |100        |00:00:00.048953|2.91x        |2042.78/s |
