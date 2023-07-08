---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Queue
    Time: 
      Ticks: 206735
      Days: 0
      Hours: 0
      Milliseconds: 20
      Minutes: 0
      Seconds: 0
      TotalDays: 2.3927662037037e-07
      TotalHours: 5.74263888888889e-06
      TotalMilliseconds: 20.6735
      TotalMinutes: 0.000344558333333333
      TotalSeconds: 0.0206735
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 4837.11031030063
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Arraylist
    Time: 
      Ticks: 221988
      Days: 0
      Hours: 0
      Milliseconds: 22
      Minutes: 0
      Seconds: 0
      TotalDays: 2.56930555555556e-07
      TotalHours: 6.16633333333333e-06
      TotalMilliseconds: 22.1988
      TotalMinutes: 0.00036998
      TotalSeconds: 0.0221988
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.07378044356302
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 4504.74800439663
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 375256
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.34324074074074e-07
      TotalHours: 1.04237777777778e-05
      TotalMilliseconds: 37.5256
      TotalMinutes: 0.000625426666666667
      TotalSeconds: 0.0375256
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.81515466660217
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 2664.84746413115
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 430251
      Days: 0
      Hours: 0
      Milliseconds: 43
      Minutes: 0
      Seconds: 0
      TotalDays: 4.97975694444444e-07
      TotalHours: 1.19514166666667e-05
      TotalMilliseconds: 43.0251
      TotalMinutes: 0.000717085
      TotalSeconds: 0.0430251
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.08117154811715
    ClockSpeed: 2095
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 2324.22469674678
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2095
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Queue     |100        |00:00:00.020673|1x           |4837.11/s |
|Arraylist |100        |00:00:00.022198|1.07x        |4504.75/s |
|Array     |100        |00:00:00.037525|1.82x        |2664.85/s |
|Tee-Object|100        |00:00:00.043025|2.08x        |2324.22/s |
