---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Arraylist
    Time: 
      Ticks: 167980
      Days: 0
      Hours: 0
      Milliseconds: 16
      Minutes: 0
      Seconds: 0
      TotalDays: 1.94421296296296e-07
      TotalHours: 4.66611111111111e-06
      TotalMilliseconds: 16.798
      TotalMinutes: 0.000279966666666667
      TotalSeconds: 0.016798
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 5953.08965353018
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Queue
    Time: 
      Ticks: 238304
      Days: 0
      Hours: 0
      Milliseconds: 23
      Minutes: 0
      Seconds: 0
      TotalDays: 2.75814814814815e-07
      TotalHours: 6.61955555555556e-06
      TotalMilliseconds: 23.8304
      TotalMinutes: 0.000397173333333333
      TotalSeconds: 0.0238304
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 1.41864507679486
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 4196.32066604002
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 371677
      Days: 0
      Hours: 0
      Milliseconds: 37
      Minutes: 0
      Seconds: 0
      TotalDays: 4.30181712962963e-07
      TotalHours: 1.03243611111111e-05
      TotalMilliseconds: 37.1677
      TotalMinutes: 0.000619461666666667
      TotalSeconds: 0.0371677
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.21262650315514
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 2690.50815627548
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 416442
      Days: 0
      Hours: 0
      Milliseconds: 41
      Minutes: 0
      Seconds: 0
      TotalDays: 4.81993055555556e-07
      TotalHours: 1.15678333333333e-05
      TotalMilliseconds: 41.6442
      TotalMinutes: 0.00069407
      TotalSeconds: 0.0416442
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
        FileName: Best Way To Accumulate Pipeline Results
    RelativeSpeed: 2.47911656149542
    ClockSpeed: 2594
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 2401.29477814438
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2594
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Arraylist |100        |00:00:00.016798|1x           |5953.09/s |
|Queue     |100        |00:00:00.023830|1.42x        |4196.32/s |
|Array     |100        |00:00:00.037167|2.21x        |2690.51/s |
|Tee-Object|100        |00:00:00.041644|2.48x        |2401.29/s |
