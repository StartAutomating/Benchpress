---
layout: Benchmark
title: Best Way To Accumulate Pipeline Results

Data: 
  - Technique: Queue
    Time: 
      Ticks: 266923
      Days: 0
      Hours: 0
      Milliseconds: 26
      Minutes: 0
      Seconds: 0
      TotalDays: 3.08938657407407e-07
      TotalHours: 7.41452777777778e-06
      TotalMilliseconds: 26.6923
      TotalMinutes: 0.000444871666666667
      TotalSeconds: 0.0266923
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $tq = [Collections.Queue]::new()
                  & { 1..3 } | & { process { $tq.Enqueue($_); $_ } }
              
    RelativeSpeed: 1
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 3746.39877417832
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Array
    Time: 
      Ticks: 278813
      Days: 0
      Hours: 0
      Milliseconds: 27
      Minutes: 0
      Seconds: 0
      TotalDays: 3.22700231481481e-07
      TotalHours: 7.74480555555556e-06
      TotalMilliseconds: 27.8813
      TotalMinutes: 0.000464688333333333
      TotalSeconds: 0.0278813
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $outArray = @()
                  & { 1..3 } | & { process { $outArray += $_; $_ } }
              
    RelativeSpeed: 1.04454468142498
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 3586.63333488754
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Tee-Object
    Time: 
      Ticks: 530534
      Days: 0
      Hours: 0
      Milliseconds: 53
      Minutes: 0
      Seconds: 0
      TotalDays: 6.14043981481482e-07
      TotalHours: 1.47370555555556e-05
      TotalMilliseconds: 53.0534
      TotalMinutes: 0.000884223333333333
      TotalSeconds: 0.0530534
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
           
                  & { 1..3 } | Tee-Object -Variable n 
              
    RelativeSpeed: 1.98759192725992
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 1884.89333388624
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
  - Technique: Arraylist
    Time: 
      Ticks: 639070
      Days: 0
      Hours: 0
      Milliseconds: 63
      Minutes: 0
      Seconds: 0
      TotalDays: 7.39664351851852e-07
      TotalHours: 1.77519444444444e-05
      TotalMilliseconds: 63.907
      TotalMinutes: 0.00106511666666667
      TotalSeconds: 0.063907
      FileName: Best Way To Accumulate Pipeline Results
      GroupName: 
      BenchmarkInput: 
        FileName: Best Way To Accumulate Pipeline Results
        ScriptBlock: |
          
                  $arrlist = [Collections.ArrayList]::new()
                  & { 1..3 } | & { process { $null = $arrlist.Add($_); $_ } }
              
    RelativeSpeed: 2.39421106461414
    ClockSpeed: 2295
    FileName: Best Way To Accumulate Pipeline Results
    RepeatCount: 100
    Throughput: 1564.77381194548
    BenchmarkInput: 
      FileName: Best Way To Accumulate Pipeline Results
FileName: Best Way To Accumulate Pipeline Results
ClockSpeed: 2295
---




|Technique |RepeatCount|Time           |RelativeSpeed|Throughput|
|----------|-----------|---------------|-------------|----------|
|Queue     |100        |00:00:00.026692|1x           |3746.4/s  |
|Array     |100        |00:00:00.027881|1.04x        |3586.63/s |
|Tee-Object|100        |00:00:00.053053|1.99x        |1884.89/s |
|Arraylist |100        |00:00:00.063907|2.39x        |1564.77/s |
