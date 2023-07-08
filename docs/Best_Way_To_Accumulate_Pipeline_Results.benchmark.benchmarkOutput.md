---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Queue
    Time: 
      Ticks: 180071
      Days: 0
      Hours: 0
      Milliseconds: 18
      Minutes: 0
      Seconds: 0
      TotalDays: 2.08415509259259e-07
      TotalHours: 5.00197222222222e-06
      TotalMilliseconds: 18.0071
      TotalMinutes: 0.000300118333333333
      TotalSeconds: 0.0180071
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 5553.36506155905
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Arraylist
    Time: 
      Ticks: 196094
      Days: 0
      Hours: 0
      Milliseconds: 19
      Minutes: 0
      Seconds: 0
      TotalDays: 2.26960648148148e-07
      TotalHours: 5.44705555555556e-06
      TotalMilliseconds: 19.6094
      TotalMinutes: 0.000326823333333333
      TotalSeconds: 0.0196094
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
    RelativeSpeed: 1.08898156838136
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 5099.59509214968
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 344762
      Days: 0
      Hours: 0
      Milliseconds: 34
      Minutes: 0
      Seconds: 0
      TotalDays: 3.99030092592593e-07
      TotalHours: 9.57672222222222e-06
      TotalMilliseconds: 34.4762
      TotalMinutes: 0.000574603333333333
      TotalSeconds: 0.0344762
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
    RelativeSpeed: 1.91458924535322
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 2900.55168493047
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 381114
      Days: 0
      Hours: 0
      Milliseconds: 38
      Minutes: 0
      Seconds: 0
      TotalDays: 4.41104166666667e-07
      TotalHours: 1.05865e-05
      TotalMilliseconds: 38.1114
      TotalMinutes: 0.00063519
      TotalSeconds: 0.0381114
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
    RelativeSpeed: 2.11646517207102
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 2623.8868160183
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2594
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Queue     |100        |00:00:00.018007|1x           |5553.37/s |
|Arraylist |100        |00:00:00.019609|1.09x        |5099.6/s  |
|Array     |100        |00:00:00.034476|1.91x        |2900.55/s |
|Tee-Object|100        |00:00:00.038111|2.12x        |2623.89/s |
